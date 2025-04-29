module gd

pub struct TextLine {
	RefCounted
}

pub fn (s &TextLine) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TextLine) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TextLine) clear() {
	classname := StringName.new("TextLine")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextLine) set_direction(direction TextServerDirection) {
	classname := StringName.new("TextLine")
	fnname := StringName.new("set_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1418190634)
	mut args := unsafe { [1]voidptr{} }
	i64_direction := i64(direction)
	args[0] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextLine) get_direction() TextServerDirection {
	mut result := i64(TextServerDirection.direction_auto)
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2516697328)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerDirection(result)}
}

pub fn (s &TextLine) get_inferred_direction() TextServerDirection {
	mut result := i64(TextServerDirection.direction_auto)
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_inferred_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2516697328)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerDirection(result)}
}

pub fn (s &TextLine) set_orientation(orientation TextServerOrientation) {
	classname := StringName.new("TextLine")
	fnname := StringName.new("set_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 42823726)
	mut args := unsafe { [1]voidptr{} }
	i64_orientation := i64(orientation)
	args[0] = unsafe{voidptr(&i64_orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextLine) get_orientation() TextServerOrientation {
	mut result := i64(TextServerOrientation.orientation_horizontal)
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 175768116)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerOrientation(result)}
}

pub fn (s &TextLine) set_preserve_invalid(enabled bool) {
	classname := StringName.new("TextLine")
	fnname := StringName.new("set_preserve_invalid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextLine) get_preserve_invalid() bool {
	mut result := false
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_preserve_invalid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextLine) set_preserve_control(enabled bool) {
	classname := StringName.new("TextLine")
	fnname := StringName.new("set_preserve_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextLine) get_preserve_control() bool {
	mut result := false
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_preserve_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextLine) set_bidi_override(override Array) {
	classname := StringName.new("TextLine")
	fnname := StringName.new("set_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&override)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TextLine_add_string_Cfg {
pub:
	language string
	meta Variant
}

pub fn (s &TextLine) add_string(text string, font Font, font_size i64, cfg TextLine_add_string_Cfg) bool {
	mut result := false
	classname := StringName.new("TextLine")
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
pub struct TextLine_add_object_Cfg {
pub:
	inline_align InlineAlignment
	length i64
	baseline f64
}

pub fn (s &TextLine) add_object(key Variant, size Vector2, cfg TextLine_add_object_Cfg) bool {
	mut result := false
	classname := StringName.new("TextLine")
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
pub struct TextLine_resize_object_Cfg {
pub:
	inline_align InlineAlignment
	baseline f64
}

pub fn (s &TextLine) resize_object(key Variant, size Vector2, cfg TextLine_resize_object_Cfg) bool {
	mut result := false
	classname := StringName.new("TextLine")
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

pub fn (s &TextLine) set_width(width f64) {
	classname := StringName.new("TextLine")
	fnname := StringName.new("set_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextLine) get_width() f64 {
	mut result := f64(0)
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextLine) set_horizontal_alignment(alignment HorizontalAlignment) {
	classname := StringName.new("TextLine")
	fnname := StringName.new("set_horizontal_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextLine) get_horizontal_alignment() HorizontalAlignment {
	mut result := i64(HorizontalAlignment.horizontal_alignment_left)
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_horizontal_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{HorizontalAlignment(result)}
}

pub fn (s &TextLine) tab_align(tab_stops PackedFloat32Array) {
	classname := StringName.new("TextLine")
	fnname := StringName.new("tab_align")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_stops)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextLine) set_flags(flags TextServerJustificationFlag) {
	classname := StringName.new("TextLine")
	fnname := StringName.new("set_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2877345813)
	mut args := unsafe { [1]voidptr{} }
	i64_flags := i64(flags)
	args[0] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextLine) get_flags() TextServerJustificationFlag {
	mut result := i64(TextServerJustificationFlag.justification_none)
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1583363614)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerJustificationFlag(result)}
}

pub fn (s &TextLine) set_text_overrun_behavior(overrun_behavior TextServerOverrunBehavior) {
	classname := StringName.new("TextLine")
	fnname := StringName.new("set_text_overrun_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1008890932)
	mut args := unsafe { [1]voidptr{} }
	i64_overrun_behavior := i64(overrun_behavior)
	args[0] = unsafe{voidptr(&i64_overrun_behavior)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextLine) get_text_overrun_behavior() TextServerOverrunBehavior {
	mut result := i64(TextServerOverrunBehavior.overrun_no_trimming)
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_text_overrun_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3779142101)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerOverrunBehavior(result)}
}

pub fn (s &TextLine) set_ellipsis_char(gd_char string) {
	classname := StringName.new("TextLine")
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

pub fn (s &TextLine) get_ellipsis_char() string {
	mut result := String{}
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_ellipsis_char")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextLine) get_objects() Array {
	mut result := Array{}
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_objects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextLine) get_object_rect(key Variant) Rect2 {
	mut result := Rect2{}
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_object_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1742700391)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&key)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextLine) get_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextLine) get_rid() RID {
	mut result := RID{}
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextLine) get_line_ascent() f64 {
	mut result := f64(0)
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_line_ascent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextLine) get_line_descent() f64 {
	mut result := f64(0)
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_line_descent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextLine) get_line_width() f64 {
	mut result := f64(0)
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_line_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextLine) get_line_underline_position() f64 {
	mut result := f64(0)
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_line_underline_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextLine) get_line_underline_thickness() f64 {
	mut result := f64(0)
	classname := StringName.new("TextLine")
	fnname := StringName.new("get_line_underline_thickness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TextLine_draw_Cfg {
pub:
	color Color
}

pub fn (s &TextLine) draw(canvas RID, pos Vector2, cfg TextLine_draw_Cfg) {
	classname := StringName.new("TextLine")
	fnname := StringName.new("draw")
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
pub struct TextLine_draw_outline_Cfg {
pub:
	outline_size i64
	color Color
}

pub fn (s &TextLine) draw_outline(canvas RID, pos Vector2, cfg TextLine_draw_outline_Cfg) {
	classname := StringName.new("TextLine")
	fnname := StringName.new("draw_outline")
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

pub fn (s &TextLine) hit_test(coords f64) i64 {
	mut result := i64(0)
	classname := StringName.new("TextLine")
	fnname := StringName.new("hit_test")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2401831903)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
