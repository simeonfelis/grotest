// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2020 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

/*******************************************************************************
  Custom ST7789SDisplay Top-Level Driver Source File

  File Name:
    drv_gfx_custom_external.c

  Summary:
    Top level driver for ST7789S.

  Description:
    Build-time generated implementation for the ST7789SDriver.

    Created with MPLAB Harmony Version 3.0
*******************************************************************************/




#include "definitions.h"

#include "gfx/interface/drv_gfx_disp_intf.h"
#include "drv_gfx_external_controller.h"

#include "system/time/sys_time.h"

// Default max width/height of ST7789Sframe
#define DISPLAY_DEFAULT_WIDTH   480
#define DISPLAY_DEFAULT_HEIGHT  800

#define DISPLAY_WIDTH   240
#define DISPLAY_HEIGHT  320

#define PIXEL_BUFFER_COLOR_MODE GFX_COLOR_MODE_RGB_565
#define SCREEN_WIDTH DISPLAY_WIDTH
#define SCREEN_HEIGHT DISPLAY_HEIGHT

#ifdef GFX_DISP_INTF_PIN_RESET_Clear
#define DRV_ST7789S_Reset_Assert()      GFX_DISP_INTF_PIN_RESET_Clear()
#define DRV_ST7789S_Reset_Deassert()    GFX_DISP_INTF_PIN_RESET_Set()
#else
#error "ERROR: GFX_DISP_INTF_PIN_RESET not defined. Please define in Pin Manager."
#define DRV_ST7789S_Reset_Assert()
#define DRV_ST7789S_Reset_Deassert()
#endif

#define DRV_ST7789S_NCSAssert(intf)   GFX_Disp_Intf_PinControl(intf, \
                                    GFX_DISP_INTF_PIN_CS, \
                                    GFX_DISP_INTF_PIN_CLEAR)

#define DRV_ST7789S_NCSDeassert(intf) GFX_Disp_Intf_PinControl(intf, \
                                    GFX_DISP_INTF_PIN_CS, \
                                    GFX_DISP_INTF_PIN_SET)
									

									
#define PIXEL_BUFFER_BYTES_PER_PIXEL 2
static uint8_t pixelBuffer[SCREEN_WIDTH * PIXEL_BUFFER_BYTES_PER_PIXEL];

typedef enum
{
    INIT = 0,
    IDLE,
    BLIT_COLUMN_CMD,
    BLIT_COLUMN_DATA,
    BLIT_PAGE_CMD,
    BLIT_PAGE_DATA,
    BLIT_WRITE_CMD,
    BLIT_WRITE_DATA,
    BLIT_DONE,
    ERROR,
} DRV_STATE;

typedef struct ST7789S_DRV 
{   
    /* Driver state */
    DRV_STATE state;
        
    /* Port-specific private data */
    void *port_priv;

    struct
    {
        int32_t x;
        int32_t y;
        gfxPixelBuffer* buf;
    } blitParms;
} ST7789S_DRV;

typedef struct 
{
    /* Command */
    uint8_t cmd;
    
    /* Number of command parameters */
    uint8_t parmCount;
    
    /* Command parameters, max of 16 */
    uint8_t parms[16];
    
    /* delay */
    unsigned int delayms;
    
} ST7789S_CMD_PARAM;

ST7789S_DRV drv;

static uint32_t swapCount = 0;

