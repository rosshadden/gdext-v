module gd

pub struct TextParagraph {
	RefCounted
}

pub fn (s &TextParagraph) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TextParagraph) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TextParagraph) clear() {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) set_direction(direction TextServerDirection) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1418190634)
	mut args := unsafe { [1]voidptr{} }
	i64_direction := i64(direction)
	args[0] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_direction() TextServerDirection {
	mut result := i64(TextServerDirection.direction_auto)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2516697328)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerDirection(result)}
}

pub fn (s &TextParagraph) get_inferred_direction() TextServerDirection {
	mut result := i64(TextServerDirection.direction_auto)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_inferred_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2516697328)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerDirection(result)}
}

pub fn (s &TextParagraph) set_custom_punctuation(custom_punctuation string) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_custom_punctuation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(custom_punctuation)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_custom_punctuation() string {
	mut result := String{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_custom_punctuation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextParagraph) set_orientation(orientation TextServerOrientation) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 42823726)
	mut args := unsafe { [1]voidptr{} }
	i64_orientation := i64(orientation)
	args[0] = unsafe{voidptr(&i64_orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_orientation() TextServerOrientation {
	mut result := i64(TextServerOrientation.orientation_horizontal)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 175768116)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerOrientation(result)}
}

pub fn (s &TextParagraph) set_preserve_invalid(enabled bool) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_preserve_invalid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_preserve_invalid() bool {
	mut result := false
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_preserve_invalid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) set_preserve_control(enabled bool) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_preserve_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_preserve_control() bool {
	mut result := false
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_preserve_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) set_bidi_override(override Array) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&override)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextParagraph_set_dropcap_Cfg {
pub:
	dropcap_margins Rect2
	language string
}

