#ifndef LE_GEN_SCREEN_MANUAL_H
#define LE_GEN_SCREEN_MANUAL_H

#include "gfx/legato/legato.h"

#include "gfx/legato/generated/le_gen_scheme.h"
#include "gfx/legato/generated/le_gen_assets.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility
extern "C" {
#endif
// DOM-IGNORE-END

// screen member widget declarations
extern leWidget* manual_PanelWidget0;
extern leImageWidget* manual_img_symbol_manual;
extern leImageWidget* manual_img_txt_stop;
extern leImageWidget* manual_img_txt_start;
extern leButtonWidget* manual_btn_start_stop;
extern leButtonWidget* manual_btn_manual;
extern leLabelWidget* manual_lbl_countdown;
extern leListWheelWidget* manual_lww_countdown;
extern leImageWidget* manual_img_txt_sekunde;
extern leRectangleWidget* manual_rect_hide_top;
extern leRectangleWidget* manual_rect_hide_bottom;
extern leRectangleWidget* manual_rect_page_indicator_background;
extern leImageWidget* manual_img_page_indicator;
extern leImageWidget* manual_img_page_indicator_right;

// event handlers
// !!THESE MUST BE IMPLEMENTED IN THE APPLICATION CODE!!
void event_manual_btn_start_stop_OnPressed(leButtonWidget* btn);
void event_manual_btn_start_stop_OnReleased(leButtonWidget* btn);
void event_manual_btn_manual_OnPressed(leButtonWidget* btn);
void event_manual_btn_manual_OnReleased(leButtonWidget* btn);
void event_manual_lww_countdown_OnSelectionChanged(leListWheelWidget* wgt, int32_t idx);

// screen lifecycle functions
// DO NOT CALL THESE DIRECTLY
leResult screenInit_manual(void); // called when Legato is initialized
leResult screenShow_manual(void); // called when screen is shown
void screenHide_manual(void); // called when screen is hidden
void screenDestroy_manual(void); // called when Legato is destroyed
void screenUpdate_manual(void); // called when Legato is updating

leWidget* screenGetRoot_manual(uint32_t lyrIdx); // gets a root widget for this screen

// Screen Events:
void manual_OnShow(void); // called when this screen is shown
void manual_OnHide(void); // called when this screen is hidden

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif // LE_GEN_SCREEN_MANUAL_H
