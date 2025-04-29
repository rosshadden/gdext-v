module gd

pub enum VisualShaderNodeVectorOpOperator as i64 {
	op_add = 0
	op_sub = 1
	op_mul = 2
	op_div = 3
	op_mod = 4
	op_pow = 5
	op_max = 6
	op_min = 7
	op_cross = 8
	op_atan2 = 9
	op_reflect = 10
	op_step = 11
	op_enum_size = 12
}

pub struct VisualShaderNodeVectorOp {
	VisualShaderNodeVectorBase
}

pub fn (s &VisualShaderNodeVectorOp) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeVectorOp) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeVectorOp) set_operator(op VisualShaderNodeVectorOpOperator) {
	classname := StringName.new("VisualShaderNodeVectorOp")
	fnname := StringName.new("set_operator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3371507302)
	mut args := unsafe { [1]voidptr{} }
	i64_op := i64(op)
	args[0] = unsafe{voidptr(&i64_op)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeVectorOp) get_operator() VisualShaderNodeVectorOpOperator {
	mut result := i64(VisualShaderNodeVectorOpOperator.op_add)
	classname := StringName.new("VisualShaderNodeVectorOp")
	fnname := StringName.new("get_operator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 11793929)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeVectorOpOperator(result)}
}
