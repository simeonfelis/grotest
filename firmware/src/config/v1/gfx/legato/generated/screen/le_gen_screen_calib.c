#include "gfx/legato/generated/screen/le_gen_screen_calib.h"

// screen member widget declarations
static leWidget* root0;

leWidget* calib_Panel_0;
leImageWidget* calib_img_txt_cal;
leImageWidget* calib_img_txt_unit_g;
leLabelWidget* calib_lbl_weight_none;
leImageWidget* calib_img_by_powder;
leImageWidget* calib_img_by_weight;
leImageWidget* calib_img_txt_start;
leButtonWidget* calib_btn_start_ok;
leButtonWidget* calib_btn_calib_mode;
leRectangleWidget* calib_rect_page_indicator_background;
leImageWidget* calib_img_page_indicator;

static leBool initialized = LE_FALSE;
static leBool showing = LE_FALSE;

leResult screenInit_calib(void)
{
    if(initialized == LE_TRUE)
        return LE_FAILURE;

    initialized = LE_TRUE;

    return LE_SUCCESS;
}

leResult screenShow_calib(void)
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

    calib_Panel_0 = leWidget_New();
    calib_Panel_0->fn->setPosition(calib_Panel_0, 0, 0);
    calib_Panel_0->fn->setSize(calib_Panel_0, 320, 240);
    calib_Panel_0->fn->setScheme(calib_Panel_0, &calib_panel);
    root0->fn->addChild(root0, (leWidget*)calib_Panel_0);

    calib_img_txt_cal = leImageWidget_New();
    calib_img_txt_cal->fn->setPosition(calib_img_txt_cal, 26, 103);
    calib_img_txt_cal->fn->setSize(calib_img_txt_cal, 60, 29);
    calib_img_txt_cal->fn->setScheme(calib_img_txt_cal, &rect_calib);
    calib_img_txt_cal->fn->setBorderType(calib_img_txt_cal, LE_WIDGET_BORDER_NONE);
    calib_img_txt_cal->fn->setImage(calib_img_txt_cal, (leImage*)&Symbol_Cal);
    root0->fn->addChild(root0, (leWidget*)calib_img_txt_cal);

    calib_img_txt_unit_g = leImageWidget_New();
    calib_img_txt_unit_g->fn->setPosition(calib_img_txt_unit_g, 284, 124);
    calib_img_txt_unit_g->fn->setSize(calib_img_txt_unit_g, 15, 24);
    calib_img_txt_unit_g->fn->setScheme(calib_img_txt_unit_g, &rect_calib);
    calib_img_txt_unit_g->fn->setBackgroundType(calib_img_txt_unit_g, LE_WIDGET_BACKGROUND_NONE);
    calib_img_txt_unit_g->fn->setBorderType(calib_img_txt_unit_g, LE_WIDGET_BORDER_NONE);
    calib_img_txt_unit_g->fn->setImage(calib_img_txt_unit_g, (leImage*)&Symbol_Gram_sw);
    root0->fn->addChild(root0, (leWidget*)calib_img_txt_unit_g);

    calib_lbl_weight_none = leLabelWidget_New();
    calib_lbl_weight_none->fn->setPosition(calib_lbl_weight_none, 182, 84);
    calib_lbl_weight_none->fn->setSize(calib_lbl_weight_none, 100, 60);
    calib_lbl_weight_none->fn->setScheme(calib_lbl_weight_none, &calib_label);
    calib_lbl_weight_none->fn->setHAlignment(calib_lbl_weight_none, LE_HALIGN_RIGHT);
    calib_lbl_weight_none->fn->setVAlignment(calib_lbl_weight_none, LE_VALIGN_BOTTOM);
    calib_lbl_weight_none->fn->setMargins(calib_lbl_weight_none, 4, 4, 0, 4);
    calib_lbl_weight_none->fn->setString(calib_lbl_weight_none, (leString*)&string_calib_weight_none);
    root0->fn->addChild(root0, (leWidget*)calib_lbl_weight_none);

    calib_img_by_powder = leImageWidget_New();
    calib_img_by_powder->fn->setPosition(calib_img_by_powder, 26, 46);
    calib_img_by_powder->fn->setSize(calib_img_by_powder, 94, 29);
    calib_img_by_powder->fn->setScheme(calib_img_by_powder, &rect_calib);
    calib_img_by_powder->fn->setBorderType(calib_img_by_powder, LE_WIDGET_BORDER_NONE);
    calib_img_by_powder->fn->setImage(calib_img_by_powder, (leImage*)&Symbol_Cal_Pulver);
    root0->fn->addChild(root0, (leWidget*)calib_img_by_powder);

    calib_img_by_weight = leImageWidget_New();
    calib_img_by_weight->fn->setPosition(calib_img_by_weight, 26, 46);
    calib_img_by_weight->fn->setSize(calib_img_by_weight, 94, 29);
    calib_img_by_weight->fn->setScheme(calib_img_by_weight, &rect_calib);
    calib_img_by_weight->fn->setBorderType(calib_img_by_weight, LE_WIDGET_BORDER_NONE);
    calib_img_by_weight->fn->setImage(calib_img_by_weight, (leImage*)&Symbol_Cal_Gewicht);
    root0->fn->addChild(root0, (leWidget*)calib_img_by_weight);

    calib_img_txt_start = leImageWidget_New();
    calib_img_txt_start->fn->setPosition(calib_img_txt_start, 26, 163);
    calib_img_txt_start->fn->setSize(calib_img_txt_start, 45, 29);
    calib_img_txt_start->fn->setBackgroundType(calib_img_txt_start, LE_WIDGET_BACKGROUND_NONE);
    calib_img_txt_start->fn->setBorderType(calib_img_txt_start, LE_WIDGET_BORDER_NONE);
    calib_img_txt_start->fn->setImage(calib_img_txt_start, (leImage*)&Symbol_OK);
    root0->fn->addChild(root0, (leWidget*)calib_img_txt_start);

    calib_btn_start_ok = leButtonWidget_New();
    calib_btn_start_ok->fn->setPosition(calib_btn_start_ok, 22, 156);
    calib_btn_start_ok->fn->setSize(calib_btn_start_ok, 61, 42);
    calib_btn_start_ok->fn->setBackgroundType(calib_btn_start_ok, LE_WIDGET_BACKGROUND_NONE);
    calib_btn_start_ok->fn->setBorderType(calib_btn_start_ok, LE_WIDGET_BORDER_NONE);
    calib_btn_start_ok->fn->setPressedOffset(calib_btn_start_ok, 0);
    calib_btn_start_ok->fn->setReleasedEventCallback(calib_btn_start_ok, event_calib_btn_start_ok_OnReleased);
    root0->fn->addChild(root0, (leWidget*)calib_btn_start_ok);

    calib_btn_calib_mode = leButtonWidget_New();
    calib_btn_calib_mode->fn->setPosition(calib_btn_calib_mode, 22, 42);
    calib_btn_calib_mode->fn->setSize(calib_btn_calib_mode, 105, 42);
    calib_btn_calib_mode->fn->setBackgroundType(calib_btn_calib_mode, LE_WIDGET_BACKGROUND_NONE);
    calib_btn_calib_mode->fn->setBorderType(calib_btn_calib_mode, LE_WIDGET_BORDER_NONE);
    calib_btn_calib_mode->fn->setPressedOffset(calib_btn_calib_mode, 0);
    calib_btn_calib_mode->fn->setReleasedEventCallback(calib_btn_calib_mode, event_calib_btn_calib_mode_OnReleased);
    root0->fn->addChild(root0, (leWidget*)calib_btn_calib_mode);

    calib_rect_page_indicator_background = leRectangleWidget_New();
    calib_rect_page_indicator_background->fn->setPosition(calib_rect_page_indicator_background, 0, 12);
    calib_rect_page_indicator_background->fn->setSize(calib_rect_page_indicator_background, 320, 16);
    calib_rect_page_indicator_background->fn->setScheme(calib_rect_page_indicator_background, &rect_calib);
    calib_rect_page_indicator_background->fn->setBorderType(calib_rect_page_indicator_background, LE_WIDGET_BORDER_NONE);
    calib_rect_page_indicator_background->fn->setMargins(calib_rect_page_indicator_background, 0, 0, 0, 0);
    calib_rect_page_indicator_background->fn->setThickness(calib_rect_page_indicator_background, 2);
    root0->fn->addChild(root0, (leWidget*)calib_rect_page_indicator_background);

    calib_img_page_indicator = leImageWidget_New();
    calib_img_page_indicator->fn->setPosition(calib_img_page_indicator, 140, 12);
    calib_img_page_indicator->fn->setSize(calib_img_page_indicator, 40, 14);
    calib_img_page_indicator->fn->setScheme(calib_img_page_indicator, &calib_panel);
    calib_img_page_indicator->fn->setBorderType(calib_img_page_indicator, LE_WIDGET_BORDER_NONE);
    calib_img_page_indicator->fn->setMargins(calib_img_page_indicator, 0, 0, 0, 0);
    calib_img_page_indicator->fn->setImage(calib_img_page_indicator, (leImage*)&Symbol_Seite_Cal);
    root0->fn->addChild(root0, (leWidget*)calib_img_page_indicator);

    leAddRootWidget(root0, 0);
    leSetLayerColorMode(0, LE_COLOR_MODE_RGB_565);

    calib_OnShow(); // raise event

    showing = LE_TRUE;

    return LE_SUCCESS;
}

void screenUpdate_calib(void)
{
    root0->fn->setSize(root0, root0->rect.width, root0->rect.height);
}

void screenHide_calib(void)
{
    calib_OnHide(); // raise event


    leRemoveRootWidget(root0, 0);
    leWidget_Delete(root0);
    root0 = NULL;

    calib_Panel_0 = NULL;
    calib_img_txt_cal = NULL;
    calib_img_txt_unit_g = NULL;
    calib_lbl_weight_none = NULL;
    calib_img_by_powder = NULL;
    calib_img_by_weight = NULL;
    calib_img_txt_start = NULL;
    calib_btn_start_ok = NULL;
    calib_btn_calib_mode = NULL;
    calib_rect_page_indicator_background = NULL;
    calib_img_page_indicator = NULL;


    showing = LE_FALSE;
}

void screenDestroy_calib(void)
{
    if(initialized == LE_FALSE)
        return;

    initialized = LE_FALSE;
}

leWidget* screenGetRoot_calib(uint32_t lyrIdx)
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

