#ifndef LE_GEN_SCREEN_STATS_H
#define LE_GEN_SCREEN_STATS_H

#include "gfx/legato/legato.h"

#include "gfx/legato/generated/le_gen_scheme.h"
#include "gfx/legato/generated/le_gen_assets.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility
extern "C" {
#endif
// DOM-IGNORE-END

// screen member widget declarations
extern leRectangleWidget* stats_RectangleWidget0;
extern leLabelWidget* stats_lbl_total_single;
extern leLabelWidget* stats_lbl_total_double;
extern leLabelWidget* stats_lbl_total_time;
extern leImageWidget* stats_img_symbol_double;
extern leImageWidget* stats_img_symbol_single;
extern leImageWidget* stats_img_symbol_manual;
extern leImageWidget* stats_img_txt_single_gram;
extern leImageWidget* stats_img_txt_double_gram;
extern leImageWidget* stats_img_txt_sekunde;
extern leRectangleWidget* stats_rect_page_indicator_background;
extern leImageWidget* stats_img_page_indicator;
extern leImageWidget* stats_img_page_indicator_right;
extern leImageWidget* stats_img_white;

// screen lifecycle functions
// DO NOT CALL THESE DIRECTLY
leResult screenInit_stats(void); // called when Legato is initialized
leResult screenShow_stats(void); // called when screen is shown
void screenHide_stats(void); // called when screen is hidden
void screenDestroy_stats(void); // called when Legato is destroyed
void screenUpdate_stats(void); // called when Legato is updating

leWidget* screenGetRoot_stats(uint32_t lyrIdx); // gets a root widget for this screen

// Screen Events:
void stats_OnShow(void); // called when this screen is shown
void stats_OnHide(void); // called when this screen is hidden

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif // LE_GEN_SCREEN_STATS_H
