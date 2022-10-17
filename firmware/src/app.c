/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app.h"
#include "config/v1/system/time/sys_time.h"
#include "definitions.h"
#include "peripheral/tc/plib_tc2.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

size_t APP_BACKLIGHT_DUTY_MAX = 0xFFFF;

//#define ANIMATE_PAGE_INDICATOR
#define ANIMATE_WHITE_BITMAP
#ifdef ANIMATE_PAGE_INDICATOR
#ifdef ANIMATE_WHITE_BITMAP
#error "only one animation can be defined"
#endif
#endif
#ifdef ANIMATE_WHITE_BITMAP
#ifdef ANIMATE_PAGE_INDICATOR
#error "only one animation can be defined"
#endif
#endif

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


static size_t percent_to_duty(size_t percent)
{
    return APP_BACKLIGHT_DUTY_MAX * percent / 100l;
}


static void tmr_cb(uintptr_t context)
{
    if (appData.state == APP_STATE_SERVICE_TASKS)
    {
#ifdef ANIMATE_PAGE_INDICATOR
        switch (appData.screen)
        {
            case screenID_gbw:
                appData.screen = screenID_manual;
                break;
            case screenID_manual:
                appData.screen = screenID_stats;
                break;
            case screenID_stats:
                appData.screen = screenID_calib;
                break;
            case screenID_calib:
                appData.screen = screenID_gbw;
                break;
        }
#endif
    }
}

static void tmr_delay(uintptr_t context)
{
#ifdef ANIMATE_PAGE_INDICATOR
    switch(appData.screen)
    {
        case screenID_stats:
        case screenID_calib:
        case screenID_manual:
        {
            SYS_TIME_TimerStop(appData.tmr_hdl);
            appData.state = APP_STATE_ANIMATE_RIGHT_START;
            break;
        }
    }
#endif
#ifdef ANIMATE_WHITE_BITMAP
    appData.state = APP_STATE_ANIMATE_RIGHT_START;
#endif
    SYS_TIME_TimerStop(appData.tmr_delay);
}

static void anim_tmr_cb(uintptr_t context)
{
    appData.anim_tmr_expired = true;
}
// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;
    appData.anim_x = 0;
    appData.anim_x_written = 0;
    appData.anim_tmr_expired = false;
    appData.tmr_expired = false;
    
#ifdef ANIMATE_PAGE_INDICATOR
    appData.screen = screenID_gbw;
    appData.screen = screenID_gbw;