pub fn (s &TextParagraph) set_dropcap(text string, font Font, font_size i64, cfg TextParagraph_set_dropcap_Cfg) bool {
	mut result := false
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_dropcap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2498990330)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&font.ptr)
	args[2] = unsafe{voidptr(&font_size)}
	args[3] = unsafe{voidptr(&cfg.dropcap_margins)}
	arg_sn4 := String.new(cfg.language)
	args[4] = unsafe{voidptr(&arg_sn4)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn4.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) clear_dropcap() {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("clear_dropcap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextParagraph_add_string_Cfg {
pub:
	language string
	meta Variant
}

pub fn (s &TextParagraph) add_string(text string, font Font, font_size i64, cfg TextParagraph_add_string_Cfg) bool {
	mut result := false
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("add_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 621426851)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&font.ptr)
	args[2] = unsafe{voidptr(&font_size)}
	arg_sn3 := String.new(cfg.language)
	args[3] = unsafe{voidptr(&arg_sn3)}
	args[4] = unsafe{voidptr(&cfg.meta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextParagraph_add_object_Cfg {
pub:
	inline_align InlineAlignment
	length i64
	baseline f64
}

pub fn (s &TextParagraph) add_object(key Variant, size Vector2, cfg TextParagraph_add_object_Cfg) bool {
	mut result := false
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("add_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1316529304)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&key)}
	args[1] = unsafe{voidptr(&size)}
	i64_inline_align := i64(cfg.inline_align)
	args[2] = unsafe{voidptr(&i64_inline_align)}
	args[3] = unsafe{voidptr(&cfg.length)}
	args[4] = unsafe{voidptr(&cfg.baseline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextParagraph_resize_object_Cfg {
pub:
	inline_align InlineAlignment
	baseline f64
}

pub fn (s &TextParagraph) resize_object(key Variant, size Vector2, cfg TextParagraph_resize_object_Cfg) bool {
	mut result := false
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("resize_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2095776372)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&key)}
	args[1] = unsafe{voidptr(&size)}
	i64_inline_align := i64(cfg.inline_align)
	args[2] = unsafe{voidptr(&i64_inline_align)}
	args[3] = unsafe{voidptr(&cfg.baseline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) set_alignment(alignment HorizontalAlignment) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_alignment() HorizontalAlignment {
	mut result := i64(HorizontalAlignment.horizontal_alignment_left)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{HorizontalAlignment(result)}
}

pub fn (s &TextParagraph) tab_align(tab_stops PackedFloat32Array) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("tab_align")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_stops)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) set_break_flags(flags TextServerLineBreakFlag) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_break_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2809697122)
	mut args := unsafe { [1]voidptr{} }
	i64_flags := i64(flags)
	args[0] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_break_flags() TextServerLineBreakFlag {
	mut result := i64(TextServerLineBreakFlag.break_none)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_break_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2340632602)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerLineBreakFlag(result)}
}

pub fn (s &TextParagraph) set_justification_flags(flags TextServerJustificationFlag) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_justification_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2877345813)
	mut args := unsafe { [1]voidptr{} }
	i64_flags := i64(flags)
	args[0] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_justification_flags() TextServerJustificationFlag {
	mut result := i64(TextServerJustificationFlag.justification_none)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_justification_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1583363614)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerJustificationFlag(result)}
}

pub fn (s &TextParagraph) set_text_overrun_behavior(overrun_behavior TextServerOverrunBehavior) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_text_overrun_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1008890932)
	mut args := unsafe { [1]voidptr{} }
	i64_overrun_behavior := i64(overrun_behavior)
	args[0] = unsafe{voidptr(&i64_overrun_behavior)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_text_overrun_behavior() TextServerOverrunBehavior {
	mut result := i64(TextServerOverrunBehavior.overrun_no_trimming)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_text_overrun_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3779142101)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerOverrunBehavior(result)}
}

pub fn (s &TextParagraph) set_ellipsis_char(gd_char string) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_ellipsis_char")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_char)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_ellipsis_char() string {
	mut result := String{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_ellipsis_char")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextParagraph) set_width(width f64) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_width() f64 {
	mut result := f64(0)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_non_wrapped_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_non_wrapped_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_rid() RID {
	mut result := RID{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_line_rid(line i64) RID {
	mut result := RID{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_line_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_dropcap_rid() RID {
	mut result := RID{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_dropcap_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_range() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_line_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_line_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) set_max_lines_visible(max_lines_visible i64) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_max_lines_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_lines_visible)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_max_lines_visible() i64 {
	mut result := i64(0)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_max_lines_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) set_line_spacing(line_spacing f64) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("set_line_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line_spacing)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) get_line_spacing() f64 {
	mut result := f64(0)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_line_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_line_objects(line i64) Array {
	mut result := Array{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_line_objects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_line_object_rect(line i64, key Variant) Rect2 {
	mut result := Rect2{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_line_object_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 204315017)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	args[1] = unsafe{voidptr(&key)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_line_size(line i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_line_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_line_range(line i64) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_line_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 880721226)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_line_ascent(line i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_line_ascent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_line_descent(line i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_line_descent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_line_width(line i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_line_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_line_underline_position(line i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_line_underline_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_line_underline_thickness(line i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_line_underline_thickness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_dropcap_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_dropcap_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextParagraph) get_dropcap_lines() i64 {
	mut result := i64(0)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("get_dropcap_lines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextParagraph_draw_Cfg {
pub:
	color Color
	dc_color Color
}

pub fn (s &TextParagraph) draw(canvas RID, pos Vector2, cfg TextParagraph_draw_Cfg) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("draw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1567802413)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&canvas)}
	args[1] = unsafe{voidptr(&pos)}
	args[2] = unsafe{voidptr(&cfg.color)}
	args[3] = unsafe{voidptr(&cfg.dc_color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextParagraph_draw_outline_Cfg {
pub:
	outline_size i64
	color Color
	dc_color Color
}

pub fn (s &TextParagraph) draw_outline(canvas RID, pos Vector2, cfg TextParagraph_draw_outline_Cfg) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("draw_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1893131224)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&canvas)}
	args[1] = unsafe{voidptr(&pos)}
	args[2] = unsafe{voidptr(&cfg.outline_size)}
	args[3] = unsafe{voidptr(&cfg.color)}
	args[4] = unsafe{voidptr(&cfg.dc_color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextParagraph_draw_line_Cfg {
pub:
	color Color
}

pub fn (s &TextParagraph) draw_line(canvas RID, pos Vector2, line i64, cfg TextParagraph_draw_line_Cfg) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("draw_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1242169894)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&canvas)}
	args[1] = unsafe{voidptr(&pos)}
	args[2] = unsafe{voidptr(&line)}
	args[3] = unsafe{voidptr(&cfg.color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextParagraph_draw_line_outline_Cfg {
pub:
	outline_size i64
	color Color
}

pub fn (s &TextParagraph) draw_line_outline(canvas RID, pos Vector2, line i64, cfg TextParagraph_draw_line_outline_Cfg) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("draw_line_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2664926980)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&canvas)}
	args[1] = unsafe{voidptr(&pos)}
	args[2] = unsafe{voidptr(&line)}
	args[3] = unsafe{voidptr(&cfg.outline_size)}
	args[4] = unsafe{voidptr(&cfg.color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextParagraph_draw_dropcap_Cfg {
pub:
	color Color
}

pub fn (s &TextParagraph) draw_dropcap(canvas RID, pos Vector2, cfg TextParagraph_draw_dropcap_Cfg) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("draw_dropcap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 856975658)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&canvas)}
	args[1] = unsafe{voidptr(&pos)}
	args[2] = unsafe{voidptr(&cfg.color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextParagraph_draw_dropcap_outline_Cfg {
pub:
	outline_size i64
	color Color
}

pub fn (s &TextParagraph) draw_dropcap_outline(canvas RID, pos Vector2, cfg TextParagraph_draw_dropcap_outline_Cfg) {
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("draw_dropcap_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1343401456)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&canvas)}
	args[1] = unsafe{voidptr(&pos)}
	args[2] = unsafe{voidptr(&cfg.outline_size)}
	args[3] = unsafe{voidptr(&cfg.color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextParagraph) hit_test(coords Vector2) i64 {
	mut result := i64(0)
	classname := StringName.new("TextParagraph")
	fnname := StringName.new("hit_test")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
