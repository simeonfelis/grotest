#include "gfx/legato/generated/screen/le_gen_screen_Screen0.h"

// screen member widget declarations
static leWidget* root0;

leWidget* Screen0_Panel_0;
leImageWidget* Screen0_img_white;
leLabelWidget* Screen0_lbl_some_text;

static leBool initialized = LE_FALSE;
static leBool showing = LE_FALSE;

leResult screenInit_Screen0(void)
{
    if(initialized == LE_TRUE)
        return LE_FAILURE;

    initialized = LE_TRUE;

    return LE_SUCCESS;
}

leResult screenShow_Screen0(void)
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

    Screen0_Panel_0 = leWidget_New();
    Screen0_Panel_0->fn->setPosition(Screen0_Panel_0, 0, 0);
    Screen0_Panel_0->fn->setSize(Screen0_Panel_0, 320, 240);
    Screen0_Panel_0->fn->setScheme(Screen0_Panel_0, &black);
    root0->fn->addChild(root0, (leWidget*)Screen0_Panel_0);

    Screen0_img_white = leImageWidget_New();
    Screen0_img_white->fn->setPosition(Screen0_img_white, 320, 0);
    Screen0_img_white->fn->setSize(Screen0_img_white, 320, 240);
    Screen0_img_white->fn->setBorderType(Screen0_img_white, LE_WIDGET_BORDER_NONE);
    Screen0_img_white->fn->setImage(Screen0_img_white, (leImage*)&bitmap_white);
    root0->fn->addChild(root0, (leWidget*)Screen0_img_white);

    Screen0_lbl_some_text = leLabelWidget_New();
    Screen0_lbl_some_text->fn->setPosition(Screen0_lbl_some_text, 80, 83);
    Screen0_lbl_some_text->fn->setSize(Screen0_lbl_some_text, 178, 77);
    Screen0_lbl_some_text->fn->setScheme(Screen0_lbl_some_text, &white);
    Screen0_lbl_some_text->fn->setBackgroundType(Screen0_lbl_some_text, LE_WIDGET_BACKGROUND_NONE);
    Screen0_lbl_some_text->fn->setString(Screen0_lbl_some_text, (leString*)&string_String);
    root0->fn->addChild(root0, (leWidget*)Screen0_lbl_some_text);

    leAddRootWidget(root0, 0);
    leSetLayerColorMode(0, LE_COLOR_MODE_RGB_565);

    showing = LE_TRUE;

    return LE_SUCCESS;
}

void screenUpdate_Screen0(void)
{
    root0->fn->setSize(root0, root0->rect.width, root0->rect.height);
}

void screenHide_Screen0(void)
{

    leRemoveRootWidget(root0, 0);
    leWidget_Delete(root0);
    root0 = NULL;

    Screen0_Panel_0 = NULL;
    Screen0_img_white = NULL;
    Screen0_lbl_some_text = NULL;


    showing = LE_FALSE;
}

void screenDestroy_Screen0(void)
{
    if(initialized == LE_FALSE)
        return;

    initialized = LE_FALSE;
}

leWidget* screenGetRoot_Screen0(uint32_t lyrIdx)
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

