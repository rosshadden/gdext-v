module gd

pub enum VisualShaderNodeMultiplyAddOpType as i64 {
	op_type_scalar = 0
	op_type_vector_2d = 1
	op_type_vector_3d = 2
	op_type_vector_4d = 3
	op_type_max = 4
}

pub struct VisualShaderNodeMultiplyAdd {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeMultiplyAdd) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeMultiplyAdd) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeMultiplyAdd) set_op_type(gd_type VisualShaderNodeMultiplyAddOpType) {
	classname := StringName.new("VisualShaderNodeMultiplyAdd")
	fnname := StringName.new("set_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1409862380)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeMultiplyAdd) get_op_type() VisualShaderNodeMultiplyAddOpType {
	mut result := i64(VisualShaderNodeMultiplyAddOpType.op_type_scalar)
	classname := StringName.new("VisualShaderNodeMultiplyAdd")
	fnname := StringName.new("get_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2823201991)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeMultiplyAddOpType(result)}
}
