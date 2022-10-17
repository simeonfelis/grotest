#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-v1.mk)" "nbproject/Makefile-local-v1.mk"
include nbproject/Makefile-local-v1.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=v1
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/grotest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/grotest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/v1/driver/spi/src/drv_spi.c ../src/config/v1/gfx/driver/gfx_driver.c ../src/config/v1/gfx/driver/controller/external_controller/drv_gfx_external_controller.c ../src/config/v1/gfx/interface/spi4/drv_gfx_disp_intf_spi4.c ../src/config/v1/gfx/legato/common/legato_color.c ../src/config/v1/gfx/legato/common/legato_color_blend.c ../src/config/v1/gfx/legato/common/legato_color_convert.c ../src/config/v1/gfx/legato/common/legato_color_lerp.c ../src/config/v1/gfx/legato/common/legato_color_value.c ../src/config/v1/gfx/legato/common/legato_error.c ../src/config/v1/gfx/legato/common/legato_math.c ../src/config/v1/gfx/legato/common/legato_pixelbuffer.c ../src/config/v1/gfx/legato/common/legato_rect.c ../src/config/v1/gfx/legato/common/legato_utils.c ../src/config/v1/gfx/legato/core/legato_event.c ../src/config/v1/gfx/legato/core/legato_input.c ../src/config/v1/gfx/legato/core/legato_scheme.c ../src/config/v1/gfx/legato/core/legato_state.c ../src/config/v1/gfx/legato/core/legato_stream.c ../src/config/v1/gfx/legato/datastructure/legato_array.c ../src/config/v1/gfx/legato/datastructure/legato_list.c ../src/config/v1/gfx/legato/datastructure/legato_rectarray.c ../src/config/v1/gfx/legato/font/legato_font.c ../src/config/v1/gfx/legato/font/legato_rasterfont_liberationmono1.c ../src/config/v1/gfx/legato/font/legato_rasterfont_liberationmono8.c ../src/config/v1/gfx/legato/font/legato_rasterfont_stream.c ../src/config/v1/gfx/legato/generated/font/le_gen_fonts.c ../src/config/v1/gfx/legato/generated/image/le_gen_images.c ../src/config/v1/gfx/legato/generated/screen/le_gen_screen_Screen0.c ../src/config/v1/gfx/legato/generated/le_gen_globalpalette.c ../src/config/v1/gfx/legato/generated/le_gen_harmony.c ../src/config/v1/gfx/legato/generated/le_gen_init.c ../src/config/v1/gfx/legato/generated/le_gen_stringtable.c ../src/config/v1/gfx/legato/generated/le_gen_scheme.c ../src/config/v1/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c ../src/config/v1/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c ../src/config/v1/gfx/legato/image/jpeg/jidctint.c ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono.c ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c ../src/config/v1/gfx/legato/image/png/legato_imagedecoder_png.c ../src/config/v1/gfx/legato/image/png/lodepng.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_write.c ../src/config/v1/gfx/legato/image/legato_image.c ../src/config/v1/gfx/legato/image/legato_palette.c ../src/config/v1/gfx/legato/image/legato_image_utils.c ../src/config/v1/gfx/legato/memory/legato_fixedheap.c ../src/config/v1/gfx/legato/memory/legato_memory.c ../src/config/v1/gfx/legato/memory/legato_variableheap.c ../src/config/v1/gfx/legato/renderer/legato_draw.c ../src/config/v1/gfx/legato/renderer/legato_draw_arc.c ../src/config/v1/gfx/legato/renderer/legato_draw_line.c ../src/config/v1/gfx/legato/renderer/legato_draw_rect.c ../src/config/v1/gfx/legato/renderer/legato_renderer.c ../src/config/v1/gfx/legato/renderer/legato_gpu.c ../src/config/v1/gfx/legato/string/legato_dynamicstring.c ../src/config/v1/gfx/legato/string/legato_fixedstring.c ../src/config/v1/gfx/legato/string/legato_string.c ../src/config/v1/gfx/legato/string/legato_string_renderer.c ../src/config/v1/gfx/legato/string/legato_string_renderer_stream.c ../src/config/v1/gfx/legato/string/legato_stringtable.c ../src/config/v1/gfx/legato/string/legato_tablestring.c ../src/config/v1/gfx/legato/string/legato_stringutils.c ../src/config/v1/gfx/legato/widget/arc/legato_widget_arc.c ../src/config/v1/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c ../src/config/v1/gfx/legato/widget/bargraph/legato_widget_bar_graph.c ../src/config/v1/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c ../src/config/v1/gfx/legato/widget/button/legato_widget_button.c ../src/config/v1/gfx/legato/widget/button/legato_widget_button_skin_classic.c ../src/config/v1/gfx/legato/widget/checkbox/legato_widget_checkbox.c ../src/config/v1/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c ../src/config/v1/gfx/legato/widget/circle/legato_widget_circle.c ../src/config/v1/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c ../src/config/v1/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c ../src/config/v1/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c ../src/config/v1/gfx/legato/widget/circularslider/legato_widget_circular_slider.c ../src/config/v1/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c ../src/config/v1/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c ../src/config/v1/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c ../src/config/v1/gfx/legato/widget/gradient/legato_widget_gradient.c ../src/config/v1/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c ../src/config/v1/gfx/legato/widget/groupbox/legato_widget_groupbox.c ../src/config/v1/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c ../src/config/v1/gfx/legato/widget/image/legato_widget_image.c ../src/config/v1/gfx/legato/widget/image/legato_widget_image_skin_classic.c ../src/config/v1/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c ../src/config/v1/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c ../src/config/v1/gfx/legato/widget/imagescale/legato_widget_imagescale.c ../src/config/v1/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c ../src/config/v1/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c ../src/config/v1/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c ../src/config/v1/gfx/legato/widget/keypad/legato_widget_keypad.c ../src/config/v1/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c ../src/config/v1/gfx/legato/widget/label/legato_widget_label.c ../src/config/v1/gfx/legato/widget/label/legato_widget_label_skin_classic.c ../src/config/v1/gfx/legato/widget/line/legato_widget_line.c ../src/config/v1/gfx/legato/widget/line/legato_widget_line_skin_classic.c ../src/config/v1/gfx/legato/widget/linegraph/legato_widget_line_graph.c ../src/config/v1/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c ../src/config/v1/gfx/legato/widget/list/legato_widget_list.c ../src/config/v1/gfx/legato/widget/list/legato_widget_list_skin_classic.c ../src/config/v1/gfx/legato/widget/listwheel/legato_widget_listwheel.c ../src/config/v1/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c ../src/config/v1/gfx/legato/widget/piechart/legato_widget_pie_chart.c ../src/config/v1/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c ../src/config/v1/gfx/legato/widget/progressbar/legato_widget_progressbar.c ../src/config/v1/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c ../src/config/v1/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c ../src/config/v1/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c ../src/config/v1/gfx/legato/widget/radiobutton/legato_radiobutton_group.c ../src/config/v1/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c ../src/config/v1/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c ../src/config/v1/gfx/legato/widget/rectangle/legato_widget_rectangle.c ../src/config/v1/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c ../src/config/v1/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c ../src/config/v1/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c ../src/config/v1/gfx/legato/widget/slider/legato_widget_slider.c ../src/config/v1/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c ../src/config/v1/gfx/legato/widget/textfield/legato_widget_textfield.c ../src/config/v1/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c ../src/config/v1/gfx/legato/widget/touchtest/legato_widget_touchtest.c ../src/config/v1/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c ../src/config/v1/gfx/legato/widget/window/legato_widget_window.c ../src/config/v1/gfx/legato/widget/window/legato_widget_window_skin_classic.c ../src/config/v1/gfx/legato/widget/legato_editwidget.c ../src/config/v1/gfx/legato/widget/legato_widget.c ../src/config/v1/gfx/legato/widget/legato_widget_skin_classic.c ../src/config/v1/gfx/legato/widget/legato_widget_skin_classic_common.c ../src/config/v1/peripheral/clock/plib_clock.c ../src/config/v1/peripheral/cmcc/plib_cmcc.c ../src/config/v1/peripheral/dmac/plib_dmac.c ../src/config/v1/peripheral/evsys/plib_evsys.c ../src/config/v1/peripheral/nvic/plib_nvic.c ../src/config/v1/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/v1/peripheral/port/plib_port.c ../src/config/v1/peripheral/sercom/spi_master/plib_sercom1_spi_master.c ../src/config/v1/peripheral/tc/plib_tc0.c ../src/config/v1/peripheral/tc/plib_tc1.c ../src/config/v1/peripheral/tc/plib_tc2.c ../src/config/v1/stdio/xc32_monitor.c ../src/config/v1/system/cache/sys_cache.c ../src/config/v1/system/dma/sys_dma.c ../src/config/v1/system/input/sys_input.c ../src/config/v1/system/input/sys_input_listener.c ../src/config/v1/system/int/src/sys_int.c ../src/config/v1/system/time/src/sys_time.c ../src/config/v1/initialization.c ../src/config/v1/interrupts.c ../src/config/v1/exceptions.c ../src/config/v1/startup_xc32.c ../src/config/v1/libc_syscalls.c ../src/config/v1/tasks.c ../src/main.c ../src/app.c ../src/config/v1/gfx/legato/generated/screen/le_gen_screen_Screen1.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2019496869/drv_spi.o ${OBJECTDIR}/_ext/786113599/gfx_driver.o ${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o ${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o ${OBJECTDIR}/_ext/1772391765/legato_color.o ${OBJECTDIR}/_ext/1772391765/legato_color_blend.o ${OBJECTDIR}/_ext/1772391765/legato_color_convert.o ${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o ${OBJECTDIR}/_ext/1772391765/legato_color_value.o ${OBJECTDIR}/_ext/1772391765/legato_error.o ${OBJECTDIR}/_ext/1772391765/legato_math.o ${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o ${OBJECTDIR}/_ext/1772391765/legato_rect.o ${OBJECTDIR}/_ext/1772391765/legato_utils.o ${OBJECTDIR}/_ext/1686758793/legato_event.o ${OBJECTDIR}/_ext/1686758793/legato_input.o ${OBJECTDIR}/_ext/1686758793/legato_scheme.o ${OBJECTDIR}/_ext/1686758793/legato_state.o ${OBJECTDIR}/_ext/1686758793/legato_stream.o ${OBJECTDIR}/_ext/148763041/legato_array.o ${OBJECTDIR}/_ext/148763041/legato_list.o ${OBJECTDIR}/_ext/148763041/legato_rectarray.o ${OBJECTDIR}/_ext/1686848057/legato_font.o ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o ${OBJECTDIR}/_ext/66011591/le_gen_fonts.o ${OBJECTDIR}/_ext/2043661135/le_gen_images.o ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o ${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o ${OBJECTDIR}/_ext/767985125/le_gen_harmony.o ${OBJECTDIR}/_ext/767985125/le_gen_init.o ${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o ${OBJECTDIR}/_ext/767985125/le_gen_scheme.o ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o ${OBJECTDIR}/_ext/539608838/jidctint.o ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o ${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o ${OBJECTDIR}/_ext/398229557/lodepng.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o ${OBJECTDIR}/_ext/755380401/legato_image.o ${OBJECTDIR}/_ext/755380401/legato_palette.o ${OBJECTDIR}/_ext/755380401/legato_image_utils.o ${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o ${OBJECTDIR}/_ext/2049450091/legato_memory.o ${OBJECTDIR}/_ext/2049450091/legato_variableheap.o ${OBJECTDIR}/_ext/1726254675/legato_draw.o ${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o ${OBJECTDIR}/_ext/1726254675/legato_draw_line.o ${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o ${OBJECTDIR}/_ext/1726254675/legato_renderer.o ${OBJECTDIR}/_ext/1726254675/legato_gpu.o ${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o ${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o ${OBJECTDIR}/_ext/2059746437/legato_string.o ${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o ${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o ${OBJECTDIR}/_ext/2059746437/legato_stringtable.o ${OBJECTDIR}/_ext/2059746437/legato_tablestring.o ${OBJECTDIR}/_ext/2059746437/legato_stringutils.o ${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o ${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o ${OBJECTDIR}/_ext/1080568499/legato_widget_button.o ${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o ${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o ${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o ${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o ${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o ${OBJECTDIR}/_ext/1898597958/legato_widget_image.o ${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o ${OBJECTDIR}/_ext/1896183981/legato_widget_label.o ${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o ${OBJECTDIR}/_ext/1739956149/legato_widget_line.o ${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o ${OBJECTDIR}/_ext/1739956319/legato_widget_list.o ${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o ${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o ${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o ${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o ${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o ${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o ${OBJECTDIR}/_ext/1670504305/legato_widget_window.o ${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o ${OBJECTDIR}/_ext/1955807826/legato_editwidget.o ${OBJECTDIR}/_ext/1955807826/legato_widget.o ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o ${OBJECTDIR}/_ext/126375492/plib_clock.o ${OBJECTDIR}/_ext/835360036/plib_cmcc.o ${OBJECTDIR}/_ext/835330307/plib_dmac.o ${OBJECTDIR}/_ext/124226006/plib_evsys.o ${OBJECTDIR}/_ext/835023500/plib_nvic.o ${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o ${OBJECTDIR}/_ext/834970349/plib_port.o ${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o ${OBJECTDIR}/_ext/273494143/plib_tc0.o ${OBJECTDIR}/_ext/273494143/plib_tc1.o ${OBJECTDIR}/_ext/273494143/plib_tc2.o ${OBJECTDIR}/_ext/1496238808/xc32_monitor.o ${OBJECTDIR}/_ext/2051932195/sys_cache.o ${OBJECTDIR}/_ext/547583527/sys_dma.o ${OBJECTDIR}/_ext/2057873515/sys_input.o ${OBJECTDIR}/_ext/2057873515/sys_input_listener.o ${OBJECTDIR}/_ext/1933103141/sys_int.o ${OBJECTDIR}/_ext/1492590433/sys_time.o ${OBJECTDIR}/_ext/179581970/initialization.o ${OBJECTDIR}/_ext/179581970/interrupts.o ${OBJECTDIR}/_ext/179581970/exceptions.o ${OBJECTDIR}/_ext/179581970/startup_xc32.o ${OBJECTDIR}/_ext/179581970/libc_syscalls.o ${OBJECTDIR}/_ext/179581970/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2019496869/drv_spi.o.d ${OBJECTDIR}/_ext/786113599/gfx_driver.o.d ${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o.d ${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o.d ${OBJECTDIR}/_ext/1772391765/legato_color.o.d ${OBJECTDIR}/_ext/1772391765/legato_color_blend.o.d ${OBJECTDIR}/_ext/1772391765/legato_color_convert.o.d ${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o.d ${OBJECTDIR}/_ext/1772391765/legato_color_value.o.d ${OBJECTDIR}/_ext/1772391765/legato_error.o.d ${OBJECTDIR}/_ext/1772391765/legato_math.o.d ${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o.d ${OBJECTDIR}/_ext/1772391765/legato_rect.o.d ${OBJECTDIR}/_ext/1772391765/legato_utils.o.d ${OBJECTDIR}/_ext/1686758793/legato_event.o.d ${OBJECTDIR}/_ext/1686758793/legato_input.o.d ${OBJECTDIR}/_ext/1686758793/legato_scheme.o.d ${OBJECTDIR}/_ext/1686758793/legato_state.o.d ${OBJECTDIR}/_ext/1686758793/legato_stream.o.d ${OBJECTDIR}/_ext/148763041/legato_array.o.d ${OBJECTDIR}/_ext/148763041/legato_list.o.d ${OBJECTDIR}/_ext/148763041/legato_rectarray.o.d ${OBJECTDIR}/_ext/1686848057/legato_font.o.d ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o.d ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o.d ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o.d ${OBJECTDIR}/_ext/66011591/le_gen_fonts.o.d ${OBJECTDIR}/_ext/2043661135/le_gen_images.o.d ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o.d ${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o.d ${OBJECTDIR}/_ext/767985125/le_gen_harmony.o.d ${OBJECTDIR}/_ext/767985125/le_gen_init.o.d ${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o.d ${OBJECTDIR}/_ext/767985125/le_gen_scheme.o.d ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o.d ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o.d ${OBJECTDIR}/_ext/539608838/jidctint.o.d ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o.d ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o.d ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o.d ${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o.d ${OBJECTDIR}/_ext/398229557/lodepng.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o.d ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o.d ${OBJECTDIR}/_ext/755380401/legato_image.o.d ${OBJECTDIR}/_ext/755380401/legato_palette.o.d ${OBJECTDIR}/_ext/755380401/legato_image_utils.o.d ${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o.d ${OBJECTDIR}/_ext/2049450091/legato_memory.o.d ${OBJECTDIR}/_ext/2049450091/legato_variableheap.o.d ${OBJECTDIR}/_ext/1726254675/legato_draw.o.d ${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o.d ${OBJECTDIR}/_ext/1726254675/legato_draw_line.o.d ${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o.d ${OBJECTDIR}/_ext/1726254675/legato_renderer.o.d ${OBJECTDIR}/_ext/1726254675/legato_gpu.o.d ${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o.d ${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o.d ${OBJECTDIR}/_ext/2059746437/legato_string.o.d ${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o.d ${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o.d ${OBJECTDIR}/_ext/2059746437/legato_stringtable.o.d ${OBJECTDIR}/_ext/2059746437/legato_tablestring.o.d ${OBJECTDIR}/_ext/2059746437/legato_stringutils.o.d ${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o.d ${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o.d ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o.d ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o.d ${OBJECTDIR}/_ext/1080568499/legato_widget_button.o.d ${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o.d ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o.d ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o.d ${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o.d ${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o.d ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o.d ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o.d ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o.d ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o.d ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o.d ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o.d ${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o.d ${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o.d ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o.d ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o.d ${OBJECTDIR}/_ext/1898597958/legato_widget_image.o.d ${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o.d ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o.d ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o.d ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o.d ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o.d ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o.d ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o.d ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o.d ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o.d ${OBJECTDIR}/_ext/1896183981/legato_widget_label.o.d ${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o.d ${OBJECTDIR}/_ext/1739956149/legato_widget_line.o.d ${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o.d ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o.d ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o.d ${OBJECTDIR}/_ext/1739956319/legato_widget_list.o.d ${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o.d ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o.d ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o.d ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o.d ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o.d ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o.d ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o.d ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o.d ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o.d ${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o.d ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o.d ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o.d ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o.d ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o.d ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o.d ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o.d ${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o.d ${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o.d ${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o.d ${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o.d ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o.d ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o.d ${OBJECTDIR}/_ext/1670504305/legato_widget_window.o.d ${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o.d ${OBJECTDIR}/_ext/1955807826/legato_editwidget.o.d ${OBJECTDIR}/_ext/1955807826/legato_widget.o.d ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o.d ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o.d ${OBJECTDIR}/_ext/126375492/plib_clock.o.d ${OBJECTDIR}/_ext/835360036/plib_cmcc.o.d ${OBJECTDIR}/_ext/835330307/plib_dmac.o.d ${OBJECTDIR}/_ext/124226006/plib_evsys.o.d ${OBJECTDIR}/_ext/835023500/plib_nvic.o.d ${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/834970349/plib_port.o.d ${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o.d ${OBJECTDIR}/_ext/273494143/plib_tc0.o.d ${OBJECTDIR}/_ext/273494143/plib_tc1.o.d ${OBJECTDIR}/_ext/273494143/plib_tc2.o.d ${OBJECTDIR}/_ext/1496238808/xc32_monitor.o.d ${OBJECTDIR}/_ext/2051932195/sys_cache.o.d ${OBJECTDIR}/_ext/547583527/sys_dma.o.d ${OBJECTDIR}/_ext/2057873515/sys_input.o.d ${OBJECTDIR}/_ext/2057873515/sys_input_listener.o.d ${OBJECTDIR}/_ext/1933103141/sys_int.o.d ${OBJECTDIR}/_ext/1492590433/sys_time.o.d ${OBJECTDIR}/_ext/179581970/initialization.o.d ${OBJECTDIR}/_ext/179581970/interrupts.o.d ${OBJECTDIR}/_ext/179581970/exceptions.o.d ${OBJECTDIR}/_ext/179581970/startup_xc32.o.d ${OBJECTDIR}/_ext/179581970/libc_syscalls.o.d ${OBJECTDIR}/_ext/179581970/tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2019496869/drv_spi.o ${OBJECTDIR}/_ext/786113599/gfx_driver.o ${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o ${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o ${OBJECTDIR}/_ext/1772391765/legato_color.o ${OBJECTDIR}/_ext/1772391765/legato_color_blend.o ${OBJECTDIR}/_ext/1772391765/legato_color_convert.o ${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o ${OBJECTDIR}/_ext/1772391765/legato_color_value.o ${OBJECTDIR}/_ext/1772391765/legato_error.o ${OBJECTDIR}/_ext/1772391765/legato_math.o ${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o ${OBJECTDIR}/_ext/1772391765/legato_rect.o ${OBJECTDIR}/_ext/1772391765/legato_utils.o ${OBJECTDIR}/_ext/1686758793/legato_event.o ${OBJECTDIR}/_ext/1686758793/legato_input.o ${OBJECTDIR}/_ext/1686758793/legato_scheme.o ${OBJECTDIR}/_ext/1686758793/legato_state.o ${OBJECTDIR}/_ext/1686758793/legato_stream.o ${OBJECTDIR}/_ext/148763041/legato_array.o ${OBJECTDIR}/_ext/148763041/legato_list.o ${OBJECTDIR}/_ext/148763041/legato_rectarray.o ${OBJECTDIR}/_ext/1686848057/legato_font.o ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o ${OBJECTDIR}/_ext/66011591/le_gen_fonts.o ${OBJECTDIR}/_ext/2043661135/le_gen_images.o ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o ${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o ${OBJECTDIR}/_ext/767985125/le_gen_harmony.o ${OBJECTDIR}/_ext/767985125/le_gen_init.o ${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o ${OBJECTDIR}/_ext/767985125/le_gen_scheme.o ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o ${OBJECTDIR}/_ext/539608838/jidctint.o ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o ${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o ${OBJECTDIR}/_ext/398229557/lodepng.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o ${OBJECTDIR}/_ext/755380401/legato_image.o ${OBJECTDIR}/_ext/755380401/legato_palette.o ${OBJECTDIR}/_ext/755380401/legato_image_utils.o ${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o ${OBJECTDIR}/_ext/2049450091/legato_memory.o ${OBJECTDIR}/_ext/2049450091/legato_variableheap.o ${OBJECTDIR}/_ext/1726254675/legato_draw.o ${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o ${OBJECTDIR}/_ext/1726254675/legato_draw_line.o ${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o ${OBJECTDIR}/_ext/1726254675/legato_renderer.o ${OBJECTDIR}/_ext/1726254675/legato_gpu.o ${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o ${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o ${OBJECTDIR}/_ext/2059746437/legato_string.o ${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o ${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o ${OBJECTDIR}/_ext/2059746437/legato_stringtable.o ${OBJECTDIR}/_ext/2059746437/legato_tablestring.o ${OBJECTDIR}/_ext/2059746437/legato_stringutils.o ${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o ${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o ${OBJECTDIR}/_ext/1080568499/legato_widget_button.o ${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o ${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o ${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o ${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o ${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o ${OBJECTDIR}/_ext/1898597958/legato_widget_image.o ${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o ${OBJECTDIR}/_ext/1896183981/legato_widget_label.o ${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o ${OBJECTDIR}/_ext/1739956149/legato_widget_line.o ${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o ${OBJECTDIR}/_ext/1739956319/legato_widget_list.o ${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o ${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o ${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o ${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o ${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o ${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o ${OBJECTDIR}/_ext/1670504305/legato_widget_window.o ${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o ${OBJECTDIR}/_ext/1955807826/legato_editwidget.o ${OBJECTDIR}/_ext/1955807826/legato_widget.o ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o ${OBJECTDIR}/_ext/126375492/plib_clock.o ${OBJECTDIR}/_ext/835360036/plib_cmcc.o ${OBJECTDIR}/_ext/835330307/plib_dmac.o ${OBJECTDIR}/_ext/124226006/plib_evsys.o ${OBJECTDIR}/_ext/835023500/plib_nvic.o ${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o ${OBJECTDIR}/_ext/834970349/plib_port.o ${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o ${OBJECTDIR}/_ext/273494143/plib_tc0.o ${OBJECTDIR}/_ext/273494143/plib_tc1.o ${OBJECTDIR}/_ext/273494143/plib_tc2.o ${OBJECTDIR}/_ext/1496238808/xc32_monitor.o ${OBJECTDIR}/_ext/2051932195/sys_cache.o ${OBJECTDIR}/_ext/547583527/sys_dma.o ${OBJECTDIR}/_ext/2057873515/sys_input.o ${OBJECTDIR}/_ext/2057873515/sys_input_listener.o ${OBJECTDIR}/_ext/1933103141/sys_int.o ${OBJECTDIR}/_ext/1492590433/sys_time.o ${OBJECTDIR}/_ext/179581970/initialization.o ${OBJECTDIR}/_ext/179581970/interrupts.o ${OBJECTDIR}/_ext/179581970/exceptions.o ${OBJECTDIR}/_ext/179581970/startup_xc32.o ${OBJECTDIR}/_ext/179581970/libc_syscalls.o ${OBJECTDIR}/_ext/179581970/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o

# Source Files
SOURCEFILES=../src/config/v1/driver/spi/src/drv_spi.c ../src/config/v1/gfx/driver/gfx_driver.c ../src/config/v1/gfx/driver/controller/external_controller/drv_gfx_external_controller.c ../src/config/v1/gfx/interface/spi4/drv_gfx_disp_intf_spi4.c ../src/config/v1/gfx/legato/common/legato_color.c ../src/config/v1/gfx/legato/common/legato_color_blend.c ../src/config/v1/gfx/legato/common/legato_color_convert.c ../src/config/v1/gfx/legato/common/legato_color_lerp.c ../src/config/v1/gfx/legato/common/legato_color_value.c ../src/config/v1/gfx/legato/common/legato_error.c ../src/config/v1/gfx/legato/common/legato_math.c ../src/config/v1/gfx/legato/common/legato_pixelbuffer.c ../src/config/v1/gfx/legato/common/legato_rect.c ../src/config/v1/gfx/legato/common/legato_utils.c ../src/config/v1/gfx/legato/core/legato_event.c ../src/config/v1/gfx/legato/core/legato_input.c ../src/config/v1/gfx/legato/core/legato_scheme.c ../src/config/v1/gfx/legato/core/legato_state.c ../src/config/v1/gfx/legato/core/legato_stream.c ../src/config/v1/gfx/legato/datastructure/legato_array.c ../src/config/v1/gfx/legato/datastructure/legato_list.c ../src/config/v1/gfx/legato/datastructure/legato_rectarray.c ../src/config/v1/gfx/legato/font/legato_font.c ../src/config/v1/gfx/legato/font/legato_rasterfont_liberationmono1.c ../src/config/v1/gfx/legato/font/legato_rasterfont_liberationmono8.c ../src/config/v1/gfx/legato/font/legato_rasterfont_stream.c ../src/config/v1/gfx/legato/generated/font/le_gen_fonts.c ../src/config/v1/gfx/legato/generated/image/le_gen_images.c ../src/config/v1/gfx/legato/generated/screen/le_gen_screen_Screen0.c ../src/config/v1/gfx/legato/generated/le_gen_globalpalette.c ../src/config/v1/gfx/legato/generated/le_gen_harmony.c ../src/config/v1/gfx/legato/generated/le_gen_init.c ../src/config/v1/gfx/legato/generated/le_gen_stringtable.c ../src/config/v1/gfx/legato/generated/le_gen_scheme.c ../src/config/v1/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c ../src/config/v1/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c ../src/config/v1/gfx/legato/image/jpeg/jidctint.c ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono.c ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c ../src/config/v1/gfx/legato/image/png/legato_imagedecoder_png.c ../src/config/v1/gfx/legato/image/png/lodepng.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_write.c ../src/config/v1/gfx/legato/image/legato_image.c ../src/config/v1/gfx/legato/image/legato_palette.c ../src/config/v1/gfx/legato/image/legato_image_utils.c ../src/config/v1/gfx/legato/memory/legato_fixedheap.c ../src/config/v1/gfx/legato/memory/legato_memory.c ../src/config/v1/gfx/legato/memory/legato_variableheap.c ../src/config/v1/gfx/legato/renderer/legato_draw.c ../src/config/v1/gfx/legato/renderer/legato_draw_arc.c ../src/config/v1/gfx/legato/renderer/legato_draw_line.c ../src/config/v1/gfx/legato/renderer/legato_draw_rect.c ../src/config/v1/gfx/legato/renderer/legato_renderer.c ../src/config/v1/gfx/legato/renderer/legato_gpu.c ../src/config/v1/gfx/legato/string/legato_dynamicstring.c ../src/config/v1/gfx/legato/string/legato_fixedstring.c ../src/config/v1/gfx/legato/string/legato_string.c ../src/config/v1/gfx/legato/string/legato_string_renderer.c ../src/config/v1/gfx/legato/string/legato_string_renderer_stream.c ../src/config/v1/gfx/legato/string/legato_stringtable.c ../src/config/v1/gfx/legato/string/legato_tablestring.c ../src/config/v1/gfx/legato/string/legato_stringutils.c ../src/config/v1/gfx/legato/widget/arc/legato_widget_arc.c ../src/config/v1/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c ../src/config/v1/gfx/legato/widget/bargraph/legato_widget_bar_graph.c ../src/config/v1/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c ../src/config/v1/gfx/legato/widget/button/legato_widget_button.c ../src/config/v1/gfx/legato/widget/button/legato_widget_button_skin_classic.c ../src/config/v1/gfx/legato/widget/checkbox/legato_widget_checkbox.c ../src/config/v1/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c ../src/config/v1/gfx/legato/widget/circle/legato_widget_circle.c ../src/config/v1/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c ../src/config/v1/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c ../src/config/v1/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c ../src/config/v1/gfx/legato/widget/circularslider/legato_widget_circular_slider.c ../src/config/v1/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c ../src/config/v1/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c ../src/config/v1/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c ../src/config/v1/gfx/legato/widget/gradient/legato_widget_gradient.c ../src/config/v1/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c ../src/config/v1/gfx/legato/widget/groupbox/legato_widget_groupbox.c ../src/config/v1/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c ../src/config/v1/gfx/legato/widget/image/legato_widget_image.c ../src/config/v1/gfx/legato/widget/image/legato_widget_image_skin_classic.c ../src/config/v1/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c ../src/config/v1/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c ../src/config/v1/gfx/legato/widget/imagescale/legato_widget_imagescale.c ../src/config/v1/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c ../src/config/v1/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c ../src/config/v1/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c ../src/config/v1/gfx/legato/widget/keypad/legato_widget_keypad.c ../src/config/v1/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c ../src/config/v1/gfx/legato/widget/label/legato_widget_label.c ../src/config/v1/gfx/legato/widget/label/legato_widget_label_skin_classic.c ../src/config/v1/gfx/legato/widget/line/legato_widget_line.c ../src/config/v1/gfx/legato/widget/line/legato_widget_line_skin_classic.c ../src/config/v1/gfx/legato/widget/linegraph/legato_widget_line_graph.c ../src/config/v1/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c ../src/config/v1/gfx/legato/widget/list/legato_widget_list.c ../src/config/v1/gfx/legato/widget/list/legato_widget_list_skin_classic.c ../src/config/v1/gfx/legato/widget/listwheel/legato_widget_listwheel.c ../src/config/v1/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c ../src/config/v1/gfx/legato/widget/piechart/legato_widget_pie_chart.c ../src/config/v1/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c ../src/config/v1/gfx/legato/widget/progressbar/legato_widget_progressbar.c ../src/config/v1/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c ../src/config/v1/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c ../src/config/v1/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c ../src/config/v1/gfx/legato/widget/radiobutton/legato_radiobutton_group.c ../src/config/v1/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c ../src/config/v1/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c ../src/config/v1/gfx/legato/widget/rectangle/legato_widget_rectangle.c ../src/config/v1/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c ../src/config/v1/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c ../src/config/v1/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c ../src/config/v1/gfx/legato/widget/slider/legato_widget_slider.c ../src/config/v1/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c ../src/config/v1/gfx/legato/widget/textfield/legato_widget_textfield.c ../src/config/v1/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c ../src/config/v1/gfx/legato/widget/touchtest/legato_widget_touchtest.c ../src/config/v1/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c ../src/config/v1/gfx/legato/widget/window/legato_widget_window.c ../src/config/v1/gfx/legato/widget/window/legato_widget_window_skin_classic.c ../src/config/v1/gfx/legato/widget/legato_editwidget.c ../src/config/v1/gfx/legato/widget/legato_widget.c ../src/config/v1/gfx/legato/widget/legato_widget_skin_classic.c ../src/config/v1/gfx/legato/widget/legato_widget_skin_classic_common.c ../src/config/v1/peripheral/clock/plib_clock.c ../src/config/v1/peripheral/cmcc/plib_cmcc.c ../src/config/v1/peripheral/dmac/plib_dmac.c ../src/config/v1/peripheral/evsys/plib_evsys.c ../src/config/v1/peripheral/nvic/plib_nvic.c ../src/config/v1/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/v1/peripheral/port/plib_port.c ../src/config/v1/peripheral/sercom/spi_master/plib_sercom1_spi_master.c ../src/config/v1/peripheral/tc/plib_tc0.c ../src/config/v1/peripheral/tc/plib_tc1.c ../src/config/v1/peripheral/tc/plib_tc2.c ../src/config/v1/stdio/xc32_monitor.c ../src/config/v1/system/cache/sys_cache.c ../src/config/v1/system/dma/sys_dma.c ../src/config/v1/system/input/sys_input.c ../src/config/v1/system/input/sys_input_listener.c ../src/config/v1/system/int/src/sys_int.c ../src/config/v1/system/time/src/sys_time.c ../src/config/v1/initialization.c ../src/config/v1/interrupts.c ../src/config/v1/exceptions.c ../src/config/v1/startup_xc32.c ../src/config/v1/libc_syscalls.c ../src/config/v1/tasks.c ../src/main.c ../src/app.c ../src/config/v1/gfx/legato/generated/screen/le_gen_screen_Screen1.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-v1.mk ${DISTDIR}/grotest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD51G19A
MP_LINKER_FILE_OPTION=,--script="../src/config/v1/ATSAMD51G19A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2019496869/drv_spi.o: ../src/config/v1/driver/spi/src/drv_spi.c  .generated_files/flags/v1/d697c86b6f62d0a7b3004400e913e49362596123 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2019496869" 
	@${RM} ${OBJECTDIR}/_ext/2019496869/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2019496869/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2019496869/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2019496869/drv_spi.o ../src/config/v1/driver/spi/src/drv_spi.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/786113599/gfx_driver.o: ../src/config/v1/gfx/driver/gfx_driver.c  .generated_files/flags/v1/66c47373a30dcd87eca56a563f6703dc24db4020 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/786113599" 
	@${RM} ${OBJECTDIR}/_ext/786113599/gfx_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/786113599/gfx_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/786113599/gfx_driver.o.d" -o ${OBJECTDIR}/_ext/786113599/gfx_driver.o ../src/config/v1/gfx/driver/gfx_driver.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o: ../src/config/v1/gfx/driver/controller/external_controller/drv_gfx_external_controller.c  .generated_files/flags/v1/3d55af78d4ae5dc1d34a380d765f1341569f3cb4 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1506625901" 
	@${RM} ${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o.d" -o ${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o ../src/config/v1/gfx/driver/controller/external_controller/drv_gfx_external_controller.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o: ../src/config/v1/gfx/interface/spi4/drv_gfx_disp_intf_spi4.c  .generated_files/flags/v1/85fc95b631ff70c384a4aebeea067dcbd76fd1b4 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1443871797" 
	@${RM} ${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o.d" -o ${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o ../src/config/v1/gfx/interface/spi4/drv_gfx_disp_intf_spi4.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_color.o: ../src/config/v1/gfx/legato/common/legato_color.c  .generated_files/flags/v1/c4809934cd312ccda66fd404a077fa7bf6cf245f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_color.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_color.o ../src/config/v1/gfx/legato/common/legato_color.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_color_blend.o: ../src/config/v1/gfx/legato/common/legato_color_blend.c  .generated_files/flags/v1/6dd00372ce94b31791b2e5f053f5d948715223fa .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_color_blend.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_color_blend.o ../src/config/v1/gfx/legato/common/legato_color_blend.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_color_convert.o: ../src/config/v1/gfx/legato/common/legato_color_convert.c  .generated_files/flags/v1/b157b70d1b895c33b34ad14a7a771ac33a733b8b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_color_convert.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_color_convert.o ../src/config/v1/gfx/legato/common/legato_color_convert.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o: ../src/config/v1/gfx/legato/common/legato_color_lerp.c  .generated_files/flags/v1/6bdc6e7c377b8669338c45dc231adf1e5b7cb26f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o ../src/config/v1/gfx/legato/common/legato_color_lerp.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_color_value.o: ../src/config/v1/gfx/legato/common/legato_color_value.c  .generated_files/flags/v1/a6db90a5a45952aa6404e84687a8169a1c2ce768 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_value.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_color_value.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_color_value.o ../src/config/v1/gfx/legato/common/legato_color_value.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_error.o: ../src/config/v1/gfx/legato/common/legato_error.c  .generated_files/flags/v1/ac4781f1bdab33eff80a7adab827a4c6d67b549c .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_error.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_error.o ../src/config/v1/gfx/legato/common/legato_error.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_math.o: ../src/config/v1/gfx/legato/common/legato_math.c  .generated_files/flags/v1/983d14f19a7314589933113b202b9d97a7afb959 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_math.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_math.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_math.o ../src/config/v1/gfx/legato/common/legato_math.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o: ../src/config/v1/gfx/legato/common/legato_pixelbuffer.c  .generated_files/flags/v1/bc2a721b5db11bb6cdbf40ec960eb748134805fc .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o ../src/config/v1/gfx/legato/common/legato_pixelbuffer.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_rect.o: ../src/config/v1/gfx/legato/common/legato_rect.c  .generated_files/flags/v1/c5b7b0e697d43286d2e7be6583b1bdd44b675c23 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_rect.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_rect.o ../src/config/v1/gfx/legato/common/legato_rect.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_utils.o: ../src/config/v1/gfx/legato/common/legato_utils.c  .generated_files/flags/v1/91162f761cb0461fbd8ad5446d0b126c6b380a82 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_utils.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_utils.o ../src/config/v1/gfx/legato/common/legato_utils.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686758793/legato_event.o: ../src/config/v1/gfx/legato/core/legato_event.c  .generated_files/flags/v1/d861650586d5949b859aa281934cb914e90a032e .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686758793" 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686758793/legato_event.o.d" -o ${OBJECTDIR}/_ext/1686758793/legato_event.o ../src/config/v1/gfx/legato/core/legato_event.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686758793/legato_input.o: ../src/config/v1/gfx/legato/core/legato_input.c  .generated_files/flags/v1/ad8d2e8f8b4822dbb9df748b21280b0b0085e9fb .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686758793" 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686758793/legato_input.o.d" -o ${OBJECTDIR}/_ext/1686758793/legato_input.o ../src/config/v1/gfx/legato/core/legato_input.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686758793/legato_scheme.o: ../src/config/v1/gfx/legato/core/legato_scheme.c  .generated_files/flags/v1/c8211d7a1d1cc97e22c11b292a15316e4ff3cc9a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686758793" 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686758793/legato_scheme.o.d" -o ${OBJECTDIR}/_ext/1686758793/legato_scheme.o ../src/config/v1/gfx/legato/core/legato_scheme.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686758793/legato_state.o: ../src/config/v1/gfx/legato/core/legato_state.c  .generated_files/flags/v1/c8bfdec9e476cff54f2d177cb4903c25acc01bea .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686758793" 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686758793/legato_state.o.d" -o ${OBJECTDIR}/_ext/1686758793/legato_state.o ../src/config/v1/gfx/legato/core/legato_state.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686758793/legato_stream.o: ../src/config/v1/gfx/legato/core/legato_stream.c  .generated_files/flags/v1/b333d8462a814956bb8ab38aa8120ab866cc920f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686758793" 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686758793/legato_stream.o.d" -o ${OBJECTDIR}/_ext/1686758793/legato_stream.o ../src/config/v1/gfx/legato/core/legato_stream.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/148763041/legato_array.o: ../src/config/v1/gfx/legato/datastructure/legato_array.c  .generated_files/flags/v1/8883f98144db5ad87a79fd23f28a448b4a599252 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/148763041" 
	@${RM} ${OBJECTDIR}/_ext/148763041/legato_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/148763041/legato_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/148763041/legato_array.o.d" -o ${OBJECTDIR}/_ext/148763041/legato_array.o ../src/config/v1/gfx/legato/datastructure/legato_array.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/148763041/legato_list.o: ../src/config/v1/gfx/legato/datastructure/legato_list.c  .generated_files/flags/v1/ed37666dbd432aebff7d18a776565a7a460c54d2 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/148763041" 
	@${RM} ${OBJECTDIR}/_ext/148763041/legato_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/148763041/legato_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/148763041/legato_list.o.d" -o ${OBJECTDIR}/_ext/148763041/legato_list.o ../src/config/v1/gfx/legato/datastructure/legato_list.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/148763041/legato_rectarray.o: ../src/config/v1/gfx/legato/datastructure/legato_rectarray.c  .generated_files/flags/v1/7173f954ce8038ceb420f4a2e8bcc9569173d9f0 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/148763041" 
	@${RM} ${OBJECTDIR}/_ext/148763041/legato_rectarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/148763041/legato_rectarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/148763041/legato_rectarray.o.d" -o ${OBJECTDIR}/_ext/148763041/legato_rectarray.o ../src/config/v1/gfx/legato/datastructure/legato_rectarray.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686848057/legato_font.o: ../src/config/v1/gfx/legato/font/legato_font.c  .generated_files/flags/v1/c22a1f8aa6ae866f70008cb9aca0fcd335a24aaa .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686848057" 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_font.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_font.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686848057/legato_font.o.d" -o ${OBJECTDIR}/_ext/1686848057/legato_font.o ../src/config/v1/gfx/legato/font/legato_font.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o: ../src/config/v1/gfx/legato/font/legato_rasterfont_liberationmono1.c  .generated_files/flags/v1/2bb6a60b0d9ff2a5c554cd4cbc28bcbb723813d5 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686848057" 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o.d" -o ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o ../src/config/v1/gfx/legato/font/legato_rasterfont_liberationmono1.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o: ../src/config/v1/gfx/legato/font/legato_rasterfont_liberationmono8.c  .generated_files/flags/v1/aff10b7690c676dbbf26266fe51dccd431887b58 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686848057" 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o.d" -o ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o ../src/config/v1/gfx/legato/font/legato_rasterfont_liberationmono8.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o: ../src/config/v1/gfx/legato/font/legato_rasterfont_stream.c  .generated_files/flags/v1/1945eb9547b286c04e8eeaa1572ec1a0b1b8b4e3 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686848057" 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o.d" -o ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o ../src/config/v1/gfx/legato/font/legato_rasterfont_stream.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/66011591/le_gen_fonts.o: ../src/config/v1/gfx/legato/generated/font/le_gen_fonts.c  .generated_files/flags/v1/eafd349e6d35581a5f6634879f2374766b809ada .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/66011591" 
	@${RM} ${OBJECTDIR}/_ext/66011591/le_gen_fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/66011591/le_gen_fonts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/66011591/le_gen_fonts.o.d" -o ${OBJECTDIR}/_ext/66011591/le_gen_fonts.o ../src/config/v1/gfx/legato/generated/font/le_gen_fonts.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2043661135/le_gen_images.o: ../src/config/v1/gfx/legato/generated/image/le_gen_images.c  .generated_files/flags/v1/f6947712c4970109091eea25066805ecf69604c0 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2043661135" 
	@${RM} ${OBJECTDIR}/_ext/2043661135/le_gen_images.o.d 
	@${RM} ${OBJECTDIR}/_ext/2043661135/le_gen_images.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2043661135/le_gen_images.o.d" -o ${OBJECTDIR}/_ext/2043661135/le_gen_images.o ../src/config/v1/gfx/legato/generated/image/le_gen_images.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o: ../src/config/v1/gfx/legato/generated/screen/le_gen_screen_Screen0.c  .generated_files/flags/v1/c00253e4c8875785d2ae978a8ad66824c19133ac .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1348575190" 
	@${RM} ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o.d" -o ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o ../src/config/v1/gfx/legato/generated/screen/le_gen_screen_Screen0.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o: ../src/config/v1/gfx/legato/generated/le_gen_globalpalette.c  .generated_files/flags/v1/5a9c11818a2a08ad570578e1b5df9ea5c2750fb0 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/767985125" 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o.d 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o.d" -o ${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o ../src/config/v1/gfx/legato/generated/le_gen_globalpalette.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/767985125/le_gen_harmony.o: ../src/config/v1/gfx/legato/generated/le_gen_harmony.c  .generated_files/flags/v1/8a570d2be952eebaa44210d48cab6508087760e5 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/767985125" 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/767985125/le_gen_harmony.o.d" -o ${OBJECTDIR}/_ext/767985125/le_gen_harmony.o ../src/config/v1/gfx/legato/generated/le_gen_harmony.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/767985125/le_gen_init.o: ../src/config/v1/gfx/legato/generated/le_gen_init.c  .generated_files/flags/v1/9b18320bc7a2ee9c732df1df559f294561a864fe .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/767985125" 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/767985125/le_gen_init.o.d" -o ${OBJECTDIR}/_ext/767985125/le_gen_init.o ../src/config/v1/gfx/legato/generated/le_gen_init.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o: ../src/config/v1/gfx/legato/generated/le_gen_stringtable.c  .generated_files/flags/v1/f9db62800c929a8e77a065d087c0b12f2caa7e3 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/767985125" 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o.d 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o.d" -o ${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o ../src/config/v1/gfx/legato/generated/le_gen_stringtable.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/767985125/le_gen_scheme.o: ../src/config/v1/gfx/legato/generated/le_gen_scheme.c  .generated_files/flags/v1/6c2ee4be07da3f2fc854e40f352e90e0a262e298 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/767985125" 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/767985125/le_gen_scheme.o.d" -o ${OBJECTDIR}/_ext/767985125/le_gen_scheme.o ../src/config/v1/gfx/legato/generated/le_gen_scheme.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o: ../src/config/v1/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c  .generated_files/flags/v1/f9f69d1b7db431c3ade28fb8d925292a7306714 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/539608838" 
	@${RM} ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o.d 
	@${RM} ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o.d" -o ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o ../src/config/v1/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o: ../src/config/v1/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c  .generated_files/flags/v1/285835bf06e45634a3eb1d4dd5feca45731e1ed6 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/539608838" 
	@${RM} ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o.d" -o ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o ../src/config/v1/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/539608838/jidctint.o: ../src/config/v1/gfx/legato/image/jpeg/jidctint.c  .generated_files/flags/v1/5572dc820735c0d7aeb99f8eceae2ff77a26d9a6 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/539608838" 
	@${RM} ${OBJECTDIR}/_ext/539608838/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/539608838/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/539608838/jidctint.o.d" -o ${OBJECTDIR}/_ext/539608838/jidctint.o ../src/config/v1/gfx/legato/image/jpeg/jidctint.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o: ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono.c  .generated_files/flags/v1/55610793a163af4f500e23e595c63384c8b22d46 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/539697537" 
	@${RM} ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o.d 
	@${RM} ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o.d" -o ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o: ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c  .generated_files/flags/v1/2ad17ca810ec2297035ba2cf96c4ed4d3ea132cd .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/539697537" 
	@${RM} ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o.d" -o ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o: ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c  .generated_files/flags/v1/2188050c66bc47790b9456f8bdf7a7f35d0540f1 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/539697537" 
	@${RM} ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o.d" -o ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o: ../src/config/v1/gfx/legato/image/png/legato_imagedecoder_png.c  .generated_files/flags/v1/e8fccc41fcb1b2bf915c8e8a8dba1fc16b86f446 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398229557" 
	@${RM} ${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o.d 
	@${RM} ${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o.d" -o ${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o ../src/config/v1/gfx/legato/image/png/legato_imagedecoder_png.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398229557/lodepng.o: ../src/config/v1/gfx/legato/image/png/lodepng.c  .generated_files/flags/v1/de297fe56f856bf59dbf27565c25c8f9fdce1699 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398229557" 
	@${RM} ${OBJECTDIR}/_ext/398229557/lodepng.o.d 
	@${RM} ${OBJECTDIR}/_ext/398229557/lodepng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398229557/lodepng.o.d" -o ${OBJECTDIR}/_ext/398229557/lodepng.o ../src/config/v1/gfx/legato/image/png/lodepng.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw.c  .generated_files/flags/v1/c6e0f48c85b728094eaef51aeb0762746f87c93e .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c  .generated_files/flags/v1/4039081f8f5c3832e985c384b4b20938c67e02c4 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c  .generated_files/flags/v1/feb9e9b18e73e754d4ba87df5ef21dce13c19073 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c  .generated_files/flags/v1/5c47e3e497bc26c831281130657cd05b8b232298 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c  .generated_files/flags/v1/6a6720b494d3d1417db74e67b8ebef098f9d1f18 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c  .generated_files/flags/v1/477c12d2b6ddafd031baa30b96722017bd4a66a6 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c  .generated_files/flags/v1/d6eadeb38ff67a26c50bbff4dbae9338fa28ca9f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c  .generated_files/flags/v1/6a06d884c7a835e96e6392fa642f9d4748a2f50b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c  .generated_files/flags/v1/6b59477070fafa08ddb67391ef2e9f62b1d9a10f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c  .generated_files/flags/v1/aaaf4354c2626484fe612976376396519b207e83 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c  .generated_files/flags/v1/69b6d7ca7354fd8a443546a21aa717df0680cdfc .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c  .generated_files/flags/v1/7ba6c23553c717cc1cd2ca22db87531bbba44061 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c  .generated_files/flags/v1/89f8118e695656687c354ec17c93bad204b4cf92 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c  .generated_files/flags/v1/747a36f768fcb02e52b5da608dc6b8c7b675b8e5 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_write.c  .generated_files/flags/v1/978d6f3b07ae7d1c97c0780a44f29760d8bfe206 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_write.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/755380401/legato_image.o: ../src/config/v1/gfx/legato/image/legato_image.c  .generated_files/flags/v1/e21caf70ad03e57e8b191d8da5ca589e36afc7bf .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/755380401" 
	@${RM} ${OBJECTDIR}/_ext/755380401/legato_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/755380401/legato_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/755380401/legato_image.o.d" -o ${OBJECTDIR}/_ext/755380401/legato_image.o ../src/config/v1/gfx/legato/image/legato_image.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/755380401/legato_palette.o: ../src/config/v1/gfx/legato/image/legato_palette.c  .generated_files/flags/v1/d99def01a7531b7824b0de37f57d1595c3a1e959 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/755380401" 
	@${RM} ${OBJECTDIR}/_ext/755380401/legato_palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/755380401/legato_palette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/755380401/legato_palette.o.d" -o ${OBJECTDIR}/_ext/755380401/legato_palette.o ../src/config/v1/gfx/legato/image/legato_palette.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/755380401/legato_image_utils.o: ../src/config/v1/gfx/legato/image/legato_image_utils.c  .generated_files/flags/v1/9b8cd7bc6a75c017b26a9802c0f3411ec347c49c .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/755380401" 
	@${RM} ${OBJECTDIR}/_ext/755380401/legato_image_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/755380401/legato_image_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/755380401/legato_image_utils.o.d" -o ${OBJECTDIR}/_ext/755380401/legato_image_utils.o ../src/config/v1/gfx/legato/image/legato_image_utils.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o: ../src/config/v1/gfx/legato/memory/legato_fixedheap.c  .generated_files/flags/v1/aefa96ed9b89ed89859784cf67691697388e5370 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2049450091" 
	@${RM} ${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o.d" -o ${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o ../src/config/v1/gfx/legato/memory/legato_fixedheap.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2049450091/legato_memory.o: ../src/config/v1/gfx/legato/memory/legato_memory.c  .generated_files/flags/v1/21d71395a152fa4658dd1115b9911ed1065b867f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2049450091" 
	@${RM} ${OBJECTDIR}/_ext/2049450091/legato_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049450091/legato_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2049450091/legato_memory.o.d" -o ${OBJECTDIR}/_ext/2049450091/legato_memory.o ../src/config/v1/gfx/legato/memory/legato_memory.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2049450091/legato_variableheap.o: ../src/config/v1/gfx/legato/memory/legato_variableheap.c  .generated_files/flags/v1/e3794e185bb4fdccd9502eca902cab6356f23b90 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2049450091" 
	@${RM} ${OBJECTDIR}/_ext/2049450091/legato_variableheap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049450091/legato_variableheap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2049450091/legato_variableheap.o.d" -o ${OBJECTDIR}/_ext/2049450091/legato_variableheap.o ../src/config/v1/gfx/legato/memory/legato_variableheap.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1726254675/legato_draw.o: ../src/config/v1/gfx/legato/renderer/legato_draw.c  .generated_files/flags/v1/b6964ef1d59c3b811ce3a3baac9d2540521dfc99 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1726254675" 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1726254675/legato_draw.o.d" -o ${OBJECTDIR}/_ext/1726254675/legato_draw.o ../src/config/v1/gfx/legato/renderer/legato_draw.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o: ../src/config/v1/gfx/legato/renderer/legato_draw_arc.c  .generated_files/flags/v1/a996e0263340bb764d1606c685d9b998d45ba5e .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1726254675" 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o.d" -o ${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o ../src/config/v1/gfx/legato/renderer/legato_draw_arc.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1726254675/legato_draw_line.o: ../src/config/v1/gfx/legato/renderer/legato_draw_line.c  .generated_files/flags/v1/bf9b01fe039b74889a2a3a47ff5149a558071921 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1726254675" 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1726254675/legato_draw_line.o.d" -o ${OBJECTDIR}/_ext/1726254675/legato_draw_line.o ../src/config/v1/gfx/legato/renderer/legato_draw_line.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o: ../src/config/v1/gfx/legato/renderer/legato_draw_rect.c  .generated_files/flags/v1/beafd35378d578c0cdbde2a58f22e5c947a82f6c .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1726254675" 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o.d" -o ${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o ../src/config/v1/gfx/legato/renderer/legato_draw_rect.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1726254675/legato_renderer.o: ../src/config/v1/gfx/legato/renderer/legato_renderer.c  .generated_files/flags/v1/7e82d8bdc2681a067d73adb78d0b08f7ae840cd5 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1726254675" 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_renderer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_renderer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1726254675/legato_renderer.o.d" -o ${OBJECTDIR}/_ext/1726254675/legato_renderer.o ../src/config/v1/gfx/legato/renderer/legato_renderer.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1726254675/legato_gpu.o: ../src/config/v1/gfx/legato/renderer/legato_gpu.c  .generated_files/flags/v1/4353fa0470ab45f9dcbe7be2891e6df2f3d9042f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1726254675" 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_gpu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_gpu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1726254675/legato_gpu.o.d" -o ${OBJECTDIR}/_ext/1726254675/legato_gpu.o ../src/config/v1/gfx/legato/renderer/legato_gpu.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o: ../src/config/v1/gfx/legato/string/legato_dynamicstring.c  .generated_files/flags/v1/1399e7e438ddee0ee332c013f75624a2fb1fe921 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o ../src/config/v1/gfx/legato/string/legato_dynamicstring.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o: ../src/config/v1/gfx/legato/string/legato_fixedstring.c  .generated_files/flags/v1/c95c264a8a77e32907cc92f21357cabd8a591324 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o ../src/config/v1/gfx/legato/string/legato_fixedstring.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_string.o: ../src/config/v1/gfx/legato/string/legato_string.c  .generated_files/flags/v1/646401f9802247dabfc92f520a97906b2233637 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_string.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_string.o ../src/config/v1/gfx/legato/string/legato_string.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o: ../src/config/v1/gfx/legato/string/legato_string_renderer.c  .generated_files/flags/v1/da65fc894631e68045adca351fd2c2574e8da9be .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o ../src/config/v1/gfx/legato/string/legato_string_renderer.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o: ../src/config/v1/gfx/legato/string/legato_string_renderer_stream.c  .generated_files/flags/v1/e6e4149927148b51c2dfa268b8d659aeae40547f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o ../src/config/v1/gfx/legato/string/legato_string_renderer_stream.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_stringtable.o: ../src/config/v1/gfx/legato/string/legato_stringtable.c  .generated_files/flags/v1/c03520e5c931faa21421cc1cbe1a40d701bdc662 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_stringtable.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_stringtable.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_stringtable.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_stringtable.o ../src/config/v1/gfx/legato/string/legato_stringtable.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_tablestring.o: ../src/config/v1/gfx/legato/string/legato_tablestring.c  .generated_files/flags/v1/5a3af3d1d1876224f46bbfc26a3066be75c64c69 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_tablestring.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_tablestring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_tablestring.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_tablestring.o ../src/config/v1/gfx/legato/string/legato_tablestring.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_stringutils.o: ../src/config/v1/gfx/legato/string/legato_stringutils.c  .generated_files/flags/v1/ceb33326eb3c4a779cdf0f8deaf8f1f95986698c .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_stringutils.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_stringutils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_stringutils.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_stringutils.o ../src/config/v1/gfx/legato/string/legato_stringutils.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o: ../src/config/v1/gfx/legato/widget/arc/legato_widget_arc.c  .generated_files/flags/v1/2badfa48731311c3c05af2d2c5bd6533d9d3595 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1718685297" 
	@${RM} ${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o.d" -o ${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o ../src/config/v1/gfx/legato/widget/arc/legato_widget_arc.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o: ../src/config/v1/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c  .generated_files/flags/v1/2f47633091df5a282370fefece4af2e966d37c20 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1718685297" 
	@${RM} ${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o ../src/config/v1/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o: ../src/config/v1/gfx/legato/widget/bargraph/legato_widget_bar_graph.c  .generated_files/flags/v1/c7c3405f9193c22eadc8111ea23a004a90200790 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1595146148" 
	@${RM} ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o.d" -o ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o ../src/config/v1/gfx/legato/widget/bargraph/legato_widget_bar_graph.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o: ../src/config/v1/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c  .generated_files/flags/v1/6a803784098cd17e8708431d2155b84441ce3896 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1595146148" 
	@${RM} ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o ../src/config/v1/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1080568499/legato_widget_button.o: ../src/config/v1/gfx/legato/widget/button/legato_widget_button.c  .generated_files/flags/v1/932bff4a61858eb561d85213548c73b101ab9650 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1080568499" 
	@${RM} ${OBJECTDIR}/_ext/1080568499/legato_widget_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1080568499/legato_widget_button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1080568499/legato_widget_button.o.d" -o ${OBJECTDIR}/_ext/1080568499/legato_widget_button.o ../src/config/v1/gfx/legato/widget/button/legato_widget_button.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o: ../src/config/v1/gfx/legato/widget/button/legato_widget_button_skin_classic.c  .generated_files/flags/v1/c651915de1b61d9c7046f002c8f8664e719a9cdc .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1080568499" 
	@${RM} ${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o ../src/config/v1/gfx/legato/widget/button/legato_widget_button_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o: ../src/config/v1/gfx/legato/widget/checkbox/legato_widget_checkbox.c  .generated_files/flags/v1/9b556fae24dcceeb60ecab68901a10bd055d9575 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1689142020" 
	@${RM} ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o.d" -o ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o ../src/config/v1/gfx/legato/widget/checkbox/legato_widget_checkbox.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o: ../src/config/v1/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c  .generated_files/flags/v1/8fc21388f982f8bf27d7111feb3497a48c35f1cb .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1689142020" 
	@${RM} ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o ../src/config/v1/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o: ../src/config/v1/gfx/legato/widget/circle/legato_widget_circle.c  .generated_files/flags/v1/cc831022adeaeb367f15bb00539929d58a2eb6a3 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1098039377" 
	@${RM} ${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o.d" -o ${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o ../src/config/v1/gfx/legato/widget/circle/legato_widget_circle.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o: ../src/config/v1/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c  .generated_files/flags/v1/bfb163dddc08df1da3ac39babd36ad54a0276815 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1098039377" 
	@${RM} ${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o ../src/config/v1/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o: ../src/config/v1/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c  .generated_files/flags/v1/29e6d9333a9d0bef4d844fe5a47e3073d37e9e7a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/996331289" 
	@${RM} ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o.d 
	@${RM} ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o.d" -o ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o ../src/config/v1/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o: ../src/config/v1/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c  .generated_files/flags/v1/ca6a5c6ac8728a0feb4a3dc742490d8985f0b050 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/996331289" 
	@${RM} ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o.d" -o ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o ../src/config/v1/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o: ../src/config/v1/gfx/legato/widget/circularslider/legato_widget_circular_slider.c  .generated_files/flags/v1/6c4a8f2f10ef2ad727d73bfc161e1731156dfd0 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1174847169" 
	@${RM} ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o.d" -o ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o ../src/config/v1/gfx/legato/widget/circularslider/legato_widget_circular_slider.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o: ../src/config/v1/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c  .generated_files/flags/v1/aa72c3bd5a3ed90dd7a6b1eede07ee2a395fbd9a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1174847169" 
	@${RM} ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o ../src/config/v1/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o: ../src/config/v1/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c  .generated_files/flags/v1/d27b1ac7ef2acbf79a01c45361ecad09821f650 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/118689800" 
	@${RM} ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o.d 
	@${RM} ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o.d" -o ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o ../src/config/v1/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o: ../src/config/v1/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c  .generated_files/flags/v1/ff05a19ae085094040b3024b13d45d3eb5eebcb4 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/118689800" 
	@${RM} ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o.d" -o ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o ../src/config/v1/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o: ../src/config/v1/gfx/legato/widget/gradient/legato_widget_gradient.c  .generated_files/flags/v1/7ed5e6065c6e6b9d55a908a56e49d3f4d8d7c11d .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/241901169" 
	@${RM} ${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o.d 
	@${RM} ${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o.d" -o ${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o ../src/config/v1/gfx/legato/widget/gradient/legato_widget_gradient.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o: ../src/config/v1/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c  .generated_files/flags/v1/5fd791903d6f22949db19bff67cabff2e25da3fd .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/241901169" 
	@${RM} ${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o.d" -o ${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o ../src/config/v1/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o: ../src/config/v1/gfx/legato/widget/groupbox/legato_widget_groupbox.c  .generated_files/flags/v1/1f94ebd18ea45cb8be61dfff5402fce142d3792f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/658614829" 
	@${RM} ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o.d" -o ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o ../src/config/v1/gfx/legato/widget/groupbox/legato_widget_groupbox.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o: ../src/config/v1/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c  .generated_files/flags/v1/71d0203adc9265a4b0997803fa2a8af764999cfc .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/658614829" 
	@${RM} ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o ../src/config/v1/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1898597958/legato_widget_image.o: ../src/config/v1/gfx/legato/widget/image/legato_widget_image.c  .generated_files/flags/v1/f91b9a55ceaf450382145b3c4f352e57bd2c5680 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1898597958" 
	@${RM} ${OBJECTDIR}/_ext/1898597958/legato_widget_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1898597958/legato_widget_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1898597958/legato_widget_image.o.d" -o ${OBJECTDIR}/_ext/1898597958/legato_widget_image.o ../src/config/v1/gfx/legato/widget/image/legato_widget_image.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o: ../src/config/v1/gfx/legato/widget/image/legato_widget_image_skin_classic.c  .generated_files/flags/v1/e4baf209768c211118756501bb63bda630ec48ad .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1898597958" 
	@${RM} ${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o ../src/config/v1/gfx/legato/widget/image/legato_widget_image_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o: ../src/config/v1/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c  .generated_files/flags/v1/b9c3fa9d06ee96181779887081d2a7817fdf66f6 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1037116523" 
	@${RM} ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o.d" -o ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o ../src/config/v1/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o: ../src/config/v1/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c  .generated_files/flags/v1/3dee27d6b267d52b86bbd95d3eb4658a77e3ec7a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1037116523" 
	@${RM} ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o ../src/config/v1/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o: ../src/config/v1/gfx/legato/widget/imagescale/legato_widget_imagescale.c  .generated_files/flags/v1/5e92e89cf87fc3ba35fee3ddb5319c3258398a36 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1141285936" 
	@${RM} ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o.d" -o ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o ../src/config/v1/gfx/legato/widget/imagescale/legato_widget_imagescale.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o: ../src/config/v1/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c  .generated_files/flags/v1/541b12543ae847ae9605d6b4808546e109367dd .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1141285936" 
	@${RM} ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o ../src/config/v1/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o: ../src/config/v1/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c  .generated_files/flags/v1/4866a457ff72fd54186bcd0b1c1fbf43b755ff48 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1153290107" 
	@${RM} ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o.d 
	@${RM} ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o.d" -o ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o ../src/config/v1/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o: ../src/config/v1/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c  .generated_files/flags/v1/7a86c385d7b8a1eda154693fc2d6f4e1d746224b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1153290107" 
	@${RM} ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o ../src/config/v1/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o: ../src/config/v1/gfx/legato/widget/keypad/legato_widget_keypad.c  .generated_files/flags/v1/23c58bed7bc722028e777d0e2d732937f36cd6a2 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1323599189" 
	@${RM} ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o.d" -o ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o ../src/config/v1/gfx/legato/widget/keypad/legato_widget_keypad.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o: ../src/config/v1/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c  .generated_files/flags/v1/4a694579539d7534d11fd4c19bcd639e99c4c876 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1323599189" 
	@${RM} ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o ../src/config/v1/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1896183981/legato_widget_label.o: ../src/config/v1/gfx/legato/widget/label/legato_widget_label.c  .generated_files/flags/v1/76a360e8b8a07ac9b202d9f8c5fec6593a79b68a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1896183981" 
	@${RM} ${OBJECTDIR}/_ext/1896183981/legato_widget_label.o.d 
	@${RM} ${OBJECTDIR}/_ext/1896183981/legato_widget_label.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1896183981/legato_widget_label.o.d" -o ${OBJECTDIR}/_ext/1896183981/legato_widget_label.o ../src/config/v1/gfx/legato/widget/label/legato_widget_label.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o: ../src/config/v1/gfx/legato/widget/label/legato_widget_label_skin_classic.c  .generated_files/flags/v1/b71f6f8085af74942dfd993f303c725817b894d0 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1896183981" 
	@${RM} ${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o ../src/config/v1/gfx/legato/widget/label/legato_widget_label_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1739956149/legato_widget_line.o: ../src/config/v1/gfx/legato/widget/line/legato_widget_line.c  .generated_files/flags/v1/b0cba3c8a996b454cce6cd4328e99bbb14954a0a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1739956149" 
	@${RM} ${OBJECTDIR}/_ext/1739956149/legato_widget_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1739956149/legato_widget_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1739956149/legato_widget_line.o.d" -o ${OBJECTDIR}/_ext/1739956149/legato_widget_line.o ../src/config/v1/gfx/legato/widget/line/legato_widget_line.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o: ../src/config/v1/gfx/legato/widget/line/legato_widget_line_skin_classic.c  .generated_files/flags/v1/b0aefb6a1dd940a8a641a932774a8e49a52282dd .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1739956149" 
	@${RM} ${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o ../src/config/v1/gfx/legato/widget/line/legato_widget_line_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o: ../src/config/v1/gfx/legato/widget/linegraph/legato_widget_line_graph.c  .generated_files/flags/v1/6d0911df0c3bbe77fabfda29833a31ecf3314454 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1363957063" 
	@${RM} ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o.d" -o ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o ../src/config/v1/gfx/legato/widget/linegraph/legato_widget_line_graph.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o: ../src/config/v1/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c  .generated_files/flags/v1/61938cf6dea85c7b39209b31a7591f7147b8173 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1363957063" 
	@${RM} ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o ../src/config/v1/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1739956319/legato_widget_list.o: ../src/config/v1/gfx/legato/widget/list/legato_widget_list.c  .generated_files/flags/v1/b35f3d5ade506770b24c54e5a0a61d4ac5ffd94f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1739956319" 
	@${RM} ${OBJECTDIR}/_ext/1739956319/legato_widget_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1739956319/legato_widget_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1739956319/legato_widget_list.o.d" -o ${OBJECTDIR}/_ext/1739956319/legato_widget_list.o ../src/config/v1/gfx/legato/widget/list/legato_widget_list.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o: ../src/config/v1/gfx/legato/widget/list/legato_widget_list_skin_classic.c  .generated_files/flags/v1/856f4d05f2032365932cc6661808dd573acf3177 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1739956319" 
	@${RM} ${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o ../src/config/v1/gfx/legato/widget/list/legato_widget_list_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o: ../src/config/v1/gfx/legato/widget/listwheel/legato_widget_listwheel.c  .generated_files/flags/v1/3ac32a90d37b588e685368cb2a224cd61e540813 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/777486756" 
	@${RM} ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o.d 
	@${RM} ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o.d" -o ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o ../src/config/v1/gfx/legato/widget/listwheel/legato_widget_listwheel.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o: ../src/config/v1/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c  .generated_files/flags/v1/ef030eac9458ff5bfc86f29145475c43c54fdc3d .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/777486756" 
	@${RM} ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o.d" -o ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o ../src/config/v1/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o: ../src/config/v1/gfx/legato/widget/piechart/legato_widget_pie_chart.c  .generated_files/flags/v1/5ad137de4cf7de84fd0c947ae3a9311a31450d75 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/536713965" 
	@${RM} ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o.d" -o ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o ../src/config/v1/gfx/legato/widget/piechart/legato_widget_pie_chart.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o: ../src/config/v1/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c  .generated_files/flags/v1/9e92719b5f5dd1bbbe5938266f2663f48fe68a09 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/536713965" 
	@${RM} ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o.d" -o ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o ../src/config/v1/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o: ../src/config/v1/gfx/legato/widget/progressbar/legato_widget_progressbar.c  .generated_files/flags/v1/b73e8976d0a061f78005490dfa571fc6c11878d8 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1331098597" 
	@${RM} ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o.d" -o ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o ../src/config/v1/gfx/legato/widget/progressbar/legato_widget_progressbar.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o: ../src/config/v1/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c  .generated_files/flags/v1/a53e94b157532126feaa58c57d7db43463d524f9 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1331098597" 
	@${RM} ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o ../src/config/v1/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o: ../src/config/v1/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c  .generated_files/flags/v1/b00d3366b6bbed0c7a10fdfb9094e0b4c5eec4ba .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/107498753" 
	@${RM} ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o.d" -o ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o ../src/config/v1/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o: ../src/config/v1/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c  .generated_files/flags/v1/a9b306d0d727391332dde919d987c0950d14e2cf .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/107498753" 
	@${RM} ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o.d" -o ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o ../src/config/v1/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o: ../src/config/v1/gfx/legato/widget/radiobutton/legato_radiobutton_group.c  .generated_files/flags/v1/a507001444a4112c0e36b388cf2b907285f9af9 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/224204812" 
	@${RM} ${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o.d 
	@${RM} ${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o.d" -o ${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o ../src/config/v1/gfx/legato/widget/radiobutton/legato_radiobutton_group.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o: ../src/config/v1/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c  .generated_files/flags/v1/88ef9f7505df076a3c90667bf6fc43bc7fd2d976 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/224204812" 
	@${RM} ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o.d" -o ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o ../src/config/v1/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o: ../src/config/v1/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c  .generated_files/flags/v1/f5ebdd8fb013e3dfca3e719f1a3ea85fb0e6efbf .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/224204812" 
	@${RM} ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o.d" -o ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o ../src/config/v1/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o: ../src/config/v1/gfx/legato/widget/rectangle/legato_widget_rectangle.c  .generated_files/flags/v1/f93d0757684070b13efb6f4f45cc5663f0034ea6 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1546088014" 
	@${RM} ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o.d" -o ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o ../src/config/v1/gfx/legato/widget/rectangle/legato_widget_rectangle.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o: ../src/config/v1/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c  .generated_files/flags/v1/3a14b24f561def243aea9d81932dd1cd34877d8d .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1546088014" 
	@${RM} ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o ../src/config/v1/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o: ../src/config/v1/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c  .generated_files/flags/v1/7c6c5386e54fb48172238febf056c7acee350b14 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/842581765" 
	@${RM} ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o.d" -o ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o ../src/config/v1/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o: ../src/config/v1/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c  .generated_files/flags/v1/c2e396d1a47ff237b58fd728b1d8e5d3061a4229 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/842581765" 
	@${RM} ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o ../src/config/v1/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o: ../src/config/v1/gfx/legato/widget/slider/legato_widget_slider.c  .generated_files/flags/v1/968e40fe95d0e1f7ae349f394fb82504583c524b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1558608994" 
	@${RM} ${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o.d" -o ${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o ../src/config/v1/gfx/legato/widget/slider/legato_widget_slider.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o: ../src/config/v1/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c  .generated_files/flags/v1/3afff5914d55ad479d99254240ea5829954f503c .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1558608994" 
	@${RM} ${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o ../src/config/v1/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o: ../src/config/v1/gfx/legato/widget/textfield/legato_widget_textfield.c  .generated_files/flags/v1/388687534fa74268b4966a974c35201efecdff0e .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/606646068" 
	@${RM} ${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o.d 
	@${RM} ${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o.d" -o ${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o ../src/config/v1/gfx/legato/widget/textfield/legato_widget_textfield.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o: ../src/config/v1/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c  .generated_files/flags/v1/13fa8ca8cdda16f0b55bb693ce01a4516cad35c2 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/606646068" 
	@${RM} ${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o.d" -o ${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o ../src/config/v1/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o: ../src/config/v1/gfx/legato/widget/touchtest/legato_widget_touchtest.c  .generated_files/flags/v1/41bccf44d1a41344fd422709b08d50487c2470fb .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/789523760" 
	@${RM} ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o.d" -o ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o ../src/config/v1/gfx/legato/widget/touchtest/legato_widget_touchtest.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o: ../src/config/v1/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c  .generated_files/flags/v1/96c55612d604a475b79fe1468441f9fa836f38b6 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/789523760" 
	@${RM} ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o.d" -o ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o ../src/config/v1/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670504305/legato_widget_window.o: ../src/config/v1/gfx/legato/widget/window/legato_widget_window.c  .generated_files/flags/v1/b984e7be5da28e257b9f54c9e54e962b6cc9a56c .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1670504305" 
	@${RM} ${OBJECTDIR}/_ext/1670504305/legato_widget_window.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670504305/legato_widget_window.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670504305/legato_widget_window.o.d" -o ${OBJECTDIR}/_ext/1670504305/legato_widget_window.o ../src/config/v1/gfx/legato/widget/window/legato_widget_window.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o: ../src/config/v1/gfx/legato/widget/window/legato_widget_window_skin_classic.c  .generated_files/flags/v1/3324fe1164cc1e4efbb515e55c878a61c44c19f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1670504305" 
	@${RM} ${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o ../src/config/v1/gfx/legato/widget/window/legato_widget_window_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1955807826/legato_editwidget.o: ../src/config/v1/gfx/legato/widget/legato_editwidget.c  .generated_files/flags/v1/bdbe0ea96aef0b35d8a27902aab340801af80e2c .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1955807826" 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_editwidget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_editwidget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1955807826/legato_editwidget.o.d" -o ${OBJECTDIR}/_ext/1955807826/legato_editwidget.o ../src/config/v1/gfx/legato/widget/legato_editwidget.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1955807826/legato_widget.o: ../src/config/v1/gfx/legato/widget/legato_widget.c  .generated_files/flags/v1/c4451ad7509e165de9da3889d25898fbf7898a47 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1955807826" 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_widget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_widget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1955807826/legato_widget.o.d" -o ${OBJECTDIR}/_ext/1955807826/legato_widget.o ../src/config/v1/gfx/legato/widget/legato_widget.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o: ../src/config/v1/gfx/legato/widget/legato_widget_skin_classic.c  .generated_files/flags/v1/dcd5fa471e21b806dfa452dfbc476929f3117b2b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1955807826" 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o ../src/config/v1/gfx/legato/widget/legato_widget_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o: ../src/config/v1/gfx/legato/widget/legato_widget_skin_classic_common.c  .generated_files/flags/v1/4abd0b2d1d382892b6d40524c88efba0fcef4a1 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1955807826" 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o.d" -o ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o ../src/config/v1/gfx/legato/widget/legato_widget_skin_classic_common.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/126375492/plib_clock.o: ../src/config/v1/peripheral/clock/plib_clock.c  .generated_files/flags/v1/65a2cd82b86bc278bb3f41c91036ac8ec9238c60 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/126375492" 
	@${RM} ${OBJECTDIR}/_ext/126375492/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/126375492/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/126375492/plib_clock.o.d" -o ${OBJECTDIR}/_ext/126375492/plib_clock.o ../src/config/v1/peripheral/clock/plib_clock.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/835360036/plib_cmcc.o: ../src/config/v1/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/v1/ae253761c16a900772c9be224fae98816ecdf73 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/835360036" 
	@${RM} ${OBJECTDIR}/_ext/835360036/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/835360036/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/835360036/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/835360036/plib_cmcc.o ../src/config/v1/peripheral/cmcc/plib_cmcc.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/835330307/plib_dmac.o: ../src/config/v1/peripheral/dmac/plib_dmac.c  .generated_files/flags/v1/5a177b16d178193388e449429dad4cc27977182f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/835330307" 
	@${RM} ${OBJECTDIR}/_ext/835330307/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/835330307/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/835330307/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/835330307/plib_dmac.o ../src/config/v1/peripheral/dmac/plib_dmac.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/124226006/plib_evsys.o: ../src/config/v1/peripheral/evsys/plib_evsys.c  .generated_files/flags/v1/87668d1c56defd38c278898654353df56ce4ebc2 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/124226006" 
	@${RM} ${OBJECTDIR}/_ext/124226006/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/124226006/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/124226006/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/124226006/plib_evsys.o ../src/config/v1/peripheral/evsys/plib_evsys.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/835023500/plib_nvic.o: ../src/config/v1/peripheral/nvic/plib_nvic.c  .generated_files/flags/v1/ddc28fc9097693c683cdfcd2848aa7440671e192 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/835023500" 
	@${RM} ${OBJECTDIR}/_ext/835023500/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/835023500/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/835023500/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/835023500/plib_nvic.o ../src/config/v1/peripheral/nvic/plib_nvic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o: ../src/config/v1/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/v1/18314a32e5d674b91607af92f698509f25acb2c2 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/269299134" 
	@${RM} ${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o ../src/config/v1/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/834970349/plib_port.o: ../src/config/v1/peripheral/port/plib_port.c  .generated_files/flags/v1/dbbeff7eec32b8ce3cf311f56baa29a408e6fbbf .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/834970349" 
	@${RM} ${OBJECTDIR}/_ext/834970349/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/834970349/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/834970349/plib_port.o.d" -o ${OBJECTDIR}/_ext/834970349/plib_port.o ../src/config/v1/peripheral/port/plib_port.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o: ../src/config/v1/peripheral/sercom/spi_master/plib_sercom1_spi_master.c  .generated_files/flags/v1/e9edf8725651234701b048d4e057c5c3d9cd72bf .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2136915279" 
	@${RM} ${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o.d" -o ${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o ../src/config/v1/peripheral/sercom/spi_master/plib_sercom1_spi_master.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/273494143/plib_tc0.o: ../src/config/v1/peripheral/tc/plib_tc0.c  .generated_files/flags/v1/a6a5bb359f82a47cbec1e62d518693db46ce9102 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/273494143" 
	@${RM} ${OBJECTDIR}/_ext/273494143/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/273494143/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/273494143/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/273494143/plib_tc0.o ../src/config/v1/peripheral/tc/plib_tc0.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/273494143/plib_tc1.o: ../src/config/v1/peripheral/tc/plib_tc1.c  .generated_files/flags/v1/23cd213908f0fb71838dcca2bfb38d533cf711c1 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/273494143" 
	@${RM} ${OBJECTDIR}/_ext/273494143/plib_tc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/273494143/plib_tc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/273494143/plib_tc1.o.d" -o ${OBJECTDIR}/_ext/273494143/plib_tc1.o ../src/config/v1/peripheral/tc/plib_tc1.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/273494143/plib_tc2.o: ../src/config/v1/peripheral/tc/plib_tc2.c  .generated_files/flags/v1/d5dc0cd8edc1ff004f1d0b9d12293d9a86af4e2c .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/273494143" 
	@${RM} ${OBJECTDIR}/_ext/273494143/plib_tc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/273494143/plib_tc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/273494143/plib_tc2.o.d" -o ${OBJECTDIR}/_ext/273494143/plib_tc2.o ../src/config/v1/peripheral/tc/plib_tc2.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1496238808/xc32_monitor.o: ../src/config/v1/stdio/xc32_monitor.c  .generated_files/flags/v1/22b2715083258f226f66f163709f2cb95872c22b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1496238808" 
	@${RM} ${OBJECTDIR}/_ext/1496238808/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496238808/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1496238808/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1496238808/xc32_monitor.o ../src/config/v1/stdio/xc32_monitor.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2051932195/sys_cache.o: ../src/config/v1/system/cache/sys_cache.c  .generated_files/flags/v1/32ee8ee6b147d51a1454a1f61f3a550d765d18c0 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2051932195" 
	@${RM} ${OBJECTDIR}/_ext/2051932195/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2051932195/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2051932195/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2051932195/sys_cache.o ../src/config/v1/system/cache/sys_cache.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/547583527/sys_dma.o: ../src/config/v1/system/dma/sys_dma.c  .generated_files/flags/v1/beed574027043b8921ffdb1263505aaee5cf4341 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/547583527" 
	@${RM} ${OBJECTDIR}/_ext/547583527/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/547583527/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/547583527/sys_dma.o.d" -o ${OBJECTDIR}/_ext/547583527/sys_dma.o ../src/config/v1/system/dma/sys_dma.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2057873515/sys_input.o: ../src/config/v1/system/input/sys_input.c  .generated_files/flags/v1/5ab08bf89e2cb4032f93cece34b219a41264e431 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2057873515" 
	@${RM} ${OBJECTDIR}/_ext/2057873515/sys_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/2057873515/sys_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2057873515/sys_input.o.d" -o ${OBJECTDIR}/_ext/2057873515/sys_input.o ../src/config/v1/system/input/sys_input.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2057873515/sys_input_listener.o: ../src/config/v1/system/input/sys_input_listener.c  .generated_files/flags/v1/bb0dd19e4037ef4b6c50dfda8e6915b3f699da3b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2057873515" 
	@${RM} ${OBJECTDIR}/_ext/2057873515/sys_input_listener.o.d 
	@${RM} ${OBJECTDIR}/_ext/2057873515/sys_input_listener.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2057873515/sys_input_listener.o.d" -o ${OBJECTDIR}/_ext/2057873515/sys_input_listener.o ../src/config/v1/system/input/sys_input_listener.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1933103141/sys_int.o: ../src/config/v1/system/int/src/sys_int.c  .generated_files/flags/v1/15b234664201cc426c2b01ec443de1c6136a38ae .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1933103141" 
	@${RM} ${OBJECTDIR}/_ext/1933103141/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1933103141/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1933103141/sys_int.o.d" -o ${OBJECTDIR}/_ext/1933103141/sys_int.o ../src/config/v1/system/int/src/sys_int.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1492590433/sys_time.o: ../src/config/v1/system/time/src/sys_time.c  .generated_files/flags/v1/d3f8e9f2eb2fcbce26cc53d1d15b7260f89e6d1a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1492590433" 
	@${RM} ${OBJECTDIR}/_ext/1492590433/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1492590433/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1492590433/sys_time.o.d" -o ${OBJECTDIR}/_ext/1492590433/sys_time.o ../src/config/v1/system/time/src/sys_time.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/179581970/initialization.o: ../src/config/v1/initialization.c  .generated_files/flags/v1/fbcfea8881bb9eee36234a05c494a9f95a07a4ea .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/179581970" 
	@${RM} ${OBJECTDIR}/_ext/179581970/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/179581970/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/179581970/initialization.o.d" -o ${OBJECTDIR}/_ext/179581970/initialization.o ../src/config/v1/initialization.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/179581970/interrupts.o: ../src/config/v1/interrupts.c  .generated_files/flags/v1/308d02f19c71daa4bc903de0ea8dc425ae4a100e .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/179581970" 
	@${RM} ${OBJECTDIR}/_ext/179581970/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/179581970/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/179581970/interrupts.o.d" -o ${OBJECTDIR}/_ext/179581970/interrupts.o ../src/config/v1/interrupts.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/179581970/exceptions.o: ../src/config/v1/exceptions.c  .generated_files/flags/v1/b77bb37bd816769657d6a74b725bf0a7a0eb45e5 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/179581970" 
	@${RM} ${OBJECTDIR}/_ext/179581970/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/179581970/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/179581970/exceptions.o.d" -o ${OBJECTDIR}/_ext/179581970/exceptions.o ../src/config/v1/exceptions.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/179581970/startup_xc32.o: ../src/config/v1/startup_xc32.c  .generated_files/flags/v1/686c22529af3314b9e181ff3d3b399aace6d0c71 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/179581970" 
	@${RM} ${OBJECTDIR}/_ext/179581970/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/179581970/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/179581970/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/179581970/startup_xc32.o ../src/config/v1/startup_xc32.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/179581970/libc_syscalls.o: ../src/config/v1/libc_syscalls.c  .generated_files/flags/v1/868763f90401cb56c43b430325ad527d7cdc0e42 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/179581970" 
	@${RM} ${OBJECTDIR}/_ext/179581970/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/179581970/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/179581970/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/179581970/libc_syscalls.o ../src/config/v1/libc_syscalls.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/179581970/tasks.o: ../src/config/v1/tasks.c  .generated_files/flags/v1/7d5520bc9eed34904d77329a88bc24a1879ff1da .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/179581970" 
	@${RM} ${OBJECTDIR}/_ext/179581970/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/179581970/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/179581970/tasks.o.d" -o ${OBJECTDIR}/_ext/179581970/tasks.o ../src/config/v1/tasks.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/v1/abd165ee98a253060f9074a1918f8dea48251db6 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/v1/d97ae95b44af05c73c4ed1e816884deb4789cdbd .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o: ../src/config/v1/gfx/legato/generated/screen/le_gen_screen_Screen1.c  .generated_files/flags/v1/21ba08b85bc33bc3acc21b89d372b8c0ae2856f4 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1348575190" 
	@${RM} ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o.d" -o ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o ../src/config/v1/gfx/legato/generated/screen/le_gen_screen_Screen1.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2019496869/drv_spi.o: ../src/config/v1/driver/spi/src/drv_spi.c  .generated_files/flags/v1/ca1459738cb8de09dcd52f1c6ec488ce505f0f3e .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2019496869" 
	@${RM} ${OBJECTDIR}/_ext/2019496869/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2019496869/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2019496869/drv_spi.o.d" -o ${OBJECTDIR}/_ext/2019496869/drv_spi.o ../src/config/v1/driver/spi/src/drv_spi.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/786113599/gfx_driver.o: ../src/config/v1/gfx/driver/gfx_driver.c  .generated_files/flags/v1/e3c333225ebc2559b0be044480a4f71ed07a699 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/786113599" 
	@${RM} ${OBJECTDIR}/_ext/786113599/gfx_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/786113599/gfx_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/786113599/gfx_driver.o.d" -o ${OBJECTDIR}/_ext/786113599/gfx_driver.o ../src/config/v1/gfx/driver/gfx_driver.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o: ../src/config/v1/gfx/driver/controller/external_controller/drv_gfx_external_controller.c  .generated_files/flags/v1/e35ee837b86b2768868705ed589e7dce53b92d17 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1506625901" 
	@${RM} ${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o.d" -o ${OBJECTDIR}/_ext/1506625901/drv_gfx_external_controller.o ../src/config/v1/gfx/driver/controller/external_controller/drv_gfx_external_controller.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o: ../src/config/v1/gfx/interface/spi4/drv_gfx_disp_intf_spi4.c  .generated_files/flags/v1/1ee89b0aeb990c7d15cf68da794556736e18b590 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1443871797" 
	@${RM} ${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o.d" -o ${OBJECTDIR}/_ext/1443871797/drv_gfx_disp_intf_spi4.o ../src/config/v1/gfx/interface/spi4/drv_gfx_disp_intf_spi4.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_color.o: ../src/config/v1/gfx/legato/common/legato_color.c  .generated_files/flags/v1/c64a76dfea2415da35c347d660381acb1a03b121 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_color.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_color.o ../src/config/v1/gfx/legato/common/legato_color.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_color_blend.o: ../src/config/v1/gfx/legato/common/legato_color_blend.c  .generated_files/flags/v1/ea294af7a9fef2b8969ddd0f9a18448e72e62af9 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_color_blend.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_color_blend.o ../src/config/v1/gfx/legato/common/legato_color_blend.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_color_convert.o: ../src/config/v1/gfx/legato/common/legato_color_convert.c  .generated_files/flags/v1/767e85848b1d91c3c8a17e690b04e4fbdbd701e4 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_color_convert.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_color_convert.o ../src/config/v1/gfx/legato/common/legato_color_convert.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o: ../src/config/v1/gfx/legato/common/legato_color_lerp.c  .generated_files/flags/v1/a35d4c98544bf9be5502791b4ff8c36ceecd1c56 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_color_lerp.o ../src/config/v1/gfx/legato/common/legato_color_lerp.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_color_value.o: ../src/config/v1/gfx/legato/common/legato_color_value.c  .generated_files/flags/v1/bbf42827203e363108fef52e17a4676c47739715 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_color_value.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_color_value.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_color_value.o ../src/config/v1/gfx/legato/common/legato_color_value.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_error.o: ../src/config/v1/gfx/legato/common/legato_error.c  .generated_files/flags/v1/54b0e666728c7500b416c31e378232b1cbbf44f9 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_error.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_error.o ../src/config/v1/gfx/legato/common/legato_error.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_math.o: ../src/config/v1/gfx/legato/common/legato_math.c  .generated_files/flags/v1/cb4415cc755e3c59ed64f2a7bd231920e6e42ad6 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_math.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_math.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_math.o ../src/config/v1/gfx/legato/common/legato_math.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o: ../src/config/v1/gfx/legato/common/legato_pixelbuffer.c  .generated_files/flags/v1/2d81ba90712799b3bb712974294337e07db1d1 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_pixelbuffer.o ../src/config/v1/gfx/legato/common/legato_pixelbuffer.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_rect.o: ../src/config/v1/gfx/legato/common/legato_rect.c  .generated_files/flags/v1/b9deae832820e052d9ba38c9576f5ec9a497e869 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_rect.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_rect.o ../src/config/v1/gfx/legato/common/legato_rect.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1772391765/legato_utils.o: ../src/config/v1/gfx/legato/common/legato_utils.c  .generated_files/flags/v1/709f69828cd610b37926c85c22e78f9c449c5f25 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1772391765" 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1772391765/legato_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1772391765/legato_utils.o.d" -o ${OBJECTDIR}/_ext/1772391765/legato_utils.o ../src/config/v1/gfx/legato/common/legato_utils.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686758793/legato_event.o: ../src/config/v1/gfx/legato/core/legato_event.c  .generated_files/flags/v1/6fb2a84edffa075983de348a2844a12925183210 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686758793" 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686758793/legato_event.o.d" -o ${OBJECTDIR}/_ext/1686758793/legato_event.o ../src/config/v1/gfx/legato/core/legato_event.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686758793/legato_input.o: ../src/config/v1/gfx/legato/core/legato_input.c  .generated_files/flags/v1/cf5c48180e7e83bf9d6ad27c9c3e664f577c89e7 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686758793" 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686758793/legato_input.o.d" -o ${OBJECTDIR}/_ext/1686758793/legato_input.o ../src/config/v1/gfx/legato/core/legato_input.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686758793/legato_scheme.o: ../src/config/v1/gfx/legato/core/legato_scheme.c  .generated_files/flags/v1/36e81e5d86bf6f98c740297ae7782bf74cd95794 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686758793" 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686758793/legato_scheme.o.d" -o ${OBJECTDIR}/_ext/1686758793/legato_scheme.o ../src/config/v1/gfx/legato/core/legato_scheme.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686758793/legato_state.o: ../src/config/v1/gfx/legato/core/legato_state.c  .generated_files/flags/v1/6d15af907df52cfe9709e750de9bfe67717dc47c .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686758793" 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686758793/legato_state.o.d" -o ${OBJECTDIR}/_ext/1686758793/legato_state.o ../src/config/v1/gfx/legato/core/legato_state.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686758793/legato_stream.o: ../src/config/v1/gfx/legato/core/legato_stream.c  .generated_files/flags/v1/88dec0cae7231d2d095cb03f1461d36a48a36871 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686758793" 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686758793/legato_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686758793/legato_stream.o.d" -o ${OBJECTDIR}/_ext/1686758793/legato_stream.o ../src/config/v1/gfx/legato/core/legato_stream.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/148763041/legato_array.o: ../src/config/v1/gfx/legato/datastructure/legato_array.c  .generated_files/flags/v1/5a90de1070508169fcaa6eae5b7edef81adaab7b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/148763041" 
	@${RM} ${OBJECTDIR}/_ext/148763041/legato_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/148763041/legato_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/148763041/legato_array.o.d" -o ${OBJECTDIR}/_ext/148763041/legato_array.o ../src/config/v1/gfx/legato/datastructure/legato_array.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/148763041/legato_list.o: ../src/config/v1/gfx/legato/datastructure/legato_list.c  .generated_files/flags/v1/863b5a2e84663ee064dbe2ada3aea39fe07c7604 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/148763041" 
	@${RM} ${OBJECTDIR}/_ext/148763041/legato_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/148763041/legato_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/148763041/legato_list.o.d" -o ${OBJECTDIR}/_ext/148763041/legato_list.o ../src/config/v1/gfx/legato/datastructure/legato_list.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/148763041/legato_rectarray.o: ../src/config/v1/gfx/legato/datastructure/legato_rectarray.c  .generated_files/flags/v1/23ca381716e957b13af55a3ce5a9a0f33122722b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/148763041" 
	@${RM} ${OBJECTDIR}/_ext/148763041/legato_rectarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/148763041/legato_rectarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/148763041/legato_rectarray.o.d" -o ${OBJECTDIR}/_ext/148763041/legato_rectarray.o ../src/config/v1/gfx/legato/datastructure/legato_rectarray.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686848057/legato_font.o: ../src/config/v1/gfx/legato/font/legato_font.c  .generated_files/flags/v1/251b572c964b95c84bbddba81ea2cb15367bb7a5 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686848057" 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_font.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_font.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686848057/legato_font.o.d" -o ${OBJECTDIR}/_ext/1686848057/legato_font.o ../src/config/v1/gfx/legato/font/legato_font.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o: ../src/config/v1/gfx/legato/font/legato_rasterfont_liberationmono1.c  .generated_files/flags/v1/3b90efdafbd3fb764f3cf5d6aeee94acb5f37bcc .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686848057" 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o.d" -o ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono1.o ../src/config/v1/gfx/legato/font/legato_rasterfont_liberationmono1.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o: ../src/config/v1/gfx/legato/font/legato_rasterfont_liberationmono8.c  .generated_files/flags/v1/a44c07373f66034d36b344f0655f5f2140737cb4 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686848057" 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o.d" -o ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_liberationmono8.o ../src/config/v1/gfx/legato/font/legato_rasterfont_liberationmono8.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o: ../src/config/v1/gfx/legato/font/legato_rasterfont_stream.c  .generated_files/flags/v1/e1ae7a9905a2555aba7fcfeea8d28734c55d32e0 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1686848057" 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o.d" -o ${OBJECTDIR}/_ext/1686848057/legato_rasterfont_stream.o ../src/config/v1/gfx/legato/font/legato_rasterfont_stream.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/66011591/le_gen_fonts.o: ../src/config/v1/gfx/legato/generated/font/le_gen_fonts.c  .generated_files/flags/v1/5bae55e1019c0d7c561d3da068e0004b1cef4430 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/66011591" 
	@${RM} ${OBJECTDIR}/_ext/66011591/le_gen_fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/66011591/le_gen_fonts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/66011591/le_gen_fonts.o.d" -o ${OBJECTDIR}/_ext/66011591/le_gen_fonts.o ../src/config/v1/gfx/legato/generated/font/le_gen_fonts.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2043661135/le_gen_images.o: ../src/config/v1/gfx/legato/generated/image/le_gen_images.c  .generated_files/flags/v1/ffb9327a3e583e6e7dd624ec1c305cae638866d8 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2043661135" 
	@${RM} ${OBJECTDIR}/_ext/2043661135/le_gen_images.o.d 
	@${RM} ${OBJECTDIR}/_ext/2043661135/le_gen_images.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2043661135/le_gen_images.o.d" -o ${OBJECTDIR}/_ext/2043661135/le_gen_images.o ../src/config/v1/gfx/legato/generated/image/le_gen_images.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o: ../src/config/v1/gfx/legato/generated/screen/le_gen_screen_Screen0.c  .generated_files/flags/v1/2895013e17a20d549f63672da3e6782d55842d64 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1348575190" 
	@${RM} ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o.d" -o ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen0.o ../src/config/v1/gfx/legato/generated/screen/le_gen_screen_Screen0.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o: ../src/config/v1/gfx/legato/generated/le_gen_globalpalette.c  .generated_files/flags/v1/2b23bdfb1f64d5e6eee309d1a3f2053cb8ceee3f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/767985125" 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o.d 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o.d" -o ${OBJECTDIR}/_ext/767985125/le_gen_globalpalette.o ../src/config/v1/gfx/legato/generated/le_gen_globalpalette.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/767985125/le_gen_harmony.o: ../src/config/v1/gfx/legato/generated/le_gen_harmony.c  .generated_files/flags/v1/ca6e639f76f0bd69e686972eae4467b1755827a3 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/767985125" 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/767985125/le_gen_harmony.o.d" -o ${OBJECTDIR}/_ext/767985125/le_gen_harmony.o ../src/config/v1/gfx/legato/generated/le_gen_harmony.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/767985125/le_gen_init.o: ../src/config/v1/gfx/legato/generated/le_gen_init.c  .generated_files/flags/v1/ed07906c044d5291748bd2102a6617609ceafa10 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/767985125" 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/767985125/le_gen_init.o.d" -o ${OBJECTDIR}/_ext/767985125/le_gen_init.o ../src/config/v1/gfx/legato/generated/le_gen_init.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o: ../src/config/v1/gfx/legato/generated/le_gen_stringtable.c  .generated_files/flags/v1/e8409c77ff43c190d3c5992cb7bc0dd3e0d3afbc .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/767985125" 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o.d 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o.d" -o ${OBJECTDIR}/_ext/767985125/le_gen_stringtable.o ../src/config/v1/gfx/legato/generated/le_gen_stringtable.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/767985125/le_gen_scheme.o: ../src/config/v1/gfx/legato/generated/le_gen_scheme.c  .generated_files/flags/v1/7679a6b18ec99dad2a4f48531accd09afc38e90a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/767985125" 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/767985125/le_gen_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/767985125/le_gen_scheme.o.d" -o ${OBJECTDIR}/_ext/767985125/le_gen_scheme.o ../src/config/v1/gfx/legato/generated/le_gen_scheme.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o: ../src/config/v1/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c  .generated_files/flags/v1/f3d2ee5063843e840bb3d48a5be253315b486327 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/539608838" 
	@${RM} ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o.d 
	@${RM} ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o.d" -o ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg.o ../src/config/v1/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o: ../src/config/v1/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c  .generated_files/flags/v1/e0e3b0dbae4430885f3c5896363d419e15e73ed .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/539608838" 
	@${RM} ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o.d" -o ${OBJECTDIR}/_ext/539608838/legato_imagedecoder_jpeg_common.o ../src/config/v1/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/539608838/jidctint.o: ../src/config/v1/gfx/legato/image/jpeg/jidctint.c  .generated_files/flags/v1/1668c47116b4d0692eabc7b92dd08a460b58811b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/539608838" 
	@${RM} ${OBJECTDIR}/_ext/539608838/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/539608838/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/539608838/jidctint.o.d" -o ${OBJECTDIR}/_ext/539608838/jidctint.o ../src/config/v1/gfx/legato/image/jpeg/jidctint.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o: ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono.c  .generated_files/flags/v1/7ed65ae0d417501dee0019167c1b119706790532 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/539697537" 
	@${RM} ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o.d 
	@${RM} ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o.d" -o ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono.o ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o: ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c  .generated_files/flags/v1/e49c468ad98a295245ae7125146114a6d355dd09 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/539697537" 
	@${RM} ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o.d" -o ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_internal.o ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o: ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c  .generated_files/flags/v1/561f1b87fdb6abd578d36e9534d592d245c12867 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/539697537" 
	@${RM} ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o.d" -o ${OBJECTDIR}/_ext/539697537/legato_imagedecoder_mono_read_stream.o ../src/config/v1/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o: ../src/config/v1/gfx/legato/image/png/legato_imagedecoder_png.c  .generated_files/flags/v1/95fe35d8d156fae4072fb9ffd3ae99cd74b39963 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398229557" 
	@${RM} ${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o.d 
	@${RM} ${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o.d" -o ${OBJECTDIR}/_ext/398229557/legato_imagedecoder_png.o ../src/config/v1/gfx/legato/image/png/legato_imagedecoder_png.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398229557/lodepng.o: ../src/config/v1/gfx/legato/image/png/lodepng.c  .generated_files/flags/v1/9294e4801c75fb77f10a4bbb98f17621714c11e4 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398229557" 
	@${RM} ${OBJECTDIR}/_ext/398229557/lodepng.o.d 
	@${RM} ${OBJECTDIR}/_ext/398229557/lodepng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398229557/lodepng.o.d" -o ${OBJECTDIR}/_ext/398229557/lodepng.o ../src/config/v1/gfx/legato/image/png/lodepng.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw.c  .generated_files/flags/v1/83153b6ad3bff1ec3371ae91143a4353c64b2f6d .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c  .generated_files/flags/v1/59f201c730b98823f2e140e5726dd6705d7c5c06 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_blend.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c  .generated_files/flags/v1/2398c14590544ba4ad9152895823c0e74c46d25a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_convert.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c  .generated_files/flags/v1/6319d5ed1bd25e878b5c2fe8230044a2cc910015 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_mask.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c  .generated_files/flags/v1/127a600b3a925f1aa902b97b6c1a14fc7d454efc .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_internal.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c  .generated_files/flags/v1/b8602cd22ac01b28781a000b1a2dcd7cd8d9bbcd .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_palette_stream.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c  .generated_files/flags/v1/346ee1cf8405de9544aec3dfce3bb49737925a01 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_internal.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c  .generated_files/flags/v1/ef5f49e458bf866e8d9e0da73d94529055672054 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_color.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c  .generated_files/flags/v1/bbf164555e099b3983c35b36777e3254261676d3 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_index.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c  .generated_files/flags/v1/28c88de6aceacf196ba378a6d4494c42ac677266 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rlecolor.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c  .generated_files/flags/v1/aff083d21af4e6e9280e9b0806018b82b075d7f4 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_read_stream_rleindex.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c  .generated_files/flags/v1/8cceeeb9018999f39faa06ea41f0687e7488c13f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_rotate.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c  .generated_files/flags/v1/109367244a923c1648653adb6d89b36f21474fee .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_scale.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c  .generated_files/flags/v1/84db4a1c8c34b3ae5a905d475018be921355ca06 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_setup.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o: ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_write.c  .generated_files/flags/v1/bfebab2f28fdcb80a9b7b8910b7cf86f339fcd0a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/398228022" 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o.d" -o ${OBJECTDIR}/_ext/398228022/legato_imagedecoder_raw_write.o ../src/config/v1/gfx/legato/image/raw/legato_imagedecoder_raw_write.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/755380401/legato_image.o: ../src/config/v1/gfx/legato/image/legato_image.c  .generated_files/flags/v1/af17038ab3be43df745ab2aa86645e3e0a2fc408 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/755380401" 
	@${RM} ${OBJECTDIR}/_ext/755380401/legato_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/755380401/legato_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/755380401/legato_image.o.d" -o ${OBJECTDIR}/_ext/755380401/legato_image.o ../src/config/v1/gfx/legato/image/legato_image.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/755380401/legato_palette.o: ../src/config/v1/gfx/legato/image/legato_palette.c  .generated_files/flags/v1/61e8d0402090b3fd170c8bfa3fc363d392443fdc .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/755380401" 
	@${RM} ${OBJECTDIR}/_ext/755380401/legato_palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/755380401/legato_palette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/755380401/legato_palette.o.d" -o ${OBJECTDIR}/_ext/755380401/legato_palette.o ../src/config/v1/gfx/legato/image/legato_palette.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/755380401/legato_image_utils.o: ../src/config/v1/gfx/legato/image/legato_image_utils.c  .generated_files/flags/v1/fa7c38e745684edd5fd5e19a1fe8cfdb4e097c7a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/755380401" 
	@${RM} ${OBJECTDIR}/_ext/755380401/legato_image_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/755380401/legato_image_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/755380401/legato_image_utils.o.d" -o ${OBJECTDIR}/_ext/755380401/legato_image_utils.o ../src/config/v1/gfx/legato/image/legato_image_utils.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o: ../src/config/v1/gfx/legato/memory/legato_fixedheap.c  .generated_files/flags/v1/7f0640d8ca9d37714a2e55d80f6c02773b55ee95 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2049450091" 
	@${RM} ${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o.d" -o ${OBJECTDIR}/_ext/2049450091/legato_fixedheap.o ../src/config/v1/gfx/legato/memory/legato_fixedheap.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2049450091/legato_memory.o: ../src/config/v1/gfx/legato/memory/legato_memory.c  .generated_files/flags/v1/20c0988f7a49a4799cf4a1e37110c7e0f360fc04 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2049450091" 
	@${RM} ${OBJECTDIR}/_ext/2049450091/legato_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049450091/legato_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2049450091/legato_memory.o.d" -o ${OBJECTDIR}/_ext/2049450091/legato_memory.o ../src/config/v1/gfx/legato/memory/legato_memory.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2049450091/legato_variableheap.o: ../src/config/v1/gfx/legato/memory/legato_variableheap.c  .generated_files/flags/v1/3d7babb03c0661797aae9aea205e9173e75022ea .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2049450091" 
	@${RM} ${OBJECTDIR}/_ext/2049450091/legato_variableheap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2049450091/legato_variableheap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2049450091/legato_variableheap.o.d" -o ${OBJECTDIR}/_ext/2049450091/legato_variableheap.o ../src/config/v1/gfx/legato/memory/legato_variableheap.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1726254675/legato_draw.o: ../src/config/v1/gfx/legato/renderer/legato_draw.c  .generated_files/flags/v1/917674cc03a5e5445a31e6a4f728d03bf680ae65 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1726254675" 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1726254675/legato_draw.o.d" -o ${OBJECTDIR}/_ext/1726254675/legato_draw.o ../src/config/v1/gfx/legato/renderer/legato_draw.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o: ../src/config/v1/gfx/legato/renderer/legato_draw_arc.c  .generated_files/flags/v1/66f1930a8932bedc775aca7b98808ec5ec637a27 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1726254675" 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o.d" -o ${OBJECTDIR}/_ext/1726254675/legato_draw_arc.o ../src/config/v1/gfx/legato/renderer/legato_draw_arc.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1726254675/legato_draw_line.o: ../src/config/v1/gfx/legato/renderer/legato_draw_line.c  .generated_files/flags/v1/87cfa119402371b41fd8ba6b8d6b40e62ad8c0bf .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1726254675" 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1726254675/legato_draw_line.o.d" -o ${OBJECTDIR}/_ext/1726254675/legato_draw_line.o ../src/config/v1/gfx/legato/renderer/legato_draw_line.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o: ../src/config/v1/gfx/legato/renderer/legato_draw_rect.c  .generated_files/flags/v1/32a4ffa4675e370ce63ce46aa49ddf7c00413518 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1726254675" 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o.d" -o ${OBJECTDIR}/_ext/1726254675/legato_draw_rect.o ../src/config/v1/gfx/legato/renderer/legato_draw_rect.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1726254675/legato_renderer.o: ../src/config/v1/gfx/legato/renderer/legato_renderer.c  .generated_files/flags/v1/1b52da5646d2ec4937ecb6631ccc6cf7b65a6969 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1726254675" 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_renderer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_renderer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1726254675/legato_renderer.o.d" -o ${OBJECTDIR}/_ext/1726254675/legato_renderer.o ../src/config/v1/gfx/legato/renderer/legato_renderer.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1726254675/legato_gpu.o: ../src/config/v1/gfx/legato/renderer/legato_gpu.c  .generated_files/flags/v1/81459327406c20e146e452a862360b1e50feb383 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1726254675" 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_gpu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1726254675/legato_gpu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1726254675/legato_gpu.o.d" -o ${OBJECTDIR}/_ext/1726254675/legato_gpu.o ../src/config/v1/gfx/legato/renderer/legato_gpu.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o: ../src/config/v1/gfx/legato/string/legato_dynamicstring.c  .generated_files/flags/v1/9e4a239f01beec1dd42fa45e98a777d41f85c5f3 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_dynamicstring.o ../src/config/v1/gfx/legato/string/legato_dynamicstring.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o: ../src/config/v1/gfx/legato/string/legato_fixedstring.c  .generated_files/flags/v1/fae0d269a900e71d6dde2822ef5f35c94eeff2fb .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_fixedstring.o ../src/config/v1/gfx/legato/string/legato_fixedstring.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_string.o: ../src/config/v1/gfx/legato/string/legato_string.c  .generated_files/flags/v1/1fdb63299896f280c9c6f634a0b57ccfac603081 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_string.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_string.o ../src/config/v1/gfx/legato/string/legato_string.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o: ../src/config/v1/gfx/legato/string/legato_string_renderer.c  .generated_files/flags/v1/c6392b7b60f26a7ff9274407f0e5db9072a17e4e .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_string_renderer.o ../src/config/v1/gfx/legato/string/legato_string_renderer.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o: ../src/config/v1/gfx/legato/string/legato_string_renderer_stream.c  .generated_files/flags/v1/a4aa9265d7f27b33244e0b86de50d438133398bb .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_string_renderer_stream.o ../src/config/v1/gfx/legato/string/legato_string_renderer_stream.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_stringtable.o: ../src/config/v1/gfx/legato/string/legato_stringtable.c  .generated_files/flags/v1/6802291c4c050153717d860ecb8240bdff6f1603 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_stringtable.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_stringtable.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_stringtable.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_stringtable.o ../src/config/v1/gfx/legato/string/legato_stringtable.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_tablestring.o: ../src/config/v1/gfx/legato/string/legato_tablestring.c  .generated_files/flags/v1/fcc4875f301e29f281e667d269435c35c3655385 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_tablestring.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_tablestring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_tablestring.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_tablestring.o ../src/config/v1/gfx/legato/string/legato_tablestring.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2059746437/legato_stringutils.o: ../src/config/v1/gfx/legato/string/legato_stringutils.c  .generated_files/flags/v1/1b48e13bca7ce98fa1449c83055246ce99f2b0cc .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2059746437" 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_stringutils.o.d 
	@${RM} ${OBJECTDIR}/_ext/2059746437/legato_stringutils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2059746437/legato_stringutils.o.d" -o ${OBJECTDIR}/_ext/2059746437/legato_stringutils.o ../src/config/v1/gfx/legato/string/legato_stringutils.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o: ../src/config/v1/gfx/legato/widget/arc/legato_widget_arc.c  .generated_files/flags/v1/f925fcb2cbd12e909c59911138bdb3e9e1333091 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1718685297" 
	@${RM} ${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o.d" -o ${OBJECTDIR}/_ext/1718685297/legato_widget_arc.o ../src/config/v1/gfx/legato/widget/arc/legato_widget_arc.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o: ../src/config/v1/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c  .generated_files/flags/v1/6172d2627d30a9138e8360fe92b8082a25530b62 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1718685297" 
	@${RM} ${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1718685297/legato_widget_arc_skin_classic.o ../src/config/v1/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o: ../src/config/v1/gfx/legato/widget/bargraph/legato_widget_bar_graph.c  .generated_files/flags/v1/8a35d50101c72ca1b6c4f08d73bc8385869d333e .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1595146148" 
	@${RM} ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o.d" -o ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph.o ../src/config/v1/gfx/legato/widget/bargraph/legato_widget_bar_graph.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o: ../src/config/v1/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c  .generated_files/flags/v1/d8fed8566a17ac6fb8e104b54b7846b67ed4171 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1595146148" 
	@${RM} ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1595146148/legato_widget_bar_graph_skin_classic.o ../src/config/v1/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1080568499/legato_widget_button.o: ../src/config/v1/gfx/legato/widget/button/legato_widget_button.c  .generated_files/flags/v1/842a5fb06f139d15abf017e2a37fbc6583dd294e .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1080568499" 
	@${RM} ${OBJECTDIR}/_ext/1080568499/legato_widget_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1080568499/legato_widget_button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1080568499/legato_widget_button.o.d" -o ${OBJECTDIR}/_ext/1080568499/legato_widget_button.o ../src/config/v1/gfx/legato/widget/button/legato_widget_button.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o: ../src/config/v1/gfx/legato/widget/button/legato_widget_button_skin_classic.c  .generated_files/flags/v1/8fb78ca3d8f94da6a1865d828c1d21c62d4536b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1080568499" 
	@${RM} ${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1080568499/legato_widget_button_skin_classic.o ../src/config/v1/gfx/legato/widget/button/legato_widget_button_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o: ../src/config/v1/gfx/legato/widget/checkbox/legato_widget_checkbox.c  .generated_files/flags/v1/47c23d824b55ec13089cafe7ad28d46e001e6432 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1689142020" 
	@${RM} ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o.d" -o ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox.o ../src/config/v1/gfx/legato/widget/checkbox/legato_widget_checkbox.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o: ../src/config/v1/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c  .generated_files/flags/v1/bb4295179c6c28f5d2a016d75306324a17ed91b8 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1689142020" 
	@${RM} ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1689142020/legato_widget_checkbox_skin_classic.o ../src/config/v1/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o: ../src/config/v1/gfx/legato/widget/circle/legato_widget_circle.c  .generated_files/flags/v1/e7a9a99b047b61b626f2ffde329590b088230a32 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1098039377" 
	@${RM} ${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o.d" -o ${OBJECTDIR}/_ext/1098039377/legato_widget_circle.o ../src/config/v1/gfx/legato/widget/circle/legato_widget_circle.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o: ../src/config/v1/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c  .generated_files/flags/v1/4dad80554ff26ac65c84f1a73bf7ecec6944b154 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1098039377" 
	@${RM} ${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1098039377/legato_widget_circle_skin_classic.o ../src/config/v1/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o: ../src/config/v1/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c  .generated_files/flags/v1/20738d601ec941c1f7cc5e723f2c1a2e55465bdc .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/996331289" 
	@${RM} ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o.d 
	@${RM} ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o.d" -o ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge.o ../src/config/v1/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o: ../src/config/v1/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c  .generated_files/flags/v1/a9f0817764e402c3d4e84811daa5a93045231393 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/996331289" 
	@${RM} ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o.d" -o ${OBJECTDIR}/_ext/996331289/legato_widget_circular_gauge_skin_classic.o ../src/config/v1/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o: ../src/config/v1/gfx/legato/widget/circularslider/legato_widget_circular_slider.c  .generated_files/flags/v1/b8c13addd0b77c0a6025195452b25e1323e061e1 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1174847169" 
	@${RM} ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o.d" -o ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider.o ../src/config/v1/gfx/legato/widget/circularslider/legato_widget_circular_slider.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o: ../src/config/v1/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c  .generated_files/flags/v1/cf3609fe7fe01792f312635e8a63d92e3e8fc898 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1174847169" 
	@${RM} ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1174847169/legato_widget_circular_slider_skin_classic.o ../src/config/v1/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o: ../src/config/v1/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c  .generated_files/flags/v1/31a244ae9a370fc150bd4841173e985a28eb5d92 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/118689800" 
	@${RM} ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o.d 
	@${RM} ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o.d" -o ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface.o ../src/config/v1/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o: ../src/config/v1/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c  .generated_files/flags/v1/4f580d1f123d740b45f557d3406ed4491007ba93 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/118689800" 
	@${RM} ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o.d" -o ${OBJECTDIR}/_ext/118689800/legato_widget_drawsurface_skin_classic.o ../src/config/v1/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o: ../src/config/v1/gfx/legato/widget/gradient/legato_widget_gradient.c  .generated_files/flags/v1/def9ab956b6e1ab2601b18925559332662944682 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/241901169" 
	@${RM} ${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o.d 
	@${RM} ${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o.d" -o ${OBJECTDIR}/_ext/241901169/legato_widget_gradient.o ../src/config/v1/gfx/legato/widget/gradient/legato_widget_gradient.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o: ../src/config/v1/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c  .generated_files/flags/v1/d2b613f0243d1cbe8099796dd4803ac6a590ae28 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/241901169" 
	@${RM} ${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o.d" -o ${OBJECTDIR}/_ext/241901169/legato_widget_gradient_skin_classic.o ../src/config/v1/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o: ../src/config/v1/gfx/legato/widget/groupbox/legato_widget_groupbox.c  .generated_files/flags/v1/d0030d7edf3f88ad36c6fb5b1b617961e5e2a29e .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/658614829" 
	@${RM} ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o.d" -o ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox.o ../src/config/v1/gfx/legato/widget/groupbox/legato_widget_groupbox.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o: ../src/config/v1/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c  .generated_files/flags/v1/689c5655033636a3ce69b1ee6b2a0c2adb33a464 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/658614829" 
	@${RM} ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/658614829/legato_widget_groupbox_skin_classic.o ../src/config/v1/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1898597958/legato_widget_image.o: ../src/config/v1/gfx/legato/widget/image/legato_widget_image.c  .generated_files/flags/v1/e62e669e0847135cb84f42565efd9707d2c6986a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1898597958" 
	@${RM} ${OBJECTDIR}/_ext/1898597958/legato_widget_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1898597958/legato_widget_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1898597958/legato_widget_image.o.d" -o ${OBJECTDIR}/_ext/1898597958/legato_widget_image.o ../src/config/v1/gfx/legato/widget/image/legato_widget_image.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o: ../src/config/v1/gfx/legato/widget/image/legato_widget_image_skin_classic.c  .generated_files/flags/v1/30229952f794313e03a639164746a0d85f57a4e4 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1898597958" 
	@${RM} ${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1898597958/legato_widget_image_skin_classic.o ../src/config/v1/gfx/legato/widget/image/legato_widget_image_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o: ../src/config/v1/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c  .generated_files/flags/v1/4b4c6f15e7ef8008bd7cc606b5f101f9b3df8fea .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1037116523" 
	@${RM} ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o.d" -o ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate.o ../src/config/v1/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o: ../src/config/v1/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c  .generated_files/flags/v1/d948732154a0b957441fd8691bdf0bf24b31343d .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1037116523" 
	@${RM} ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1037116523/legato_widget_imagerotate_skin_classic.o ../src/config/v1/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o: ../src/config/v1/gfx/legato/widget/imagescale/legato_widget_imagescale.c  .generated_files/flags/v1/f0c15366008cd44e3b7c4d5ad54a7bd2158f4b5c .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1141285936" 
	@${RM} ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o.d" -o ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale.o ../src/config/v1/gfx/legato/widget/imagescale/legato_widget_imagescale.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o: ../src/config/v1/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c  .generated_files/flags/v1/dcec0d0448f0f2914a415b3f20f473adf4c95b01 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1141285936" 
	@${RM} ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1141285936/legato_widget_imagescale_skin_classic.o ../src/config/v1/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o: ../src/config/v1/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c  .generated_files/flags/v1/2a55758f67718de3f5bb20fd994801d1c60df98f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1153290107" 
	@${RM} ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o.d 
	@${RM} ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o.d" -o ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence.o ../src/config/v1/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o: ../src/config/v1/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c  .generated_files/flags/v1/ad8a87070965fce6057f08d9f0376658e646057a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1153290107" 
	@${RM} ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1153290107/legato_widget_imagesequence_skin_classic.o ../src/config/v1/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o: ../src/config/v1/gfx/legato/widget/keypad/legato_widget_keypad.c  .generated_files/flags/v1/5b4f332f881f10313e1d9aa54055d7e9bb0f4a94 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1323599189" 
	@${RM} ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o.d" -o ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad.o ../src/config/v1/gfx/legato/widget/keypad/legato_widget_keypad.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o: ../src/config/v1/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c  .generated_files/flags/v1/e56943f0e72c123d730cc0e0ac61f1e3b7bb3f1c .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1323599189" 
	@${RM} ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1323599189/legato_widget_keypad_skin_classic.o ../src/config/v1/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1896183981/legato_widget_label.o: ../src/config/v1/gfx/legato/widget/label/legato_widget_label.c  .generated_files/flags/v1/c91feb79493c8033abc0f4411ed477e78a489b81 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1896183981" 
	@${RM} ${OBJECTDIR}/_ext/1896183981/legato_widget_label.o.d 
	@${RM} ${OBJECTDIR}/_ext/1896183981/legato_widget_label.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1896183981/legato_widget_label.o.d" -o ${OBJECTDIR}/_ext/1896183981/legato_widget_label.o ../src/config/v1/gfx/legato/widget/label/legato_widget_label.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o: ../src/config/v1/gfx/legato/widget/label/legato_widget_label_skin_classic.c  .generated_files/flags/v1/3842e4a68f726c4c1075b71437ca93732c027582 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1896183981" 
	@${RM} ${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1896183981/legato_widget_label_skin_classic.o ../src/config/v1/gfx/legato/widget/label/legato_widget_label_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1739956149/legato_widget_line.o: ../src/config/v1/gfx/legato/widget/line/legato_widget_line.c  .generated_files/flags/v1/74458e6b2ee7b9bdde4ba0719e08d490b59b1851 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1739956149" 
	@${RM} ${OBJECTDIR}/_ext/1739956149/legato_widget_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1739956149/legato_widget_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1739956149/legato_widget_line.o.d" -o ${OBJECTDIR}/_ext/1739956149/legato_widget_line.o ../src/config/v1/gfx/legato/widget/line/legato_widget_line.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o: ../src/config/v1/gfx/legato/widget/line/legato_widget_line_skin_classic.c  .generated_files/flags/v1/6e3173e5f2dcafd59cfe895946161062c5a6f85e .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1739956149" 
	@${RM} ${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1739956149/legato_widget_line_skin_classic.o ../src/config/v1/gfx/legato/widget/line/legato_widget_line_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o: ../src/config/v1/gfx/legato/widget/linegraph/legato_widget_line_graph.c  .generated_files/flags/v1/3bb5a1786c57e1784733323a25c2b62b138666d8 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1363957063" 
	@${RM} ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o.d" -o ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph.o ../src/config/v1/gfx/legato/widget/linegraph/legato_widget_line_graph.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o: ../src/config/v1/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c  .generated_files/flags/v1/572b90c10c0acd0fc021cc518871e9379c112f77 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1363957063" 
	@${RM} ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1363957063/legato_widget_line_graph_skin_classic.o ../src/config/v1/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1739956319/legato_widget_list.o: ../src/config/v1/gfx/legato/widget/list/legato_widget_list.c  .generated_files/flags/v1/df982f8cb18e0d4d12415b2bcad30a5fd9c0f427 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1739956319" 
	@${RM} ${OBJECTDIR}/_ext/1739956319/legato_widget_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1739956319/legato_widget_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1739956319/legato_widget_list.o.d" -o ${OBJECTDIR}/_ext/1739956319/legato_widget_list.o ../src/config/v1/gfx/legato/widget/list/legato_widget_list.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o: ../src/config/v1/gfx/legato/widget/list/legato_widget_list_skin_classic.c  .generated_files/flags/v1/58105ba1972ed6c637a9449e4c7de91eb34aaeb2 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1739956319" 
	@${RM} ${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1739956319/legato_widget_list_skin_classic.o ../src/config/v1/gfx/legato/widget/list/legato_widget_list_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o: ../src/config/v1/gfx/legato/widget/listwheel/legato_widget_listwheel.c  .generated_files/flags/v1/b8fff271924614902b59d69503cf333736846262 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/777486756" 
	@${RM} ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o.d 
	@${RM} ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o.d" -o ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel.o ../src/config/v1/gfx/legato/widget/listwheel/legato_widget_listwheel.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o: ../src/config/v1/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c  .generated_files/flags/v1/3074a5f7a33da24e7976364c71f5cc4751a283b1 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/777486756" 
	@${RM} ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o.d" -o ${OBJECTDIR}/_ext/777486756/legato_widget_listwheel_skin_classic.o ../src/config/v1/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o: ../src/config/v1/gfx/legato/widget/piechart/legato_widget_pie_chart.c  .generated_files/flags/v1/ab29ac2af2b2d14d43c2f86407bb57315088eb31 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/536713965" 
	@${RM} ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o.d" -o ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart.o ../src/config/v1/gfx/legato/widget/piechart/legato_widget_pie_chart.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o: ../src/config/v1/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c  .generated_files/flags/v1/19328a8d4cce9467afe25cf6a8361c4bbb258eeb .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/536713965" 
	@${RM} ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o.d" -o ${OBJECTDIR}/_ext/536713965/legato_widget_pie_chart_skin_classic.o ../src/config/v1/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o: ../src/config/v1/gfx/legato/widget/progressbar/legato_widget_progressbar.c  .generated_files/flags/v1/a7fc1aa3a9deab2f46ac8ad56cd9a4f7c6f5cd82 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1331098597" 
	@${RM} ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o.d" -o ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar.o ../src/config/v1/gfx/legato/widget/progressbar/legato_widget_progressbar.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o: ../src/config/v1/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c  .generated_files/flags/v1/307a100aa6f4525b0949425bc23c8ecc9abf9b20 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1331098597" 
	@${RM} ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1331098597/legato_widget_progressbar_skin_classic.o ../src/config/v1/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o: ../src/config/v1/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c  .generated_files/flags/v1/f5703f4a7928074c0e2e386fb16f41d4293d87de .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/107498753" 
	@${RM} ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o.d" -o ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu.o ../src/config/v1/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o: ../src/config/v1/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c  .generated_files/flags/v1/27d60c17b6150b7878bc40f0c33ffd3f3b0c07a0 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/107498753" 
	@${RM} ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o.d" -o ${OBJECTDIR}/_ext/107498753/legato_widget_radial_menu_skin_classic.o ../src/config/v1/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o: ../src/config/v1/gfx/legato/widget/radiobutton/legato_radiobutton_group.c  .generated_files/flags/v1/80f4520a51c39f4acb4a62c7bb3979a6541c913f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/224204812" 
	@${RM} ${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o.d 
	@${RM} ${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o.d" -o ${OBJECTDIR}/_ext/224204812/legato_radiobutton_group.o ../src/config/v1/gfx/legato/widget/radiobutton/legato_radiobutton_group.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o: ../src/config/v1/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c  .generated_files/flags/v1/9aab55517fb980fb11663c4618ac5c92705d4c0f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/224204812" 
	@${RM} ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o.d" -o ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton.o ../src/config/v1/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o: ../src/config/v1/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c  .generated_files/flags/v1/ea61eeaa3656cf594b6f67d71f8462bd9eb16020 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/224204812" 
	@${RM} ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o.d" -o ${OBJECTDIR}/_ext/224204812/legato_widget_radiobutton_skin_classic.o ../src/config/v1/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o: ../src/config/v1/gfx/legato/widget/rectangle/legato_widget_rectangle.c  .generated_files/flags/v1/1b7a2f71b008d4f519efeec37e8cffadcf422003 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1546088014" 
	@${RM} ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o.d" -o ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle.o ../src/config/v1/gfx/legato/widget/rectangle/legato_widget_rectangle.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o: ../src/config/v1/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c  .generated_files/flags/v1/2d65b205ace0c0d6a81d4ed3f33ea1549f1481be .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1546088014" 
	@${RM} ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1546088014/legato_widget_rectangle_skin_classic.o ../src/config/v1/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o: ../src/config/v1/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c  .generated_files/flags/v1/8a29eb1e9a42a4c5df26f3fb6269d2bfef9e0e24 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/842581765" 
	@${RM} ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o.d" -o ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar.o ../src/config/v1/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o: ../src/config/v1/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c  .generated_files/flags/v1/2470bdefdd04f5d4a53d4bd3cee7a882a00a50b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/842581765" 
	@${RM} ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/842581765/legato_widget_scrollbar_skin_classic.o ../src/config/v1/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o: ../src/config/v1/gfx/legato/widget/slider/legato_widget_slider.c  .generated_files/flags/v1/4b1bdb78212fa13860e65b275d8d9a174bc97b3a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1558608994" 
	@${RM} ${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o.d" -o ${OBJECTDIR}/_ext/1558608994/legato_widget_slider.o ../src/config/v1/gfx/legato/widget/slider/legato_widget_slider.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o: ../src/config/v1/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c  .generated_files/flags/v1/df007c98816a133399884dd6ce65c9e59f0b382b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1558608994" 
	@${RM} ${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1558608994/legato_widget_slider_skin_classic.o ../src/config/v1/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o: ../src/config/v1/gfx/legato/widget/textfield/legato_widget_textfield.c  .generated_files/flags/v1/f58dd90de7bfa13770ba01d9350e613011cd151b .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/606646068" 
	@${RM} ${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o.d 
	@${RM} ${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o.d" -o ${OBJECTDIR}/_ext/606646068/legato_widget_textfield.o ../src/config/v1/gfx/legato/widget/textfield/legato_widget_textfield.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o: ../src/config/v1/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c  .generated_files/flags/v1/669e700df9ebe501e1c0361df71d8fb457fb1f60 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/606646068" 
	@${RM} ${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o.d" -o ${OBJECTDIR}/_ext/606646068/legato_widget_textfield_skin_classic.o ../src/config/v1/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o: ../src/config/v1/gfx/legato/widget/touchtest/legato_widget_touchtest.c  .generated_files/flags/v1/1fe65e53f9e63c47c46daacacf91168255c09108 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/789523760" 
	@${RM} ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o.d" -o ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest.o ../src/config/v1/gfx/legato/widget/touchtest/legato_widget_touchtest.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o: ../src/config/v1/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c  .generated_files/flags/v1/ba6b03ce1df8f8f40c849d287ac12932d85ceae6 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/789523760" 
	@${RM} ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o.d" -o ${OBJECTDIR}/_ext/789523760/legato_widget_touchtest_skin_classic.o ../src/config/v1/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670504305/legato_widget_window.o: ../src/config/v1/gfx/legato/widget/window/legato_widget_window.c  .generated_files/flags/v1/f375f61f2bb016f4407688eff835289a6942650d .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1670504305" 
	@${RM} ${OBJECTDIR}/_ext/1670504305/legato_widget_window.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670504305/legato_widget_window.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670504305/legato_widget_window.o.d" -o ${OBJECTDIR}/_ext/1670504305/legato_widget_window.o ../src/config/v1/gfx/legato/widget/window/legato_widget_window.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o: ../src/config/v1/gfx/legato/widget/window/legato_widget_window_skin_classic.c  .generated_files/flags/v1/528f14a48843c81fd73b2b8d1da6c41abcb22ca2 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1670504305" 
	@${RM} ${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1670504305/legato_widget_window_skin_classic.o ../src/config/v1/gfx/legato/widget/window/legato_widget_window_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1955807826/legato_editwidget.o: ../src/config/v1/gfx/legato/widget/legato_editwidget.c  .generated_files/flags/v1/ed85184c4740fdb6efcd7b206b97cdf2c0266fef .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1955807826" 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_editwidget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_editwidget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1955807826/legato_editwidget.o.d" -o ${OBJECTDIR}/_ext/1955807826/legato_editwidget.o ../src/config/v1/gfx/legato/widget/legato_editwidget.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1955807826/legato_widget.o: ../src/config/v1/gfx/legato/widget/legato_widget.c  .generated_files/flags/v1/bba392a5a599bd7f997fcdd4385778254e93d6e7 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1955807826" 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_widget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_widget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1955807826/legato_widget.o.d" -o ${OBJECTDIR}/_ext/1955807826/legato_widget.o ../src/config/v1/gfx/legato/widget/legato_widget.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o: ../src/config/v1/gfx/legato/widget/legato_widget_skin_classic.c  .generated_files/flags/v1/7f9a5757b67831d2c8ed5eefe959d9c92f79e122 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1955807826" 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic.o ../src/config/v1/gfx/legato/widget/legato_widget_skin_classic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o: ../src/config/v1/gfx/legato/widget/legato_widget_skin_classic_common.c  .generated_files/flags/v1/263ebdfbe0d93bbbbb25826dcbdb79e88ce08314 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1955807826" 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o.d" -o ${OBJECTDIR}/_ext/1955807826/legato_widget_skin_classic_common.o ../src/config/v1/gfx/legato/widget/legato_widget_skin_classic_common.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/126375492/plib_clock.o: ../src/config/v1/peripheral/clock/plib_clock.c  .generated_files/flags/v1/fca9a488c838fc2023e2ab558e85f1593ab2528f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/126375492" 
	@${RM} ${OBJECTDIR}/_ext/126375492/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/126375492/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/126375492/plib_clock.o.d" -o ${OBJECTDIR}/_ext/126375492/plib_clock.o ../src/config/v1/peripheral/clock/plib_clock.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/835360036/plib_cmcc.o: ../src/config/v1/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/v1/d45d390fc65e4eab35e77f697a9ba4691cbfb92e .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/835360036" 
	@${RM} ${OBJECTDIR}/_ext/835360036/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/835360036/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/835360036/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/835360036/plib_cmcc.o ../src/config/v1/peripheral/cmcc/plib_cmcc.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/835330307/plib_dmac.o: ../src/config/v1/peripheral/dmac/plib_dmac.c  .generated_files/flags/v1/18c84aa27e5bee60aeb7e96813a463a575775231 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/835330307" 
	@${RM} ${OBJECTDIR}/_ext/835330307/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/835330307/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/835330307/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/835330307/plib_dmac.o ../src/config/v1/peripheral/dmac/plib_dmac.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/124226006/plib_evsys.o: ../src/config/v1/peripheral/evsys/plib_evsys.c  .generated_files/flags/v1/8dc510354af9057babfdc472cb057b66a25aaa48 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/124226006" 
	@${RM} ${OBJECTDIR}/_ext/124226006/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/124226006/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/124226006/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/124226006/plib_evsys.o ../src/config/v1/peripheral/evsys/plib_evsys.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/835023500/plib_nvic.o: ../src/config/v1/peripheral/nvic/plib_nvic.c  .generated_files/flags/v1/d9d8d1ceeb5b7cef17dd403dc196a28ebb00a884 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/835023500" 
	@${RM} ${OBJECTDIR}/_ext/835023500/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/835023500/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/835023500/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/835023500/plib_nvic.o ../src/config/v1/peripheral/nvic/plib_nvic.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o: ../src/config/v1/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/v1/b84c3424f42ad1fe261c60bbace75945816e4adf .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/269299134" 
	@${RM} ${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/269299134/plib_nvmctrl.o ../src/config/v1/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/834970349/plib_port.o: ../src/config/v1/peripheral/port/plib_port.c  .generated_files/flags/v1/e74aa7e7100c66da368e2c4edf05b252c36a83c9 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/834970349" 
	@${RM} ${OBJECTDIR}/_ext/834970349/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/834970349/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/834970349/plib_port.o.d" -o ${OBJECTDIR}/_ext/834970349/plib_port.o ../src/config/v1/peripheral/port/plib_port.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o: ../src/config/v1/peripheral/sercom/spi_master/plib_sercom1_spi_master.c  .generated_files/flags/v1/eb67001ed9d6ace7ace61308d21b107698de2c9d .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2136915279" 
	@${RM} ${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o.d" -o ${OBJECTDIR}/_ext/2136915279/plib_sercom1_spi_master.o ../src/config/v1/peripheral/sercom/spi_master/plib_sercom1_spi_master.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/273494143/plib_tc0.o: ../src/config/v1/peripheral/tc/plib_tc0.c  .generated_files/flags/v1/e2d8e728272fea8eede5d42ee9570a1f46e7f783 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/273494143" 
	@${RM} ${OBJECTDIR}/_ext/273494143/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/273494143/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/273494143/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/273494143/plib_tc0.o ../src/config/v1/peripheral/tc/plib_tc0.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/273494143/plib_tc1.o: ../src/config/v1/peripheral/tc/plib_tc1.c  .generated_files/flags/v1/a250d70851ff44eb207c8ba5b7aa911d6bb2f736 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/273494143" 
	@${RM} ${OBJECTDIR}/_ext/273494143/plib_tc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/273494143/plib_tc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/273494143/plib_tc1.o.d" -o ${OBJECTDIR}/_ext/273494143/plib_tc1.o ../src/config/v1/peripheral/tc/plib_tc1.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/273494143/plib_tc2.o: ../src/config/v1/peripheral/tc/plib_tc2.c  .generated_files/flags/v1/542facf3a5664ee5113aacf813763b15b7e79cc5 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/273494143" 
	@${RM} ${OBJECTDIR}/_ext/273494143/plib_tc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/273494143/plib_tc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/273494143/plib_tc2.o.d" -o ${OBJECTDIR}/_ext/273494143/plib_tc2.o ../src/config/v1/peripheral/tc/plib_tc2.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1496238808/xc32_monitor.o: ../src/config/v1/stdio/xc32_monitor.c  .generated_files/flags/v1/3b69401f07573742a2078932d0c3a20b471efcfc .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1496238808" 
	@${RM} ${OBJECTDIR}/_ext/1496238808/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496238808/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1496238808/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1496238808/xc32_monitor.o ../src/config/v1/stdio/xc32_monitor.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2051932195/sys_cache.o: ../src/config/v1/system/cache/sys_cache.c  .generated_files/flags/v1/4077ae4a16c93cc89da3f8b5fdd9fb8f8edfe26 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2051932195" 
	@${RM} ${OBJECTDIR}/_ext/2051932195/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/2051932195/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2051932195/sys_cache.o.d" -o ${OBJECTDIR}/_ext/2051932195/sys_cache.o ../src/config/v1/system/cache/sys_cache.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/547583527/sys_dma.o: ../src/config/v1/system/dma/sys_dma.c  .generated_files/flags/v1/6da5961e05a8bafeae2f66be8e2d1a10e115974c .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/547583527" 
	@${RM} ${OBJECTDIR}/_ext/547583527/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/547583527/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/547583527/sys_dma.o.d" -o ${OBJECTDIR}/_ext/547583527/sys_dma.o ../src/config/v1/system/dma/sys_dma.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2057873515/sys_input.o: ../src/config/v1/system/input/sys_input.c  .generated_files/flags/v1/5b1aec06e39c2de22ca493f3a583754d7b3794d2 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2057873515" 
	@${RM} ${OBJECTDIR}/_ext/2057873515/sys_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/2057873515/sys_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2057873515/sys_input.o.d" -o ${OBJECTDIR}/_ext/2057873515/sys_input.o ../src/config/v1/system/input/sys_input.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2057873515/sys_input_listener.o: ../src/config/v1/system/input/sys_input_listener.c  .generated_files/flags/v1/a0ffb0faa796ed972a27338ca60e9ca93f042d7d .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/2057873515" 
	@${RM} ${OBJECTDIR}/_ext/2057873515/sys_input_listener.o.d 
	@${RM} ${OBJECTDIR}/_ext/2057873515/sys_input_listener.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2057873515/sys_input_listener.o.d" -o ${OBJECTDIR}/_ext/2057873515/sys_input_listener.o ../src/config/v1/system/input/sys_input_listener.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1933103141/sys_int.o: ../src/config/v1/system/int/src/sys_int.c  .generated_files/flags/v1/a25003060862735625161f2d11be7b5fdc54c40a .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1933103141" 
	@${RM} ${OBJECTDIR}/_ext/1933103141/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1933103141/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1933103141/sys_int.o.d" -o ${OBJECTDIR}/_ext/1933103141/sys_int.o ../src/config/v1/system/int/src/sys_int.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1492590433/sys_time.o: ../src/config/v1/system/time/src/sys_time.c  .generated_files/flags/v1/7a2cd05fb2ecd2e00ddba8f624ab3d6852d68cc7 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1492590433" 
	@${RM} ${OBJECTDIR}/_ext/1492590433/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1492590433/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1492590433/sys_time.o.d" -o ${OBJECTDIR}/_ext/1492590433/sys_time.o ../src/config/v1/system/time/src/sys_time.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/179581970/initialization.o: ../src/config/v1/initialization.c  .generated_files/flags/v1/dfc48bad05297ff0ab13f209d5b10417064b2273 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/179581970" 
	@${RM} ${OBJECTDIR}/_ext/179581970/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/179581970/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/179581970/initialization.o.d" -o ${OBJECTDIR}/_ext/179581970/initialization.o ../src/config/v1/initialization.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/179581970/interrupts.o: ../src/config/v1/interrupts.c  .generated_files/flags/v1/5dca833d59ca9a84e2ca241d91b51e92b46262e3 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/179581970" 
	@${RM} ${OBJECTDIR}/_ext/179581970/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/179581970/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/179581970/interrupts.o.d" -o ${OBJECTDIR}/_ext/179581970/interrupts.o ../src/config/v1/interrupts.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/179581970/exceptions.o: ../src/config/v1/exceptions.c  .generated_files/flags/v1/f1054de6ea3ca49b16cc039b170738344cce3228 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/179581970" 
	@${RM} ${OBJECTDIR}/_ext/179581970/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/179581970/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/179581970/exceptions.o.d" -o ${OBJECTDIR}/_ext/179581970/exceptions.o ../src/config/v1/exceptions.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/179581970/startup_xc32.o: ../src/config/v1/startup_xc32.c  .generated_files/flags/v1/f260e73e0c7d66efebf4cc790514cbb758c2aeb1 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/179581970" 
	@${RM} ${OBJECTDIR}/_ext/179581970/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/179581970/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/179581970/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/179581970/startup_xc32.o ../src/config/v1/startup_xc32.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/179581970/libc_syscalls.o: ../src/config/v1/libc_syscalls.c  .generated_files/flags/v1/93a0e2fa37447124ff06ad15b085a622d17e3437 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/179581970" 
	@${RM} ${OBJECTDIR}/_ext/179581970/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/179581970/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/179581970/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/179581970/libc_syscalls.o ../src/config/v1/libc_syscalls.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/179581970/tasks.o: ../src/config/v1/tasks.c  .generated_files/flags/v1/bd726afba339f1580afb4d75e4a8f1fd7ac44180 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/179581970" 
	@${RM} ${OBJECTDIR}/_ext/179581970/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/179581970/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/179581970/tasks.o.d" -o ${OBJECTDIR}/_ext/179581970/tasks.o ../src/config/v1/tasks.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/v1/13537a4c49bf91e2fdd5ab1a4cd9c04cb39b0d6f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/v1/d992d2e01a87d20af6b27044f386eda42cb767f0 .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o: ../src/config/v1/gfx/legato/generated/screen/le_gen_screen_Screen1.c  .generated_files/flags/v1/c0ace1aa12955837daa2bd4b74832b46c51e4d9f .generated_files/flags/v1/68225b9c92765cae0cb8155a98422fc76a142c4d
	@${MKDIR} "${OBJECTDIR}/_ext/1348575190" 
	@${RM} ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O3 -fno-common -I"../src" -I"../src/config/v1" -I"../src/packs/ATSAMD51G19A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o.d" -o ${OBJECTDIR}/_ext/1348575190/le_gen_screen_Screen1.o ../src/config/v1/gfx/legato/generated/screen/le_gen_screen_Screen1.c    -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd51a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/grotest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/v1/ATSAMD51G19A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/grotest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd51a"
	
else
${DISTDIR}/grotest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/v1/ATSAMD51G19A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/grotest.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_v1=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd51a"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/grotest.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