#endif


    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
    uint32_t duty;

    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            bool appInitialized = true;


            if (appInitialized)
            {
                duty = percent_to_duty(50);
                TC2_Compare16bitMatch0Set(duty);
                TC2_CompareStart();

                appData.tmr_hdl = SYS_TIME_CallbackRegisterMS(tmr_cb, 
                            (uintptr_t) &appData,
                            4000,
                            SYS_TIME_PERIODIC);

                appData.tmr_delay = SYS_TIME_CallbackRegisterMS(tmr_delay,
                        (uintptr_t) &appData,
                        3000,
                        SYS_TIME_PERIODIC);
#ifdef ANIMATE_PAGE_INDICATOR
                SYS_TIME_TimerStop(appData.tmr_delay);
#endif
                appData.anim_tmr_hdl = SYS_TIME_CallbackRegisterMS(anim_tmr_cb, 
                            (uintptr_t) &appData,
                            40,
                            SYS_TIME_PERIODIC);
                SYS_TIME_TimerStop(appData.anim_tmr_hdl);

                appData.state = APP_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_STATE_SERVICE_TASKS:
        {
#ifdef ANIMATE_PAGE_INDICATOR
            if (appData.screen_written != appData.screen)
            {
                legato_showScreen(appData.screen);
                appData.screen_written = appData.screen;
                SYS_TIME_TimerStart(appData.tmr_delay);
            }
#endif
            break;
        }
        case APP_STATE_ANIMATE_RIGHT_START:
        {
            appData.anim_x = 0;
            appData.anim_x_written = 0;
            SYS_TIME_TimerStart(appData.anim_tmr_hdl);
            appData.state = APP_STATE_ANIMATE_RIGHT;
            break;
        }
        case APP_STATE_ANIMATE_LEFT_START:
        {
            appData.anim_x = 0;
            appData.anim_x_written = 0;
            SYS_TIME_TimerStart(appData.anim_tmr_hdl);
            appData.state = APP_STATE_ANIMATE_LEFT;
            break;
        }
        case APP_STATE_ANIMATE_RIGHT:
            if (appData.anim_tmr_expired)
            {
                appData.anim_tmr_expired = false;
#ifdef ANIMATE_PAGE_INDICATOR
                if (appData.anim_x == 180)
                {
                    SYS_TIME_TimerStop(appData.anim_tmr_hdl);
                    appData.state = APP_STATE_ANIMATE_DONE;
                }
                else
                {
                    appData.anim_x = appData.anim_x + 10;
                    if (appData.anim_x >= 181)
                    {
                        appData.anim_x = 180;
                    }
                }
#endif
#ifdef ANIMATE_WHITE_BITMAP
                if (appData.anim_x == 320)
                {
                    SYS_TIME_TimerStop(appData.anim_tmr_hdl);
                    appData.state = APP_STATE_ANIMATE_DONE;
                }
                else
                {
                    appData.anim_x = appData.anim_x + 10;
                    if (appData.anim_x >= 321)
                    {
                        appData.anim_x = 320;
                    }
                }
#endif
            }
            if (appData.anim_x != appData.anim_x_written)
            {
                appData.anim_x_written = appData.anim_x;

#ifdef ANIMATE_PAGE_INDICATOR
                switch(appData.screen)
                {
                    case screenID_manual:
                        manual_img_page_indicator->fn->setX(
                                manual_img_page_indicator,
                                140 - appData.anim_x);
                        manual_img_page_indicator_right->fn->setX(
                                manual_img_page_indicator_right,
                                320 - appData.anim_x);
                        break;
                    case screenID_stats:
                        stats_img_page_indicator->fn->setX(
                                stats_img_page_indicator,
                                140 - appData.anim_x);
                        stats_img_page_indicator_right->fn->setX(
                                stats_img_page_indicator_right,
                                320 - appData.anim_x);
                        break;
                    case screenID_calib:
                        calib_img_page_indicator->fn->setX(
                                calib_img_page_indicator,
                                140 - appData.anim_x);
                        break;
                }
#endif
#ifdef ANIMATE_WHITE_BITMAP
                int32_t cur_x = Screen0_lbl_some_text->fn->getX(Screen0_lbl_some_text);
                Screen0_lbl_some_text->fn->setX(Screen0_lbl_some_text,
                        cur_x - appData.anim_x);
                Screen0_img_white->fn->setX(Screen0_img_white,
                        320 - appData.anim_x);
#endif
            }
            break;
        case APP_STATE_ANIMATE_LEFT:
#ifdef ANIMATE_PAGE_INDICATOR
            if (appData.anim_x_written == 319)
            {
                legato_showScreen(screenID_manual);
            }
            if (appData.anim_x != appData.anim_x_written)
            {
//                stats_img_anim_left->fn->setX(stats_img_anim_left, 
//                        -320 + appData.anim_x);
                appData.anim_x_written = appData.anim_x;
            }
#endif
            break;
        case APP_STATE_ANIMATE_DONE:
        {
            appData.state = APP_STATE_SERVICE_TASKS;
            SYS_TIME_TimerStart(appData.tmr_hdl);
#ifdef ANIMATE_PAGE_INDICATOR
            switch(appData.screen)
            {
                case screenID_manual:
                    appData.screen = screenID_stats;
                    break;
                case screenID_stats:
                    appData.screen = screenID_calib;
                    break;
                case screenID_calib:
                    appData.screen = screenID_gbw;
                    break;
            }
#endif
            break;
        }
    }
}

#ifdef ANIMATE_PAGE_INDICATOR
void event_calib_btn_start_ok_OnReleased(leButtonWidget* btn)
{
    
}

void event_calib_btn_calib_mode_OnReleased(leButtonWidget* btn)
{
    
}

void calib_OnShow()
{
}

void calib_OnHide()
{
}

void event_gbw_lww_gram_OnSelectionChanged(leListWheelWidget* wgt, int32_t idx)
{
}

void event_gbw_btn_mode_OnPressed(leButtonWidget* btn)
{
}

void event_gbw_btn_mode_OnReleased(leButtonWidget* btn) {
}

void gbw_OnShow()
{
}

void gbw_OnHide()
{   
}

void gbw_OnUpdate()
{
}

void event_manual_btn_manual_OnPressed(leButtonWidget *btn)
{
}

void event_manual_btn_manual_OnReleased(leButtonWidget *btn)
{
}

void event_manual_btn_start_stop_OnPressed(leButtonWidget* btn)
{
}

void event_manual_btn_start_stop_OnReleased(leButtonWidget* btn)
{
}

void manual_OnShow()
{
}

void manual_OnHide()
{
    
}
void stats_OnHide()
{
}

void stats_OnShow()
{    
}
void event_manual_lww_countdown_OnSelectionChanged(leListWheelWidget* wgt, int32_t idx)
{
}
#endif
/*******************************************************************************
 End of File
 */
