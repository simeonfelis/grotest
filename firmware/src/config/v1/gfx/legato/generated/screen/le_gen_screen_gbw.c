#include "gfx/legato/generated/screen/le_gen_screen_gbw.h"

// screen member widget declarations
static leWidget* root0;

leRectangleWidget* gbw_RectangleWidget2;
leImageWidget* gbw_img_txt_err;
leLabelWidget* gbw_lbl_weight;
leListWheelWidget* gbw_lww_gram;
leImageWidget* gbw_img_cup_single;
leImageWidget* gbw_img_cup_double;
leButtonWidget* gbw_btn_mode;
leImageWidget* gbw_img_symbol_sum;
leRectangleWidget* gbw_rect_hide_top;
leRectangleWidget* gbw_rect_hide_bottom;
leImageWidget* gbw_img_symbol_gram;

static leBool initialized = LE_FALSE;
static leBool showing = LE_FALSE;

leResult screenInit_gbw(void)
{
    if(initialized == LE_TRUE)
        return LE_FAILURE;

    // layer 0
    root0 = leWidget_New();
    root0->fn->setSize(root0, 320, 240);
    root0->fn->setBackgroundType(root0, LE_WIDGET_BACKGROUND_NONE);
    root0->fn->setMargins(root0, 0, 0, 0, 0);
    root0->flags |= LE_WIDGET_IGNOREEVENTS;
    root0->flags |= LE_WIDGET_IGNOREPICK;

    gbw_RectangleWidget2 = leRectangleWidget_New();
    gbw_RectangleWidget2->fn->setPosition(gbw_RectangleWidget2, 0, 0);
    gbw_RectangleWidget2->fn->setSize(gbw_RectangleWidget2, 320, 240);
    gbw_RectangleWidget2->fn->setScheme(gbw_RectangleWidget2, &grnbch);
    gbw_RectangleWidget2->fn->setBorderType(gbw_RectangleWidget2, LE_WIDGET_BORDER_NONE);
    gbw_RectangleWidget2->fn->setThickness(gbw_RectangleWidget2, 2);
    root0->fn->addChild(root0, (leWidget*)gbw_RectangleWidget2);

    gbw_img_txt_err = leImageWidget_New();
    gbw_img_txt_err->fn->setPosition(gbw_img_txt_err, 208, 108);
    gbw_img_txt_err->fn->setSize(gbw_img_txt_err, 78, 35);
    gbw_img_txt_err->fn->setScheme(gbw_img_txt_err, &grnbch);
    gbw_img_txt_err->fn->setBorderType(gbw_img_txt_err, LE_WIDGET_BORDER_NONE);
    root0->fn->addChild(root0, (leWidget*)gbw_img_txt_err);

    gbw_lbl_weight = leLabelWidget_New();
    gbw_lbl_weight->fn->setPosition(gbw_lbl_weight, 185, 89);
    gbw_lbl_weight->fn->setSize(gbw_lbl_weight, 100, 55);
    gbw_lbl_weight->fn->setScheme(gbw_lbl_weight, &grnbch);
    gbw_lbl_weight->fn->setHAlignment(gbw_lbl_weight, LE_HALIGN_RIGHT);
    gbw_lbl_weight->fn->setVAlignment(gbw_lbl_weight, LE_VALIGN_TOP);
    gbw_lbl_weight->fn->setMargins(gbw_lbl_weight, 0, 0, 0, 0);
    gbw_lbl_weight->fn->setString(gbw_lbl_weight, (leString*)&string_cupsel_weight_0_0);
    root0->fn->addChild(root0, (leWidget*)gbw_lbl_weight);

    gbw_lww_gram = leListWheelWidget_New();
    gbw_lww_gram->fn->setPosition(gbw_lww_gram, 182, 8);
    gbw_lww_gram->fn->setSize(gbw_lww_gram, 100, 215);
    gbw_lww_gram->fn->setScheme(gbw_lww_gram, &listwheel_gram);
    gbw_lww_gram->fn->setBackgroundType(gbw_lww_gram, LE_WIDGET_BACKGROUND_NONE);
    gbw_lww_gram->fn->setBorderType(gbw_lww_gram, LE_WIDGET_BORDER_NONE);
    gbw_lww_gram->fn->setHAlignment(gbw_lww_gram, LE_HALIGN_RIGHT);
    gbw_lww_gram->fn->setMargins(gbw_lww_gram, 0, 0, 0, 0);
    gbw_lww_gram->fn->setShowIndicators(gbw_lww_gram, LE_FALSE);
    gbw_lww_gram->fn->setShaded(gbw_lww_gram, LE_FALSE);
    gbw_lww_gram->fn->setAutoHideWheel(gbw_lww_gram, LE_TRUE);
    gbw_lww_gram->fn->appendItem(gbw_lww_gram);
    gbw_lww_gram->fn->setItemString(gbw_lww_gram, 0, (leString*)&string_cupsel_weight_26_3);
    gbw_lww_gram->fn->appendItem(gbw_lww_gram);
    gbw_lww_gram->fn->setItemString(gbw_lww_gram, 1, (leString*)&string_cupsel_weight_26_4);
    gbw_lww_gram->fn->appendItem(gbw_lww_gram);
    gbw_lww_gram->fn->setItemString(gbw_lww_gram, 2, (leString*)&string_cupsel_weight_26_5);
    gbw_lww_gram->fn->setSelectedItemChangedEventCallback(gbw_lww_gram, event_gbw_lww_gram_OnSelectionChanged);
    root0->fn->addChild(root0, (leWidget*)gbw_lww_gram);

    gbw_img_cup_single = leImageWidget_New();
    gbw_img_cup_single->fn->setPosition(gbw_img_cup_single, 15, 97);
    gbw_img_cup_single->fn->setSize(gbw_img_cup_single, 46, 46);
    gbw_img_cup_single->fn->setScheme(gbw_img_cup_single, &grnbch);
    gbw_img_cup_single->fn->setBorderType(gbw_img_cup_single, LE_WIDGET_BORDER_NONE);
    gbw_img_cup_single->fn->setImage(gbw_img_cup_single, (leImage*)&Symbol_Single);
    root0->fn->addChild(root0, (leWidget*)gbw_img_cup_single);

    gbw_img_cup_double = leImageWidget_New();
    gbw_img_cup_double->fn->setPosition(gbw_img_cup_double, 15, 97);
    gbw_img_cup_double->fn->setSize(gbw_img_cup_double, 72, 46);
    gbw_img_cup_double->fn->setScheme(gbw_img_cup_double, &grnbch);
    gbw_img_cup_double->fn->setBorderType(gbw_img_cup_double, LE_WIDGET_BORDER_NONE);
    gbw_img_cup_double->fn->setMargins(gbw_img_cup_double, 2, 4, 4, 4);
    gbw_img_cup_double->fn->setImage(gbw_img_cup_double, (leImage*)&Symbol_Double);
    root0->fn->addChild(root0, (leWidget*)gbw_img_cup_double);

    gbw_btn_mode = leButtonWidget_New();
    gbw_btn_mode->fn->setPosition(gbw_btn_mode, 5, 75);
    gbw_btn_mode->fn->setSize(gbw_btn_mode, 128, 90);
    gbw_btn_mode->fn->setScheme(gbw_btn_mode, &listwheel_gram);
    gbw_btn_mode->fn->setBackgroundType(gbw_btn_mode, LE_WIDGET_BACKGROUND_NONE);
    gbw_btn_mode->fn->setBorderType(gbw_btn_mode, LE_WIDGET_BORDER_NONE);
    gbw_btn_mode->fn->setImagePosition(gbw_btn_mode, LE_RELATIVE_POSITION_ABOVE);
    gbw_btn_mode->fn->setPressedOffset(gbw_btn_mode, 0);
    gbw_btn_mode->fn->setPressedEventCallback(gbw_btn_mode, event_gbw_btn_mode_OnPressed);
    gbw_btn_mode->fn->setReleasedEventCallback(gbw_btn_mode, event_gbw_btn_mode_OnReleased);
    root0->fn->addChild(root0, (leWidget*)gbw_btn_mode);

    gbw_img_symbol_sum = leImageWidget_New();
    gbw_img_symbol_sum->fn->setPosition(gbw_img_symbol_sum, 286, 124);
    gbw_img_symbol_sum->fn->setSize(gbw_img_symbol_sum, 16, 22);
    gbw_img_symbol_sum->fn->setScheme(gbw_img_symbol_sum, &grnbch);
    gbw_img_symbol_sum->fn->setBorderType(gbw_img_symbol_sum, LE_WIDGET_BORDER_NONE);
    gbw_img_symbol_sum->fn->setMargins(gbw_img_symbol_sum, 1, 1, 1, 1);
    gbw_img_symbol_sum->fn->setImage(gbw_img_symbol_sum, (leImage*)&sum);
    root0->fn->addChild(root0, (leWidget*)gbw_img_symbol_sum);

    gbw_rect_hide_top = leRectangleWidget_New();
    gbw_rect_hide_top->fn->setPosition(gbw_rect_hide_top, 183, 0);
    gbw_rect_hide_top->fn->setSize(gbw_rect_hide_top, 100, 35);
    gbw_rect_hide_top->fn->setScheme(gbw_rect_hide_top, &grnbch);
    gbw_rect_hide_top->fn->setBorderType(gbw_rect_hide_top, LE_WIDGET_BORDER_NONE);
    gbw_rect_hide_top->fn->setThickness(gbw_rect_hide_top, 2);
    root0->fn->addChild(root0, (leWidget*)gbw_rect_hide_top);

    gbw_rect_hide_bottom = leRectangleWidget_New();
    gbw_rect_hide_bottom->fn->setPosition(gbw_rect_hide_bottom, 183, 204);
    gbw_rect_hide_bottom->fn->setSize(gbw_rect_hide_bottom, 100, 34);
    gbw_rect_hide_bottom->fn->setScheme(gbw_rect_hide_bottom, &grnbch);
    gbw_rect_hide_bottom->fn->setBorderType(gbw_rect_hide_bottom, LE_WIDGET_BORDER_NONE);
    gbw_rect_hide_bottom->fn->setThickness(gbw_rect_hide_bottom, 2);
    root0->fn->addChild(root0, (leWidget*)gbw_rect_hide_bottom);

    gbw_img_symbol_gram = leImageWidget_New();
    gbw_img_symbol_gram->fn->setPosition(gbw_img_symbol_gram, 286, 124);
    gbw_img_symbol_gram->fn->setSize(gbw_img_symbol_gram, 15, 24);
    gbw_img_symbol_gram->fn->setScheme(gbw_img_symbol_gram, &grnbch);
    gbw_img_symbol_gram->fn->setBorderType(gbw_img_symbol_gram, LE_WIDGET_BORDER_NONE);
    gbw_img_symbol_gram->fn->setImage(gbw_img_symbol_gram, (leImage*)&Symbol_Gramm_ws);
    root0->fn->addChild(root0, (leWidget*)gbw_img_symbol_gram);

    leAddRootWidget(root0, 0);
    leSetLayerColorMode(0, LE_COLOR_MODE_RGB_565);

    initialized = LE_TRUE;

    return LE_SUCCESS;
}

leResult screenShow_gbw(void)
{
    if(showing == LE_TRUE)
        return LE_FAILURE;

    gbw_OnShow(); // raise event

    showing = LE_TRUE;

    return LE_SUCCESS;
}

void screenUpdate_gbw(void)
{
    root0->fn->setSize(root0, root0->rect.width, root0->rect.height);
}

void screenHide_gbw(void)
{
    gbw_OnHide(); // raise event

    showing = LE_FALSE;
}

void screenDestroy_gbw(void)
{
    if(initialized == LE_FALSE)
        return;

    leRemoveRootWidget(root0, 0);
    leWidget_Delete(root0);
    root0 = NULL;

    gbw_RectangleWidget2 = NULL;
    gbw_img_txt_err = NULL;
    gbw_lbl_weight = NULL;
    gbw_lww_gram = NULL;
    gbw_img_cup_single = NULL;
    gbw_img_cup_double = NULL;
    gbw_btn_mode = NULL;
    gbw_img_symbol_sum = NULL;
    gbw_rect_hide_top = NULL;
    gbw_rect_hide_bottom = NULL;
    gbw_img_symbol_gram = NULL;

    initialized = LE_FALSE;
}

leWidget* screenGetRoot_gbw(uint32_t lyrIdx)
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

