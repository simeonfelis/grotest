#include "gfx/legato/generated/screen/le_gen_screen_manual.h"

// screen member widget declarations
static leWidget* root0;

leWidget* manual_PanelWidget0;
leImageWidget* manual_img_symbol_manual;
leImageWidget* manual_img_txt_stop;
leImageWidget* manual_img_txt_start;
leButtonWidget* manual_btn_start_stop;
leButtonWidget* manual_btn_manual;
leLabelWidget* manual_lbl_countdown;
leListWheelWidget* manual_lww_countdown;
leImageWidget* manual_img_txt_sekunde;
leRectangleWidget* manual_rect_hide_top;
leRectangleWidget* manual_rect_hide_bottom;
leRectangleWidget* manual_rect_page_indicator_background;
leImageWidget* manual_img_page_indicator;
leImageWidget* manual_img_page_indicator_right;

static leBool initialized = LE_FALSE;
static leBool showing = LE_FALSE;

leResult screenInit_manual(void)
{
    if(initialized == LE_TRUE)
        return LE_FAILURE;

    initialized = LE_TRUE;

    return LE_SUCCESS;
}

leResult screenShow_manual(void)
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

    manual_PanelWidget0 = leWidget_New();
    manual_PanelWidget0->fn->setPosition(manual_PanelWidget0, 0, 0);
    manual_PanelWidget0->fn->setSize(manual_PanelWidget0, 320, 240);
    manual_PanelWidget0->fn->setScheme(manual_PanelWidget0, &listwheel_gram);
    root0->fn->addChild(root0, (leWidget*)manual_PanelWidget0);

    manual_img_symbol_manual = leImageWidget_New();
    manual_img_symbol_manual->fn->setPosition(manual_img_symbol_manual, 26, 106);
    manual_img_symbol_manual->fn->setSize(manual_img_symbol_manual, 25, 30);
    manual_img_symbol_manual->fn->setScheme(manual_img_symbol_manual, &grnbch);
    manual_img_symbol_manual->fn->setBorderType(manual_img_symbol_manual, LE_WIDGET_BORDER_NONE);
    manual_img_symbol_manual->fn->setImage(manual_img_symbol_manual, (leImage*)&Symbol_Manual);
    root0->fn->addChild(root0, (leWidget*)manual_img_symbol_manual);

    manual_img_txt_stop = leImageWidget_New();
    manual_img_txt_stop->fn->setPosition(manual_img_txt_stop, 23, 179);
    manual_img_txt_stop->fn->setSize(manual_img_txt_stop, 56, 26);
    manual_img_txt_stop->fn->setScheme(manual_img_txt_stop, &grnbch);
    manual_img_txt_stop->fn->setBorderType(manual_img_txt_stop, LE_WIDGET_BORDER_NONE);
    manual_img_txt_stop->fn->setHAlignment(manual_img_txt_stop, LE_HALIGN_LEFT);
    manual_img_txt_stop->fn->setVAlignment(manual_img_txt_stop, LE_VALIGN_TOP);
    manual_img_txt_stop->fn->setMargins(manual_img_txt_stop, 0, 0, 0, 0);
    manual_img_txt_stop->fn->setImage(manual_img_txt_stop, (leImage*)&Symbol_Stop);
    root0->fn->addChild(root0, (leWidget*)manual_img_txt_stop);

    manual_img_txt_start = leImageWidget_New();
    manual_img_txt_start->fn->setPosition(manual_img_txt_start, 23, 179);
    manual_img_txt_start->fn->setSize(manual_img_txt_start, 56, 26);
    manual_img_txt_start->fn->setScheme(manual_img_txt_start, &grnbch);
    manual_img_txt_start->fn->setBorderType(manual_img_txt_start, LE_WIDGET_BORDER_NONE);
    manual_img_txt_start->fn->setHAlignment(manual_img_txt_start, LE_HALIGN_LEFT);
    manual_img_txt_start->fn->setVAlignment(manual_img_txt_start, LE_VALIGN_TOP);
    manual_img_txt_start->fn->setMargins(manual_img_txt_start, 0, 0, 0, 0);
    manual_img_txt_start->fn->setImage(manual_img_txt_start, (leImage*)&Symbol_Start);
    root0->fn->addChild(root0, (leWidget*)manual_img_txt_start);

    manual_btn_start_stop = leButtonWidget_New();
    manual_btn_start_stop->fn->setPosition(manual_btn_start_stop, 22, 156);
    manual_btn_start_stop->fn->setSize(manual_btn_start_stop, 125, 60);
    manual_btn_start_stop->fn->setScheme(manual_btn_start_stop, &manual_text);
    manual_btn_start_stop->fn->setBackgroundType(manual_btn_start_stop, LE_WIDGET_BACKGROUND_NONE);
    manual_btn_start_stop->fn->setHAlignment(manual_btn_start_stop, LE_HALIGN_LEFT);
    manual_btn_start_stop->fn->setMargins(manual_btn_start_stop, 0, 4, 4, 4);
    manual_btn_start_stop->fn->setPressedOffset(manual_btn_start_stop, 0);
    manual_btn_start_stop->fn->setPressedEventCallback(manual_btn_start_stop, event_manual_btn_start_stop_OnPressed);
    manual_btn_start_stop->fn->setReleasedEventCallback(manual_btn_start_stop, event_manual_btn_start_stop_OnReleased);
    root0->fn->addChild(root0, (leWidget*)manual_btn_start_stop);

    manual_btn_manual = leButtonWidget_New();
    manual_btn_manual->fn->setPosition(manual_btn_manual, 20, 90);
    manual_btn_manual->fn->setSize(manual_btn_manual, 125, 60);
    manual_btn_manual->fn->setScheme(manual_btn_manual, &manual_text);
    manual_btn_manual->fn->setBackgroundType(manual_btn_manual, LE_WIDGET_BACKGROUND_NONE);
    manual_btn_manual->fn->setBorderType(manual_btn_manual, LE_WIDGET_BORDER_NONE);
    manual_btn_manual->fn->setHAlignment(manual_btn_manual, LE_HALIGN_LEFT);
    manual_btn_manual->fn->setPressedOffset(manual_btn_manual, 0);
    manual_btn_manual->fn->setPressedEventCallback(manual_btn_manual, event_manual_btn_manual_OnPressed);
    manual_btn_manual->fn->setReleasedEventCallback(manual_btn_manual, event_manual_btn_manual_OnReleased);
    root0->fn->addChild(root0, (leWidget*)manual_btn_manual);

    manual_lbl_countdown = leLabelWidget_New();
    manual_lbl_countdown->fn->setPosition(manual_lbl_countdown, 218, 88);
    manual_lbl_countdown->fn->setSize(manual_lbl_countdown, 64, 54);
    manual_lbl_countdown->fn->setScheme(manual_lbl_countdown, &grnbch);
    manual_lbl_countdown->fn->setHAlignment(manual_lbl_countdown, LE_HALIGN_RIGHT);
    manual_lbl_countdown->fn->setVAlignment(manual_lbl_countdown, LE_VALIGN_BOTTOM);
    manual_lbl_countdown->fn->setMargins(manual_lbl_countdown, 0, 0, 0, 0);
    manual_lbl_countdown->fn->setString(manual_lbl_countdown, (leString*)&string_manual_countdown_20);
    root0->fn->addChild(root0, (leWidget*)manual_lbl_countdown);

    manual_lww_countdown = leListWheelWidget_New();
    manual_lww_countdown->fn->setPosition(manual_lww_countdown, 218, 8);
    manual_lww_countdown->fn->setSize(manual_lww_countdown, 64, 216);
    manual_lww_countdown->fn->setScheme(manual_lww_countdown, &listwheel_gram);
    manual_lww_countdown->fn->setBackgroundType(manual_lww_countdown, LE_WIDGET_BACKGROUND_NONE);
    manual_lww_countdown->fn->setBorderType(manual_lww_countdown, LE_WIDGET_BORDER_NONE);
    manual_lww_countdown->fn->setHAlignment(manual_lww_countdown, LE_HALIGN_RIGHT);
    manual_lww_countdown->fn->setMargins(manual_lww_countdown, 0, 0, 0, 0);
    manual_lww_countdown->fn->setShowIndicators(manual_lww_countdown, LE_FALSE);
    manual_lww_countdown->fn->setShaded(manual_lww_countdown, LE_FALSE);
    manual_lww_countdown->fn->setAutoHideWheel(manual_lww_countdown, LE_TRUE);
    manual_lww_countdown->fn->appendItem(manual_lww_countdown);
    manual_lww_countdown->fn->setItemString(manual_lww_countdown, 0, (leString*)&string_manual_countdown_20);
    manual_lww_countdown->fn->appendItem(manual_lww_countdown);
    manual_lww_countdown->fn->setItemString(manual_lww_countdown, 1, (leString*)&string_manual_countdown_19);
    manual_lww_countdown->fn->appendItem(manual_lww_countdown);
    manual_lww_countdown->fn->setItemString(manual_lww_countdown, 2, (leString*)&string_manual_countdown_18);
    manual_lww_countdown->fn->setSelectedItemChangedEventCallback(manual_lww_countdown, event_manual_lww_countdown_OnSelectionChanged);
    root0->fn->addChild(root0, (leWidget*)manual_lww_countdown);

    manual_img_txt_sekunde = leImageWidget_New();
    manual_img_txt_sekunde->fn->setPosition(manual_img_txt_sekunde, 286, 124);
    manual_img_txt_sekunde->fn->setSize(manual_img_txt_sekunde, 15, 19);
    manual_img_txt_sekunde->fn->setScheme(manual_img_txt_sekunde, &grnbch);
    manual_img_txt_sekunde->fn->setBorderType(manual_img_txt_sekunde, LE_WIDGET_BORDER_NONE);
    manual_img_txt_sekunde->fn->setMargins(manual_img_txt_sekunde, 0, 0, 0, 0);
    manual_img_txt_sekunde->fn->setImage(manual_img_txt_sekunde, (leImage*)&Symbol_Sekunde);
    root0->fn->addChild(root0, (leWidget*)manual_img_txt_sekunde);

    manual_rect_hide_top = leRectangleWidget_New();
    manual_rect_hide_top->fn->setPosition(manual_rect_hide_top, 183, 0);
    manual_rect_hide_top->fn->setSize(manual_rect_hide_top, 100, 38);
    manual_rect_hide_top->fn->setScheme(manual_rect_hide_top, &grnbch);
    manual_rect_hide_top->fn->setBorderType(manual_rect_hide_top, LE_WIDGET_BORDER_NONE);
    manual_rect_hide_top->fn->setThickness(manual_rect_hide_top, 2);
    root0->fn->addChild(root0, (leWidget*)manual_rect_hide_top);

    manual_rect_hide_bottom = leRectangleWidget_New();
    manual_rect_hide_bottom->fn->setPosition(manual_rect_hide_bottom, 183, 208);
    manual_rect_hide_bottom->fn->setSize(manual_rect_hide_bottom, 100, 24);
    manual_rect_hide_bottom->fn->setScheme(manual_rect_hide_bottom, &grnbch);
    manual_rect_hide_bottom->fn->setBorderType(manual_rect_hide_bottom, LE_WIDGET_BORDER_NONE);
    manual_rect_hide_bottom->fn->setThickness(manual_rect_hide_bottom, 2);
    root0->fn->addChild(root0, (leWidget*)manual_rect_hide_bottom);

    manual_rect_page_indicator_background = leRectangleWidget_New();
    manual_rect_page_indicator_background->fn->setPosition(manual_rect_page_indicator_background, 0, 12);
    manual_rect_page_indicator_background->fn->setSize(manual_rect_page_indicator_background, 320, 16);
    manual_rect_page_indicator_background->fn->setScheme(manual_rect_page_indicator_background, &grnbch);
    manual_rect_page_indicator_background->fn->setBorderType(manual_rect_page_indicator_background, LE_WIDGET_BORDER_NONE);
    manual_rect_page_indicator_background->fn->setMargins(manual_rect_page_indicator_background, 0, 0, 0, 0);
    manual_rect_page_indicator_background->fn->setThickness(manual_rect_page_indicator_background, 2);
    root0->fn->addChild(root0, (leWidget*)manual_rect_page_indicator_background);

    manual_img_page_indicator = leImageWidget_New();
    manual_img_page_indicator->fn->setPosition(manual_img_page_indicator, 140, 14);
    manual_img_page_indicator->fn->setSize(manual_img_page_indicator, 40, 12);
    manual_img_page_indicator->fn->setScheme(manual_img_page_indicator, &grnbch);
    manual_img_page_indicator->fn->setBorderType(manual_img_page_indicator, LE_WIDGET_BORDER_NONE);
    manual_img_page_indicator->fn->setMargins(manual_img_page_indicator, 0, 0, 0, 0);
    manual_img_page_indicator->fn->setImage(manual_img_page_indicator, (leImage*)&Symbol_Seite_Manual);
    root0->fn->addChild(root0, (leWidget*)manual_img_page_indicator);

    manual_img_page_indicator_right = leImageWidget_New();
    manual_img_page_indicator_right->fn->setPosition(manual_img_page_indicator_right, 320, 14);
    manual_img_page_indicator_right->fn->setSize(manual_img_page_indicator_right, 40, 12);
    manual_img_page_indicator_right->fn->setScheme(manual_img_page_indicator_right, &grnbch);
    manual_img_page_indicator_right->fn->setBorderType(manual_img_page_indicator_right, LE_WIDGET_BORDER_NONE);
    manual_img_page_indicator_right->fn->setImage(manual_img_page_indicator_right, (leImage*)&Symbol_Seite_Statistik);
    root0->fn->addChild(root0, (leWidget*)manual_img_page_indicator_right);

    leAddRootWidget(root0, 0);
    leSetLayerColorMode(0, LE_COLOR_MODE_RGB_565);

    manual_OnShow(); // raise event

    showing = LE_TRUE;

    return LE_SUCCESS;
}

void screenUpdate_manual(void)
{
    root0->fn->setSize(root0, root0->rect.width, root0->rect.height);
}

void screenHide_manual(void)
{
    manual_OnHide(); // raise event


    leRemoveRootWidget(root0, 0);
    leWidget_Delete(root0);
    root0 = NULL;

    manual_PanelWidget0 = NULL;
    manual_img_symbol_manual = NULL;
    manual_img_txt_stop = NULL;
    manual_img_txt_start = NULL;
    manual_btn_start_stop = NULL;
    manual_btn_manual = NULL;
    manual_lbl_countdown = NULL;
    manual_lww_countdown = NULL;
    manual_img_txt_sekunde = NULL;
    manual_rect_hide_top = NULL;
    manual_rect_hide_bottom = NULL;
    manual_rect_page_indicator_background = NULL;
    manual_img_page_indicator = NULL;
    manual_img_page_indicator_right = NULL;


    showing = LE_FALSE;
}

void screenDestroy_manual(void)
{
    if(initialized == LE_FALSE)
        return;

    initialized = LE_FALSE;
}

leWidget* screenGetRoot_manual(uint32_t lyrIdx)
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

