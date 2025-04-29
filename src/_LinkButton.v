module gd

pub enum LinkButtonUnderlineMode as i64 {
	underline_mode_always = 0
	underline_mode_on_hover = 1
	underline_mode_never = 2
}

pub struct LinkButton {
	BaseButton
}

pub fn (s &LinkButton) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s LinkButton) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &LinkButton) set_text(text string) {
	classname := StringName.new("LinkButton")
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

pub fn (s &LinkButton) get_text() string {
	mut result := String{}
	classname := StringName.new("LinkButton")
	fnname := StringName.new("get_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &LinkButton) set_text_direction(direction ControlTextDirection) {
	classname := StringName.new("LinkButton")
	fnname := StringName.new("set_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
	mut args := unsafe { [1]voidptr{} }
	i64_direction := i64(direction)
	args[0] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LinkButton) get_text_direction() ControlTextDirection {
	mut result := i64(ControlTextDirection.text_direction_inherited)
	classname := StringName.new("LinkButton")
	fnname := StringName.new("get_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlTextDirection(result)}
}

pub fn (s &LinkButton) set_language(language string) {
	classname := StringName.new("LinkButton")
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

pub fn (s &LinkButton) get_language() string {
	mut result := String{}
	classname := StringName.new("LinkButton")
	fnname := StringName.new("get_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &LinkButton) set_uri(uri string) {
	classname := StringName.new("LinkButton")
	fnname := StringName.new("set_uri")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(uri)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LinkButton) get_uri() string {
	mut result := String{}
	classname := StringName.new("LinkButton")
	fnname := StringName.new("get_uri")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &LinkButton) set_underline_mode(underline_mode LinkButtonUnderlineMode) {
	classname := StringName.new("LinkButton")
	fnname := StringName.new("set_underline_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4032947085)
	mut args := unsafe { [1]voidptr{} }
	i64_underline_mode := i64(underline_mode)
	args[0] = unsafe{voidptr(&i64_underline_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LinkButton) get_underline_mode() LinkButtonUnderlineMode {
	mut result := i64(LinkButtonUnderlineMode.underline_mode_always)
	classname := StringName.new("LinkButton")
	fnname := StringName.new("get_underline_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 568343738)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{LinkButtonUnderlineMode(result)}
}

pub fn (s &LinkButton) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
	classname := StringName.new("LinkButton")
	fnname := StringName.new("set_structured_text_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
	mut args := unsafe { [1]voidptr{} }
	i64_parser := i64(parser)
	args[0] = unsafe{voidptr(&i64_parser)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LinkButton) get_structured_text_bidi_override() TextServerStructuredTextParser {
	mut result := i64(TextServerStructuredTextParser.structured_text_default)
	classname := StringName.new("LinkButton")
	fnname := StringName.new("get_structured_text_bidi_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerStructuredTextParser(result)}
}

pub fn (s &LinkButton) set_structured_text_bidi_override_options(gd_args Array) {
	classname := StringName.new("LinkButton")
	fnname := StringName.new("set_structured_text_bidi_override_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_args)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LinkButton) get_structured_text_bidi_override_options() Array {
	mut result := Array{}
	classname := StringName.new("LinkButton")
	fnname := StringName.new("get_structured_text_bidi_override_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