const ST7789S_CMD_PARAM initCmdParm[] =
{
    {0x11, 0, {0x0}, 120},
    {0x13, 0, {0x0}, 0},
    {0x36, 1, {0x0,}, 0},
    {0xb6, 2, {0xa,0x82,}, 0},
    {0xb0, 2, {0x0,0xe0,}, 0},
    {0x3a, 1, {0x55,}, 10},
    {0xb2, 5, {0xc,0xc,0x0,0x33,0x33,}, 0},
    {0xb7, 1, {0x35,}, 0},
    {0xbb, 1, {0x28,}, 0},
    {0xc0, 1, {0xc,}, 0},
    {0xc2, 2, {0x1,0xff,}, 0},
    {0xc3, 1, {0x10,}, 0},
    {0xc4, 1, {0x20,}, 0},
    {0xc6, 1, {0xf,}, 0},
    {0xd0, 2, {0xa4,0xa1,}, 0},
    {0xe0, 14, {0xd,0x0,0x2,0x7,0xa,0x28,0x32,0x44,0x42,0x6,0xe,0x12,0x14,0x17,}, 0},
    {0xe1, 14, {0xd0,0x0,0x2,0x7,0xa,0x28,0x31,0x54,0x47,0xe,0x1c,0x17,0x1b,0x1e,}, 0},
    {0x21, 0, {0x0}, 0},
    {0x2a, 4, {0x0,0x0,0x0,0xe5,}, 0},
    {0x2b, 4, {0x0,0x0,0x1,0x3f,}, 0},
    {0x29, 0, {0x0}, 120},
    {0x36, 1, {0x0,}, 0},
};

/* ************************************************************************** */

/**
  Function:
    static void DRV_ST7789S_DelayMS(int ms)

  Summary:
    Delay helper function.

  Description:
    This is a helper function for delay using the system tick timer.

  Parameters:
    ms      - Delay in milliseconds

  Returns:
    None.

*/

static inline void DRV_ST7789S_DelayMS(int ms)
{
    SYS_TIME_HANDLE timer = SYS_TIME_HANDLE_INVALID;

    if (SYS_TIME_DelayMS(ms, &timer) != SYS_TIME_SUCCESS)
        return;
    while (SYS_TIME_DelayIsComplete(timer) == false);
}

/**
  Function:
    static void DRV_ST7789S_Reset(void)

  Summary:
    Toggles the hardware reset to the ST7789S.

  Description:
    This function toggles the GPIO pin for asserting reset to the ST7789S.

  Parameters:
    None

  Returns:
    None

*/
static void DRV_ST7789S_Reset(void)
{
    DRV_ST7789S_Reset_Deassert();
    DRV_ST7789S_DelayMS(10);
    DRV_ST7789S_Reset_Assert();
    DRV_ST7789S_DelayMS(20);
    DRV_ST7789S_Reset_Deassert();
    DRV_ST7789S_DelayMS(120);
}

int DRV_ST7789S_Initialize(void)
{
    drv.state = INIT;

    return 0;
}

static int DRV_ST7789S_Configure(ST7789S_DRV *drvPtr,
                                           const ST7789S_CMD_PARAM *initVals,
                                           int numVals)
{
    GFX_Disp_Intf intf = (GFX_Disp_Intf) drvPtr->port_priv;
    unsigned int i, returnValue;

    DRV_ST7789S_NCSAssert(intf);
    
    for (i = 0; i < numVals; i++, initVals++)
    {
        returnValue = GFX_Disp_Intf_WriteCommand(intf, initVals->cmd);
        if (0 != returnValue)
            break;
        
        while (GFX_Disp_Intf_Ready(intf) == false);
        
        if (initVals->parms != NULL &&
            initVals->parmCount > 0)
        {

            returnValue = GFX_Disp_Intf_WriteData(intf, 
                                                 (uint8_t *) initVals->parms,
                                                 initVals->parmCount);
            if (0 != returnValue)
                break;
        
            while (GFX_Disp_Intf_Ready(intf) == false);
        }
        
        if (initVals->delayms > 0)
        {
            DRV_ST7789S_DelayMS(initVals->delayms);
        }
    }

    DRV_ST7789S_NCSDeassert(intf);

    return 0;
}

