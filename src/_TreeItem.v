module gd

pub enum TreeItemTreeCellMode as i64 {
	cell_mode_string = 0
	cell_mode_check = 1
	cell_mode_range = 2
	cell_mode_icon = 3
	cell_mode_custom = 4
}

pub struct TreeItem {
	Object
}

pub fn (s &TreeItem) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TreeItem) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TreeItem) set_cell_mode(column i64, mode TreeItemTreeCellMode) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_cell_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 289920701)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	i64_mode := i64(mode)
	args[1] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_cell_mode(column i64) TreeItemTreeCellMode {
	mut result := i64(TreeItemTreeCellMode.cell_mode_string)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_cell_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3406114978)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TreeItemTreeCellMode(result)}
}

pub fn (s &TreeItem) set_auto_translate_mode(column i64, mode NodeAutoTranslateMode) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_auto_translate_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 287402019)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	i64_mode := i64(mode)
	args[1] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_auto_translate_mode(column i64) NodeAutoTranslateMode {
	mut result := i64(NodeAutoTranslateMode.auto_translate_mode_inherit)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_auto_translate_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 906302372)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NodeAutoTranslateMode(result)}
}

pub fn (s &TreeItem) set_edit_multiline(column i64, multiline bool) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_edit_multiline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&multiline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) is_edit_multiline(column i64) bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_edit_multiline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_checked(column i64, checked bool) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_checked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&checked)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) set_indeterminate(column i64, indeterminate bool) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_indeterminate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&indeterminate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) is_checked(column i64) bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_checked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) is_indeterminate(column i64) bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_indeterminate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TreeItem_propagate_check_Cfg {
pub:
	emit_signal bool
}

pub fn (s &TreeItem) propagate_check(column i64, cfg TreeItem_propagate_check_Cfg) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("propagate_check")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 972357352)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&cfg.emit_signal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) set_text(column i64, text string) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	arg_sn1 := String.new(text)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_text(column i64) string {
	mut result := String{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TreeItem) set_alt_text(column i64, text string) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_alt_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	arg_sn1 := String.new(text)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_alt_text(column i64) string {
	mut result := String{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_alt_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TreeItem) set_text_direction(column i64, direction ControlTextDirection) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1707680378)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	i64_direction := i64(direction)
	args[1] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_text_direction(column i64) ControlTextDirection {
	mut result := i64(ControlTextDirection.text_direction_inherited)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235602388)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlTextDirection(result)}
}

pub fn (s &TreeItem) set_autowrap_mode(column i64, autowrap_mode TextServerAutowrapMode) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_autowrap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3633006561)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	i64_autowrap_mode := i64(autowrap_mode)
	args[1] = unsafe{voidptr(&i64_autowrap_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_autowrap_mode(column i64) TextServerAutowrapMode {
	mut result := i64(TextServerAutowrapMode.autowrap_off)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_autowrap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2902757236)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerAutowrapMode(result)}
}

pub fn (s &TreeItem) set_text_overrun_behavior(column i64, overrun_behavior TextServerOverrunBehavior) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_text_overrun_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1940772195)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	i64_overrun_behavior := i64(overrun_behavior)
	args[1] = unsafe{voidptr(&i64_overrun_behavior)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_text_overrun_behavior(column i64) TextServerOverrunBehavior {
	mut result := i64(TextServerOverrunBehavior.overrun_no_trimming)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_text_overrun_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3782727860)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerOverrunBehavior(result)}
}

pub fn (s &TreeItem) set_structured_text_bidi_override(column i64, parser TextServerStructuredTextParser) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_structured_text_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 868756907)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	i64_parser := i64(parser)
	args[1] = unsafe{voidptr(&i64_parser)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_structured_text_bidi_override(column i64) TextServerStructuredTextParser {
	mut result := i64(TextServerStructuredTextParser.structured_text_default)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_structured_text_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3377823772)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerStructuredTextParser(result)}
}

