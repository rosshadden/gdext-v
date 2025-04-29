module gd

pub enum VisualShaderNodeStepOpType as i64 {
	op_type_scalar = 0
	op_type_vector_2d = 1
	op_type_vector_2d_scalar = 2
	op_type_vector_3d = 3
	op_type_vector_3d_scalar = 4
	op_type_vector_4d = 5
	op_type_vector_4d_scalar = 6
	op_type_max = 7
}

pub struct VisualShaderNodeStep {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeStep) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeStep) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeStep) set_op_type(op_type VisualShaderNodeStepOpType) {
	classname := StringName.new("VisualShaderNodeStep")
	fnname := StringName.new("set_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 715172489)
	mut args := unsafe { [1]voidptr{} }
	i64_op_type := i64(op_type)
	args[0] = unsafe{voidptr(&i64_op_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeStep) get_op_type() VisualShaderNodeStepOpType {
	mut result := i64(VisualShaderNodeStepOpType.op_type_scalar)
	classname := StringName.new("VisualShaderNodeStep")
	fnname := StringName.new("get_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3274022781)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeStepOpType(result)}
}
