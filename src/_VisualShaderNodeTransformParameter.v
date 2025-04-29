module gd

pub struct VisualShaderNodeTransformParameter {
	VisualShaderNodeParameter
}

pub fn (s &VisualShaderNodeTransformParameter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeTransformParameter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeTransformParameter) set_default_value_enabled(enabled bool) {
	classname := StringName.new("VisualShaderNodeTransformParameter")
	fnname := StringName.new("set_default_value_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeTransformParameter) is_default_value_enabled() bool {
	mut result := false
	classname := StringName.new("VisualShaderNodeTransformParameter")
	fnname := StringName.new("is_default_value_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeTransformParameter) set_default_value(value Transform3D) {
	classname := StringName.new("VisualShaderNodeTransformParameter")
	fnname := StringName.new("set_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeTransformParameter) get_default_value() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("VisualShaderNodeTransformParameter")
	fnname := StringName.new("get_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
