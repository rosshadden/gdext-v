module gd

pub struct VisualShaderNodeVec4Parameter {
	VisualShaderNodeParameter
}

pub fn (s &VisualShaderNodeVec4Parameter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeVec4Parameter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeVec4Parameter) set_default_value_enabled(enabled bool) {
	classname := StringName.new("VisualShaderNodeVec4Parameter")
	fnname := StringName.new("set_default_value_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeVec4Parameter) is_default_value_enabled() bool {
	mut result := false
	classname := StringName.new("VisualShaderNodeVec4Parameter")
	fnname := StringName.new("is_default_value_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeVec4Parameter) set_default_value(value Vector4) {
	classname := StringName.new("VisualShaderNodeVec4Parameter")
	fnname := StringName.new("set_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 643568085)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeVec4Parameter) get_default_value() Vector4 {
	mut result := Vector4{}
	classname := StringName.new("VisualShaderNodeVec4Parameter")
	fnname := StringName.new("get_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2435802345)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
