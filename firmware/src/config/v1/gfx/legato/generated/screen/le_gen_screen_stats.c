#include "gfx/legato/generated/screen/le_gen_screen_stats.h"

// screen member widget declarations
static leWidget* root0;

leRectangleWidget* stats_RectangleWidget0;
leLabelWidget* stats_lbl_total_single;
leLabelWidget* stats_lbl_total_double;
leLabelWidget* stats_lbl_total_time;
leImageWidget* stats_img_symbol_double;
leImageWidget* stats_img_symbol_single;
leImageWidget* stats_img_symbol_manual;
leImageWidget* stats_img_txt_single_gram;
leImageWidget* stats_img_txt_double_gram;
leImageWidget* stats_img_txt_sekunde;
leRectangleWidget* stats_rect_page_indicator_background;
leImageWidget* stats_img_page_indicator;
leImageWidget* stats_img_page_indicator_right;
leImageWidget* stats_img_white;

static leBool initialized = LE_FALSE;
static leBool showing = LE_FALSE;

leResult screenInit_stats(void)
{
    if(initialized == LE_TRUE)
        return LE_FAILURE;

    initialized = LE_TRUE;

    return LE_SUCCESS;
}

leResult screenShow_stats(void)
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

    stats_RectangleWidget0 = leRectangleWidget_New();
    stats_RectangleWidget0->fn->setPosition(stats_RectangleWidget0, 0, 0);
    stats_RectangleWidget0->fn->setSize(stats_RectangleWidget0, 320, 240);
    stats_RectangleWidget0->fn->setScheme(stats_RectangleWidget0, &grnbch);
    stats_RectangleWidget0->fn->setBorderType(stats_RectangleWidget0, LE_WIDGET_BORDER_NONE);
    stats_RectangleWidget0->fn->setThickness(stats_RectangleWidget0, 2);
    root0->fn->addChild(root0, (leWidget*)stats_RectangleWidget0);

    stats_lbl_total_single = leLabelWidget_New();
    stats_lbl_total_single->fn->setPosition(stats_lbl_total_single, 14, 52);
    stats_lbl_total_single->fn->setSize(stats_lbl_total_single, 148, 40);
    stats_lbl_total_single->fn->setScheme(stats_lbl_total_single, &grnbch);
    stats_lbl_total_single->fn->setHAlignment(stats_lbl_total_single, LE_HALIGN_RIGHT);
    stats_lbl_total_single->fn->setVAlignment(stats_lbl_total_single, LE_VALIGN_TOP);
    stats_lbl_total_single->fn->setMargins(stats_lbl_total_single, 4, 4, 0, 4);
    stats_lbl_total_single->fn->setString(stats_lbl_total_single, (leString*)&string_stats_value_single);
    root0->fn->addChild(root0, (leWidget*)stats_lbl_total_single);

    stats_lbl_total_double = leLabelWidget_New();
    stats_lbl_total_double->fn->setPosition(stats_lbl_total_double, 12, 112);
    stats_lbl_total_double->fn->setSize(stats_lbl_total_double, 148, 40);
    stats_lbl_total_double->fn->setScheme(stats_lbl_total_double, &grnbch);
    stats_lbl_total_double->fn->setHAlignment(stats_lbl_total_double, LE_HALIGN_RIGHT);
    stats_lbl_total_double->fn->setVAlignment(stats_lbl_total_double, LE_VALIGN_TOP);
    stats_lbl_total_double->fn->setMargins(stats_lbl_total_double, 4, 4, 0, 4);
    stats_lbl_total_double->fn->setString(stats_lbl_total_double, (leString*)&string_stats_value_double);
    root0->fn->addChild(root0, (leWidget*)stats_lbl_total_double);

    stats_lbl_total_time = leLabelWidget_New();
    stats_lbl_total_time->fn->setPosition(stats_lbl_total_time, 12, 172);
    stats_lbl_total_time->fn->setSize(stats_lbl_total_time, 148, 40);
    stats_lbl_total_time->fn->setScheme(stats_lbl_total_time, &grnbch);
    stats_lbl_total_time->fn->setHAlignment(stats_lbl_total_time, LE_HALIGN_RIGHT);
    stats_lbl_total_time->fn->setVAlignment(stats_lbl_total_time, LE_VALIGN_TOP);
    stats_lbl_total_time->fn->setMargins(stats_lbl_total_time, 4, 4, 0, 4);
    stats_lbl_total_time->fn->setString(stats_lbl_total_time, (leString*)&string_stats_value_time);
    root0->fn->addChild(root0, (leWidget*)stats_lbl_total_time);

    stats_img_symbol_double = leImageWidget_New();
    stats_img_symbol_double->fn->setPosition(stats_img_symbol_double, 246, 116);
    stats_img_symbol_double->fn->setSize(stats_img_symbol_double, 45, 29);
    stats_img_symbol_double->fn->setScheme(stats_img_symbol_double, &grnbch);
    stats_img_symbol_double->fn->setBorderType(stats_img_symbol_double, LE_WIDGET_BORDER_NONE);
    stats_img_symbol_double->fn->setImage(stats_img_symbol_double, (leImage*)&Symbol_Statistik_Double);
    root0->fn->addChild(root0, (leWidget*)stats_img_symbol_double);

    stats_img_symbol_single = leImageWidget_New();
    stats_img_symbol_single->fn->setPosition(stats_img_symbol_single, 246, 58);
    stats_img_symbol_single->fn->setSize(stats_img_symbol_single, 29, 29);
    stats_img_symbol_single->fn->setScheme(stats_img_symbol_single, &grnbch);
    stats_img_symbol_single->fn->setBorderType(stats_img_symbol_single, LE_WIDGET_BORDER_NONE);
    stats_img_symbol_single->fn->setImage(stats_img_symbol_single, (leImage*)&Symbol_Statistik_Single);
    root0->fn->addChild(root0, (leWidget*)stats_img_symbol_single);

    stats_img_symbol_manual = leImageWidget_New();
    stats_img_symbol_manual->fn->setPosition(stats_img_symbol_manual, 252, 180);
    stats_img_symbol_manual->fn->setSize(stats_img_symbol_manual, 17, 19);
    stats_img_symbol_manual->fn->setScheme(stats_img_symbol_manual, &grnbch);
    stats_img_symbol_manual->fn->setBorderType(stats_img_symbol_manual, LE_WIDGET_BORDER_NONE);
    stats_img_symbol_manual->fn->setImage(stats_img_symbol_manual, (leImage*)&Symbol_Statistik_Manual);
    root0->fn->addChild(root0, (leWidget*)stats_img_symbol_manual);

    stats_img_txt_single_gram = leImageWidget_New();
    stats_img_txt_single_gram->fn->setPosition(stats_img_txt_single_gram, 162, 65);
    stats_img_txt_single_gram->fn->setSize(stats_img_txt_single_gram, 20, 32);
    stats_img_txt_single_gram->fn->setScheme(stats_img_txt_single_gram, &grnbch);
    stats_img_txt_single_gram->fn->setBorderType(stats_img_txt_single_gram, LE_WIDGET_BORDER_NONE);
    stats_img_txt_single_gram->fn->setImage(stats_img_txt_single_gram, (leImage*)&Symbol_Gramm_ws);
    root0->fn->addChild(root0, (leWidget*)stats_img_txt_single_gram);

    stats_img_txt_double_gram = leImageWidget_New();
    stats_img_txt_double_gram->fn->setPosition(stats_img_txt_double_gram, 162, 125);
    stats_img_txt_double_gram->fn->setSize(stats_img_txt_double_gram, 20, 32);
    stats_img_txt_double_gram->fn->setScheme(stats_img_txt_double_gram, &grnbch);
    stats_img_txt_double_gram->fn->setBorderType(stats_img_txt_double_gram, LE_WIDGET_BORDER_NONE);
    stats_img_txt_double_gram->fn->setImage(stats_img_txt_double_gram, (leImage*)&Symbol_Gramm_ws);
    root0->fn->addChild(root0, (leWidget*)stats_img_txt_double_gram);

    stats_img_txt_sekunde = leImageWidget_New();
    stats_img_txt_sekunde->fn->setPosition(stats_img_txt_sekunde, 161, 181);
    stats_img_txt_sekunde->fn->setSize(stats_img_txt_sekunde, 24, 32);
    stats_img_txt_sekunde->fn->setScheme(stats_img_txt_sekunde, &grnbch);
    stats_img_txt_sekunde->fn->setBorderType(stats_img_txt_sekunde, LE_WIDGET_BORDER_NONE);
    stats_img_txt_sekunde->fn->setImage(stats_img_txt_sekunde, (leImage*)&Symbol_Sekunde);
    root0->fn->addChild(root0, (leWidget*)stats_img_txt_sekunde);

    stats_rect_page_indicator_background = leRectangleWidget_New();
    stats_rect_page_indicator_background->fn->setPosition(stats_rect_page_indicator_background, 0, 12);
    stats_rect_page_indicator_background->fn->setSize(stats_rect_page_indicator_background, 320, 16);
    stats_rect_page_indicator_background->fn->setScheme(stats_rect_page_indicator_background, &grnbch);
    stats_rect_page_indicator_background->fn->setBorderType(stats_rect_page_indicator_background, LE_WIDGET_BORDER_NONE);
    stats_rect_page_indicator_background->fn->setMargins(stats_rect_page_indicator_background, 0, 0, 0, 0);
    stats_rect_page_indicator_background->fn->setThickness(stats_rect_page_indicator_background, 2);
    root0->fn->addChild(root0, (leWidget*)stats_rect_page_indicator_background);

    stats_img_page_indicator = leImageWidget_New();
    stats_img_page_indicator->fn->setPosition(stats_img_page_indicator, 140, 14);
    stats_img_page_indicator->fn->setSize(stats_img_page_indicator, 40, 12);
    stats_img_page_indicator->fn->setScheme(stats_img_page_indicator, &grnbch);
    stats_img_page_indicator->fn->setBorderType(stats_img_page_indicator, LE_WIDGET_BORDER_NONE);
    stats_img_page_indicator->fn->setMargins(stats_img_page_indicator, 0, 0, 0, 0);
    stats_img_page_indicator->fn->setImage(stats_img_page_indicator, (leImage*)&Symbol_Seite_Statistik);
    root0->fn->addChild(root0, (leWidget*)stats_img_page_indicator);

    stats_img_page_indicator_right = leImageWidget_New();
    stats_img_page_indicator_right->fn->setPosition(stats_img_page_indicator_right, 320, 14);
    stats_img_page_indicator_right->fn->setSize(stats_img_page_indicator_right, 40, 12);
    stats_img_page_indicator_right->fn->setScheme(stats_img_page_indicator_right, &grnbch);
    stats_img_page_indicator_right->fn->setBorderType(stats_img_page_indicator_right, LE_WIDGET_BORDER_NONE);
    stats_img_page_indicator_right->fn->setImage(stats_img_page_indicator_right, (leImage*)&Symbol_Seite_Manual_right);
    root0->fn->addChild(root0, (leWidget*)stats_img_page_indicator_right);

    stats_img_white = leImageWidget_New();
    stats_img_white->fn->setPosition(stats_img_white, 320, 0);
    stats_img_white->fn->setSize(stats_img_white, 320, 240);
    stats_img_white->fn->setScheme(stats_img_white, &calib_panel);
    stats_img_white->fn->setBorderType(stats_img_white, LE_WIDGET_BORDER_NONE);
    stats_img_white->fn->setImage(stats_img_white, (leImage*)&bitmap_white);
    root0->fn->addChild(root0, (leWidget*)stats_img_white);

    leAddRootWidget(root0, 0);
    leSetLayerColorMode(0, LE_COLOR_MODE_RGB_565);

    stats_OnShow(); // raise event

    showing = LE_TRUE;

    return LE_SUCCESS;
}

void screenUpdate_stats(void)
{
    root0->fn->setSize(root0, root0->rect.width, root0->rect.height);
}

void screenHide_stats(void)
{
    stats_OnHide(); // raise event


    leRemoveRootWidget(root0, 0);
    leWidget_Delete(root0);
    root0 = NULL;

    stats_RectangleWidget0 = NULL;
    stats_lbl_total_single = NULL;
    stats_lbl_total_double = NULL;
    stats_lbl_total_time = NULL;
    stats_img_symbol_double = NULL;
    stats_img_symbol_single = NULL;
    stats_img_symbol_manual = NULL;
    stats_img_txt_single_gram = NULL;
    stats_img_txt_double_gram = NULL;
    stats_img_txt_sekunde = NULL;
    stats_rect_page_indicator_background = NULL;
    stats_img_page_indicator = NULL;
    stats_img_page_indicator_right = NULL;
    stats_img_white = NULL;


    showing = LE_FALSE;
}

void screenDestroy_stats(void)
{
    if(initialized == LE_FALSE)
        return;

    initialized = LE_FALSE;
}

leWidget* screenGetRoot_stats(uint32_t lyrIdx)
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

