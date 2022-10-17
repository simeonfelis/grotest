#ifndef LE_GEN_SCREEN_GBW_H
#define LE_GEN_SCREEN_GBW_H

#include "gfx/legato/legato.h"

#include "gfx/legato/generated/le_gen_scheme.h"
#include "gfx/legato/generated/le_gen_assets.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility
extern "C" {
#endif
// DOM-IGNORE-END

// screen member widget declarations
extern leRectangleWidget* gbw_RectangleWidget2;
extern leImageWidget* gbw_img_txt_err;
extern leLabelWidget* gbw_lbl_weight;
extern leListWheelWidget* gbw_lww_gram;
extern leImageWidget* gbw_img_cup_single;
extern leImageWidget* gbw_img_cup_double;
extern leButtonWidget* gbw_btn_mode;
extern leImageWidget* gbw_img_symbol_sum;
extern leRectangleWidget* gbw_rect_hide_top;
extern leRectangleWidget* gbw_rect_hide_bottom;
extern leImageWidget* gbw_img_symbol_gram;

// event handlers
// !!THESE MUST BE IMPLEMENTED IN THE APPLICATION CODE!!
void event_gbw_lww_gram_OnSelectionChanged(leListWheelWidget* wgt, int32_t idx);
void event_gbw_btn_mode_OnPressed(leButtonWidget* btn);
void event_gbw_btn_mode_OnReleased(leButtonWidget* btn);

// screen lifecycle functions
// DO NOT CALL THESE DIRECTLY
leResult screenInit_gbw(void); // called when Legato is initialized
leResult screenShow_gbw(void); // called when screen is shown
void screenHide_gbw(void); // called when screen is hidden
void screenDestroy_gbw(void); // called when Legato is destroyed
void screenUpdate_gbw(void); // called when Legato is updating

leWidget* screenGetRoot_gbw(uint32_t lyrIdx); // gets a root widget for this screen

// Screen Events:
void gbw_OnShow(void); // called when this screen is shown
void gbw_OnHide(void); // called when this screen is hidden

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif // LE_GEN_SCREEN_GBW_H
