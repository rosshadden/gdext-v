module gd

pub struct VisualShaderNodeVec4Constant {
	VisualShaderNodeConstant
}

pub fn (s &VisualShaderNodeVec4Constant) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeVec4Constant) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeVec4Constant) set_constant(constant Quaternion) {
	classname := StringName.new("VisualShaderNodeVec4Constant")
	fnname := StringName.new("set_constant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1727505552)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&constant)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeVec4Constant) get_constant() Quaternion {
	mut result := Quaternion{}
	classname := StringName.new("VisualShaderNodeVec4Constant")
	fnname := StringName.new("get_constant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
