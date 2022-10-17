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
        if (appData.screenid == screenID_Screen0)
        {
            legato_showScreen(screenID_Screen1);
            appData.screenid = screenID_Screen1;
        }
        else
        {
            legato_showScreen(screenID_Screen0);
            appData.screenid = screenID_Screen0;
        }
    }
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
    appData.screenid = screenID_Screen0;
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
                            1000,
                            SYS_TIME_PERIODIC);

                appData.state = APP_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_STATE_SERVICE_TASKS:
        {
            break;
        }
    }
}

/*******************************************************************************
 End of File
 */
