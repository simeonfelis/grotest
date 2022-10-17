#include "gfx/legato/generated/screen/le_gen_screen_Screen1.h"

// screen member widget declarations
static leWidget* root0;

leWidget* Screen1_Panel_0;
leImageWidget* Screen1_ImageWidget_0;
leCircleWidget* Screen1_CircleWidget_0;
leLabelWidget* Screen1_LabelWidget_0;

static leBool initialized = LE_FALSE;
static leBool showing = LE_FALSE;

leResult screenInit_Screen1(void)
{
    if(initialized == LE_TRUE)
        return LE_FAILURE;

    initialized = LE_TRUE;

    return LE_SUCCESS;
}

leResult screenShow_Screen1(void)
{
    if(showing == LE_TRUE)
        return LE_FAILURE;

    // layer 0
    root0 = leWidget_New();
    root0->fn->setSize(root0, 320, 240);
    root0->fn->setBackgroundType(root0, LE_WIDGET_BACKGROUND_NONE);
    root0->fn->setMargins(root0, 0, 0, 0, 0);
    root0->flags |= LE_WIDGET_IGNOREEVENTS;
    root0->flags |= LE_WIDGET_IGNOREPICK;

    Screen1_Panel_0 = leWidget_New();
    Screen1_Panel_0->fn->setPosition(Screen1_Panel_0, 0, 0);
    Screen1_Panel_0->fn->setSize(Screen1_Panel_0, 320, 240);
    root0->fn->addChild(root0, (leWidget*)Screen1_Panel_0);

    Screen1_ImageWidget_0 = leImageWidget_New();
    Screen1_ImageWidget_0->fn->setPosition(Screen1_ImageWidget_0, 118, 71);
    Screen1_ImageWidget_0->fn->setBorderType(Screen1_ImageWidget_0, LE_WIDGET_BORDER_NONE);
    Screen1_ImageWidget_0->fn->setImage(Screen1_ImageWidget_0, (leImage*)&bitmap_white);
    root0->fn->addChild(root0, (leWidget*)Screen1_ImageWidget_0);

    Screen1_CircleWidget_0 = leCircleWidget_New();
    Screen1_CircleWidget_0->fn->setPosition(Screen1_CircleWidget_0, 123, 71);
    root0->fn->addChild(root0, (leWidget*)Screen1_CircleWidget_0);

    Screen1_LabelWidget_0 = leLabelWidget_New();
    Screen1_LabelWidget_0->fn->setPosition(Screen1_LabelWidget_0, 111, 34);
    Screen1_LabelWidget_0->fn->setString(Screen1_LabelWidget_0, (leString*)&string_String);
    root0->fn->addChild(root0, (leWidget*)Screen1_LabelWidget_0);

    leAddRootWidget(root0, 0);
    leSetLayerColorMode(0, LE_COLOR_MODE_RGB_565);

    showing = LE_TRUE;

    return LE_SUCCESS;
}

void screenUpdate_Screen1(void)
{
    root0->fn->setSize(root0, root0->rect.width, root0->rect.height);
}

void screenHide_Screen1(void)
{

    leRemoveRootWidget(root0, 0);
    leWidget_Delete(root0);
    root0 = NULL;

    Screen1_Panel_0 = NULL;
    Screen1_ImageWidget_0 = NULL;
    Screen1_CircleWidget_0 = NULL;
    Screen1_LabelWidget_0 = NULL;


    showing = LE_FALSE;
}

void screenDestroy_Screen1(void)
{
    if(initialized == LE_FALSE)
        return;

    initialized = LE_FALSE;
}

leWidget* screenGetRoot_Screen1(uint32_t lyrIdx)
{
    if(lyrIdx >= LE_LAYER_COUNT)
        return NULL;

    switch(lyrIdx)
    {
        case 0:
        {
            return root0;
        }
        default:
        {
            return NULL;
        }
    }
}

