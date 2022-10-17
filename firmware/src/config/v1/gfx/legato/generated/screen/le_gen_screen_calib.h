#ifndef LE_GEN_SCREEN_CALIB_H
#define LE_GEN_SCREEN_CALIB_H

#include "gfx/legato/legato.h"

#include "gfx/legato/generated/le_gen_scheme.h"
#include "gfx/legato/generated/le_gen_assets.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility
extern "C" {
#endif
// DOM-IGNORE-END

// screen member widget declarations
extern leWidget* calib_Panel_0;
extern leImageWidget* calib_img_txt_cal;
extern leImageWidget* calib_img_txt_unit_g;
extern leLabelWidget* calib_lbl_weight_none;
extern leImageWidget* calib_img_by_powder;
extern leImageWidget* calib_img_by_weight;
extern leImageWidget* calib_img_txt_start;
extern leButtonWidget* calib_btn_start_ok;
extern leButtonWidget* calib_btn_calib_mode;
extern leRectangleWidget* calib_rect_page_indicator_background;
extern leImageWidget* calib_img_page_indicator;

// event handlers
// !!THESE MUST BE IMPLEMENTED IN THE APPLICATION CODE!!
void event_calib_btn_start_ok_OnReleased(leButtonWidget* btn);
void event_calib_btn_calib_mode_OnReleased(leButtonWidget* btn);

// screen lifecycle functions
// DO NOT CALL THESE DIRECTLY
leResult screenInit_calib(void); // called when Legato is initialized
leResult screenShow_calib(void); // called when screen is shown
void screenHide_calib(void); // called when screen is hidden
void screenDestroy_calib(void); // called when Legato is destroyed
void screenUpdate_calib(void); // called when Legato is updating

leWidget* screenGetRoot_calib(uint32_t lyrIdx); // gets a root widget for this screen

// Screen Events:
void calib_OnShow(void); // called when this screen is shown
void calib_OnHide(void); // called when this screen is hidden

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif // LE_GEN_SCREEN_CALIB_H
