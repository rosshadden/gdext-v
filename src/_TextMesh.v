module gd

pub struct TextMesh {
	PrimitiveMesh
}

pub fn (s &TextMesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TextMesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TextMesh) set_horizontal_alignment(alignment HorizontalAlignment) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_horizontal_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_horizontal_alignment() HorizontalAlignment {
	mut result := i64(HorizontalAlignment.horizontal_alignment_left)
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_horizontal_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{HorizontalAlignment(result)}
}

pub fn (s &TextMesh) set_vertical_alignment(alignment VerticalAlignment) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_vertical_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1796458609)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_vertical_alignment() VerticalAlignment {
	mut result := i64(VerticalAlignment.vertical_alignment_top)
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_vertical_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3274884059)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VerticalAlignment(result)}
}

pub fn (s &TextMesh) set_text(text string) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_text() string {
	mut result := String{}
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextMesh) set_font(font Font) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&font.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_font() Font {
	mut result := Font{}
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextMesh) set_font_size(font_size i64) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_font_size() i64 {
	mut result := i64(0)
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextMesh) set_line_spacing(line_spacing f64) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_line_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line_spacing)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_line_spacing() f64 {
	mut result := f64(0)
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_line_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextMesh) set_autowrap_mode(autowrap_mode TextServerAutowrapMode) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_autowrap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289138044)
	mut args := unsafe { [1]voidptr{} }
	i64_autowrap_mode := i64(autowrap_mode)
	args[0] = unsafe{voidptr(&i64_autowrap_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_autowrap_mode() TextServerAutowrapMode {
	mut result := i64(TextServerAutowrapMode.autowrap_off)
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_autowrap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549071663)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerAutowrapMode(result)}
}

pub fn (s &TextMesh) set_justification_flags(justification_flags TextServerJustificationFlag) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_justification_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2877345813)
	mut args := unsafe { [1]voidptr{} }
	i64_justification_flags := i64(justification_flags)
	args[0] = unsafe{voidptr(&i64_justification_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_justification_flags() TextServerJustificationFlag {
	mut result := i64(TextServerJustificationFlag.justification_none)
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_justification_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1583363614)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerJustificationFlag(result)}
}

pub fn (s &TextMesh) set_depth(depth f64) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&depth)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_depth() f64 {
	mut result := f64(0)
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextMesh) set_width(width f64) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_width() f64 {
	mut result := f64(0)
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextMesh) set_pixel_size(pixel_size f64) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_pixel_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pixel_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_pixel_size() f64 {
	mut result := f64(0)
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_pixel_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextMesh) set_offset(offset Vector2) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextMesh) set_curve_step(curve_step f64) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_curve_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&curve_step)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_curve_step() f64 {
	mut result := f64(0)
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_curve_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextMesh) set_text_direction(direction TextServerDirection) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1418190634)
	mut args := unsafe { [1]voidptr{} }
	i64_direction := i64(direction)
	args[0] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_text_direction() TextServerDirection {
	mut result := i64(TextServerDirection.direction_auto)
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2516697328)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerDirection(result)}
}

pub fn (s &TextMesh) set_language(language string) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(language)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_language() string {
	mut result := String{}
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TextMesh) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_structured_text_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
	mut args := unsafe { [1]voidptr{} }
	i64_parser := i64(parser)
	args[0] = unsafe{voidptr(&i64_parser)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_structured_text_bidi_override() TextServerStructuredTextParser {
	mut result := i64(TextServerStructuredTextParser.structured_text_default)
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_structured_text_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerStructuredTextParser(result)}
}

pub fn (s &TextMesh) set_structured_text_bidi_override_options(gd_args Array) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_structured_text_bidi_override_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_args)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) get_structured_text_bidi_override_options() Array {
	mut result := Array{}
	classname := StringName.new("TextMesh")
	fnname := StringName.new("get_structured_text_bidi_override_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextMesh) set_uppercase(enable bool) {
	classname := StringName.new("TextMesh")
	fnname := StringName.new("set_uppercase")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextMesh) is_uppercase() bool {
	mut result := false
	classname := StringName.new("TextMesh")
	fnname := StringName.new("is_uppercase")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