void DRV_ST7789S_Transfer(GFX_Disp_Intf intf)
{
    static int row;
    uint16_t clr;
    uint16_t* ptr;
    uint8_t parm[4];
    
    switch (drv.state)
    {
        case BLIT_COLUMN_CMD:
        {
            
            DRV_ST7789S_NCSAssert(intf);
                    
            drv.state = BLIT_COLUMN_DATA;
            
            GFX_Disp_Intf_WriteCommand(intf, 0x2a);
                   
            break;
        }
        case BLIT_COLUMN_DATA:
        {
            uint32_t x = drv.blitParms.x;


            drv.state = BLIT_PAGE_CMD;

            //Write X/Column Address
            parm[0] = x>>8;
            parm[1] = x;
            parm[2] = (x + drv.blitParms.buf->size.width - 1)>>8;
            parm[3] = (x + drv.blitParms.buf->size.width - 1);
            GFX_Disp_Intf_WriteData(intf, parm, 4);

            break;
        }
        case BLIT_PAGE_CMD:
        {
                        
            drv.state = BLIT_PAGE_DATA;
            
            GFX_Disp_Intf_WriteCommand(intf, 0x2b);
                   
            break;
        }
        case BLIT_PAGE_DATA:
        {
            uint32_t y = drv.blitParms.y;


            drv.state = BLIT_WRITE_CMD;

            //Write Y/Page Address
            parm[0] = y>>8;
            parm[1] = y;
            parm[2] = (y + drv.blitParms.buf->size.height - 1)>>8;
            parm[3] = (y + drv.blitParms.buf->size.height - 1);
            GFX_Disp_Intf_WriteData(intf, parm, 4);

            break;
        }
        case BLIT_WRITE_CMD:
        {
            
            drv.state = BLIT_WRITE_DATA;
            
            //Start Memory Write
            GFX_Disp_Intf_WriteCommand(intf, 0x2c);

        row = 0;

            break;
        }
        case BLIT_WRITE_DATA:
        {

            if (row < drv.blitParms.buf->size.height)
            {
                int col, dataIdx;
                ptr = gfxPixelBufferOffsetGet_Unsafe(drv.blitParms.buf, 0, row);
                for(col = 0, dataIdx = 0; col < drv.blitParms.buf->size.width; col++)
                {
                    clr = ptr[col];
                    pixelBuffer[dataIdx++] = (uint8_t) (clr >> 8);
                    pixelBuffer[dataIdx++] = (uint8_t) (uint8_t) (clr & 0xff);
                }
                GFX_Disp_Intf_WriteData(intf,
                                        pixelBuffer,
                                        PIXEL_BUFFER_BYTES_PER_PIXEL *
                                        drv.blitParms.buf->size.width);
                row++;
            }
           
            if (row >= drv.blitParms.buf->size.height)
            {
                drv.state = BLIT_DONE;
            }
            
            break;
        }
        case BLIT_DONE:
        {
            DRV_ST7789S_NCSDeassert(intf); 
            gfxPixelBuffer_SetLocked(drv.blitParms.buf, GFX_FALSE);
            drv.state = IDLE;
            break;
        }
        case IDLE:
        case ERROR:
        default:
        {
            break;
        }        
    }
}

void DRV_ST7789S_Intf_Callback(GFX_Disp_Intf intf, GFX_DISP_INTF_STATUS status, void * param)
{
    if (status == GFX_DISP_INTF_TX_DONE)
    {
        DRV_ST7789S_Transfer((GFX_Disp_Intf) drv.port_priv);
    }
}