pub fn (s &TreeItem) set_structured_text_bidi_override_options(column i64, gd_args Array) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_structured_text_bidi_override_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 537221740)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&gd_args)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_structured_text_bidi_override_options(column i64) Array {
	mut result := Array{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_structured_text_bidi_override_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_language(column i64, language string) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_language(column i64) string {
	mut result := String{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TreeItem) set_suffix(column i64, text string) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_suffix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	arg_sn1 := String.new(text)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_suffix(column i64) string {
	mut result := String{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_suffix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TreeItem) set_icon(column i64, texture Texture2D) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_icon(column i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_icon_overlay(column i64, texture Texture2D) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_icon_overlay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_icon_overlay(column i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_icon_overlay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_icon_region(column i64, region Rect2) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_icon_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1356297692)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_icon_region(column i64) Rect2 {
	mut result := Rect2{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_icon_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3327874267)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_icon_max_width(column i64, width i64) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_icon_max_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_icon_max_width(column i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_icon_max_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_icon_modulate(column i64, modulate Color) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_icon_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&modulate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_icon_modulate(column i64) Color {
	mut result := Color{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_icon_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_range(column i64, value f64) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_range(column i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TreeItem_set_range_config_Cfg {
pub:
	expr bool
}

pub fn (s &TreeItem) set_range_config(column i64, min f64, max f64, step f64, cfg TreeItem_set_range_config_Cfg) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_range_config")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1547181014)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&min)}
	args[2] = unsafe{voidptr(&max)}
	args[3] = unsafe{voidptr(&step)}
	args[4] = unsafe{voidptr(&cfg.expr)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_range_config(column i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_range_config")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3554694381)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_metadata(column i64, meta Variant) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&meta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_metadata(column i64) Variant {
	mut result := Variant{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_custom_draw(column i64, object Object, callback string) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_custom_draw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 272420368)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = voidptr(&object.ptr)
	arg_sn2 := StringName.new(callback)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) set_custom_draw_callback(column i64, callback Callable) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_custom_draw_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 957362965)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_custom_draw_callback(column i64) Callable {
	mut result := Callable{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_custom_draw_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1317077508)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_collapsed(enable bool) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_collapsed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) is_collapsed() bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_collapsed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_collapsed_recursive(enable bool) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_collapsed_recursive")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TreeItem_is_any_collapsed_Cfg {
pub:
	only_visible bool
}

pub fn (s &TreeItem) is_any_collapsed(cfg TreeItem_is_any_collapsed_Cfg) bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_any_collapsed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2595650253)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.only_visible)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_visible(enable bool) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) is_visible() bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) is_visible_in_tree() bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_visible_in_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) uncollapse_tree() {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("uncollapse_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) set_custom_minimum_height(height i64) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_custom_minimum_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&height)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_custom_minimum_height() i64 {
	mut result := i64(0)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_custom_minimum_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_selectable(column i64, selectable bool) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_selectable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&selectable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) is_selectable(column i64) bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_selectable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) is_selected(column i64) bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) gd_select(column i64) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("select")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) deselect(column i64) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("deselect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) set_editable(column i64, enabled bool) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_editable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) is_editable(column i64) bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_editable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_custom_color(column i64, color Color) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_custom_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_custom_color(column i64) Color {
	mut result := Color{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_custom_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) clear_custom_color(column i64) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("clear_custom_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) set_custom_font(column i64, font Font) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_custom_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2637609184)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = voidptr(&font.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_custom_font(column i64) Font {
	mut result := Font{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_custom_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4244553094)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_custom_font_size(column i64, font_size i64) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_custom_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&font_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_custom_font_size(column i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_custom_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TreeItem_set_custom_bg_color_Cfg {
pub:
	just_outline bool
}

pub fn (s &TreeItem) set_custom_bg_color(column i64, color Color, cfg TreeItem_set_custom_bg_color_Cfg) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_custom_bg_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 894174518)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&color)}
	args[2] = unsafe{voidptr(&cfg.just_outline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) clear_custom_bg_color(column i64) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("clear_custom_bg_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_custom_bg_color(column i64) Color {
	mut result := Color{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_custom_bg_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_custom_as_button(column i64, enable bool) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_custom_as_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) is_custom_set_as_button(column i64) bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_custom_set_as_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) clear_buttons() {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("clear_buttons")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TreeItem_add_button_Cfg {
pub:
	id i64
	disabled bool
	tooltip_text string
	alt_text string
}

pub fn (s &TreeItem) add_button(column i64, button Texture2D, cfg TreeItem_add_button_Cfg) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("add_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 973481897)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = voidptr(&button.ptr)
	args[2] = unsafe{voidptr(&cfg.id)}
	args[3] = unsafe{voidptr(&cfg.disabled)}
	arg_sn4 := String.new(cfg.tooltip_text)
	args[4] = unsafe{voidptr(&arg_sn4)}
	arg_sn5 := String.new(cfg.alt_text)
	args[5] = unsafe{voidptr(&arg_sn5)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn4.deinit()
	arg_sn5.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_button_count(column i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_button_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) get_button_tooltip_text(column i64, button_index i64) string {
	mut result := String{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_button_tooltip_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1391810591)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&button_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TreeItem) get_button_id(column i64, button_index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_button_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&button_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) get_button_by_id(column i64, id i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_button_by_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) get_button_color(column i64, id i64) Color {
	mut result := Color{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_button_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2165839948)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) get_button(column i64, button_index i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2584904275)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&button_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_button_tooltip_text(column i64, button_index i64, tooltip string) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_button_tooltip_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285447957)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&button_index)}
	arg_sn2 := String.new(tooltip)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) set_button(column i64, button_index i64, button Texture2D) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 176101966)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&button_index)}
	args[2] = voidptr(&button.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) erase_button(column i64, button_index i64) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("erase_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&button_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) set_button_alt_text(column i64, button_index i64, alt_text string) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_button_alt_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285447957)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&button_index)}
	arg_sn2 := String.new(alt_text)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) set_button_disabled(column i64, button_index i64, disabled bool) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_button_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&button_index)}
	args[2] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) set_button_color(column i64, button_index i64, color Color) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_button_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3733378741)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&button_index)}
	args[2] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) is_button_disabled(column i64, button_index i64) bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_button_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&button_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_tooltip_text(column i64, tooltip string) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_tooltip_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	arg_sn1 := String.new(tooltip)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_tooltip_text(column i64) string {
	mut result := String{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_tooltip_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TreeItem) set_text_alignment(column i64, text_alignment HorizontalAlignment) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_text_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3276431499)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	i64_text_alignment := i64(text_alignment)
	args[1] = unsafe{voidptr(&i64_text_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_text_alignment(column i64) HorizontalAlignment {
	mut result := i64(HorizontalAlignment.horizontal_alignment_left)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_text_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171562184)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{HorizontalAlignment(result)}
}

pub fn (s &TreeItem) set_expand_right(column i64, enable bool) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_expand_right")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_expand_right(column i64) bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_expand_right")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&column)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) set_disable_folding(disable bool) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("set_disable_folding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&disable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) is_folding_disabled() bool {
	mut result := false
	classname := StringName.new("TreeItem")
	fnname := StringName.new("is_folding_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TreeItem_create_child_Cfg {
pub:
	index i64
}

pub fn (s &TreeItem) create_child(cfg TreeItem_create_child_Cfg) TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("create_child")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 954243986)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) add_child(child TreeItem) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("add_child")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1819951137)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&child.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) remove_child(child TreeItem) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("remove_child")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1819951137)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&child.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) get_tree() Tree {
	mut result := Tree{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2243340556)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) get_next() TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_next")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1514277247)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) get_prev() TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_prev")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2768121250)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) get_parent() TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_parent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1514277247)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) get_first_child() TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_first_child")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1514277247)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TreeItem_get_next_in_tree_Cfg {
