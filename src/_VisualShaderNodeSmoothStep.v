module gd

pub enum VisualShaderNodeSmoothStepOpType as i64 {
	op_type_scalar = 0
	op_type_vector_2d = 1
	op_type_vector_2d_scalar = 2
	op_type_vector_3d = 3
	op_type_vector_3d_scalar = 4
	op_type_vector_4d = 5
	op_type_vector_4d_scalar = 6
	op_type_max = 7
}

pub struct VisualShaderNodeSmoothStep {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeSmoothStep) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeSmoothStep) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeSmoothStep) set_op_type(op_type VisualShaderNodeSmoothStepOpType) {
	classname := StringName.new("VisualShaderNodeSmoothStep")
	fnname := StringName.new("set_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2427426148)
	mut args := unsafe { [1]voidptr{} }
	i64_op_type := i64(op_type)
	args[0] = unsafe{voidptr(&i64_op_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeSmoothStep) get_op_type() VisualShaderNodeSmoothStepOpType {
	mut result := i64(VisualShaderNodeSmoothStepOpType.op_type_scalar)
	classname := StringName.new("VisualShaderNodeSmoothStep")
	fnname := StringName.new("get_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 359640855)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeSmoothStepOpType(result)}
}