/**
  Function:
    static void DRV_ST7789S_Update(void)

  Summary:
    Driver-specific implementation of GFX HAL update function.

  Description:
    On GFX update, this function flushes any pending pixels to the ST7789S.

  Parameters:
    None.

  Returns:
    * GFX_SUCCESS       - Operation successful
    * GFX_FAILURE       - Operation failed

*/
void DRV_ST7789S_Update(void)
{
    uint32_t openVal;
	
    if(drv.state == INIT)
    {
		openVal = GFX_Disp_Intf_Open();
        
        drv.port_priv = (void *)openVal;
        
        if (drv.port_priv == 0)
        {
            drv.state = ERROR;
            return;
        }

        DRV_ST7789S_Reset();

        DRV_ST7789S_Configure(&drv,
                              initCmdParm,
                              sizeof(initCmdParm)/sizeof(ST7789S_CMD_PARAM));

        GFX_Disp_Intf_Set_Callback((GFX_Disp_Intf) drv.port_priv,
                                   DRV_ST7789S_Intf_Callback,
                                   NULL);

        drv.state = IDLE;
    }
}


gfxResult DRV_ST7789S_BlitBuffer(int32_t x,
                                int32_t y,
                                gfxPixelBuffer* buf)
{


    if(drv.state != IDLE)
        return GFX_FAILURE;

    drv.blitParms.x = x;
    drv.blitParms.y = y;
    drv.blitParms.buf = buf;
    drv.state = BLIT_COLUMN_CMD;
    
    gfxPixelBuffer_SetLocked(buf, GFX_TRUE);

    DRV_ST7789S_Transfer((GFX_Disp_Intf) drv.port_priv);

    return GFX_SUCCESS;
}

gfxDriverIOCTLResponse DRV_ST7789S_IOCTL(gfxDriverIOCTLRequest request,
                                     void* arg)
{
    gfxIOCTLArg_Value* val;
    gfxIOCTLArg_DisplaySize* disp;
    gfxIOCTLArg_LayerRect* rect;
    
    switch(request)
    {
        case GFX_IOCTL_FRAME_END:
        {
            return GFX_IOCTL_OK;
        }	
        case GFX_IOCTL_GET_COLOR_MODE:
        {
            val = (gfxIOCTLArg_Value*)arg;
            
            val->value.v_colormode = PIXEL_BUFFER_COLOR_MODE;
            
            return GFX_IOCTL_OK;
        }
        case GFX_IOCTL_GET_BUFFER_COUNT:
        {
            val = (gfxIOCTLArg_Value*)arg;
            
            val->value.v_uint = 1;
            
            return GFX_IOCTL_OK;
        }
        case GFX_IOCTL_GET_DISPLAY_SIZE:
        {
            disp = (gfxIOCTLArg_DisplaySize*)arg;            
            
            disp->width = DISPLAY_WIDTH;
            disp->height = DISPLAY_HEIGHT;
            
            return GFX_IOCTL_OK;
        }
        case GFX_IOCTL_GET_LAYER_COUNT:
        {
            val = (gfxIOCTLArg_Value*)arg;
            
            val->value.v_uint = 1;
            
            return GFX_IOCTL_OK;
        }
        case GFX_IOCTL_GET_ACTIVE_LAYER:
        {
            val = (gfxIOCTLArg_Value*)arg;
            
            val->value.v_uint = 0;
            
            return GFX_IOCTL_OK;
        }
        case GFX_IOCTL_GET_LAYER_RECT:
        {
            rect = (gfxIOCTLArg_LayerRect*)arg;
            
            rect->base.id = 0;
            rect->x = 0;
            rect->y = 0;
            rect->width = DISPLAY_WIDTH;
            rect->height = DISPLAY_HEIGHT;
            
            return GFX_IOCTL_OK;
        }
        case GFX_IOCTL_GET_VSYNC_COUNT:
        {
            val = (gfxIOCTLArg_Value*)arg;
            
            val->value.v_uint = swapCount;
            
            return GFX_IOCTL_OK;
        }
        case GFX_IOCTL_GET_STATUS:
        {
            val = (gfxIOCTLArg_Value*)arg;
            
            if (drv.state == IDLE)
                val->value.v_uint = 0;
            else
                val->value.v_uint = 1;
            
            return GFX_IOCTL_OK;
        }		
        default:
        {
		    break;
		}
    }
    
    return GFX_IOCTL_UNSUPPORTED;
}