pub:
	wrap bool
}

pub fn (s &TreeItem) get_next_in_tree(cfg TreeItem_get_next_in_tree_Cfg) TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_next_in_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1666920593)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.wrap)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TreeItem_get_prev_in_tree_Cfg {
pub:
	wrap bool
}

pub fn (s &TreeItem) get_prev_in_tree(cfg TreeItem_get_prev_in_tree_Cfg) TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_prev_in_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1666920593)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.wrap)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TreeItem_get_next_visible_Cfg {
pub:
	wrap bool
}

pub fn (s &TreeItem) get_next_visible(cfg TreeItem_get_next_visible_Cfg) TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_next_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1666920593)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.wrap)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TreeItem_get_prev_visible_Cfg {
pub:
	wrap bool
}

pub fn (s &TreeItem) get_prev_visible(cfg TreeItem_get_prev_visible_Cfg) TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_prev_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1666920593)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.wrap)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) get_child(index i64) TreeItem {
	mut result := TreeItem{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_child")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 306700752)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) get_child_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_child_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) get_children() Array {
	mut result := Array{}
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_children")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) get_index() i64 {
	mut result := i64(0)
	classname := StringName.new("TreeItem")
	fnname := StringName.new("get_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TreeItem) move_before(item TreeItem) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("move_before")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1819951137)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&item.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) move_after(item TreeItem) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("move_after")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1819951137)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&item.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TreeItem) call_recursive(method string) {
	classname := StringName.new("TreeItem")
	fnname := StringName.new("call_recursive")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2866548813)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
