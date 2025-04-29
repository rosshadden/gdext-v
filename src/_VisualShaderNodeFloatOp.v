module gd

pub enum VisualShaderNodeFloatOpOperator as i64 {
	op_add = 0
	op_sub = 1
	op_mul = 2
	op_div = 3
	op_mod = 4
	op_pow = 5
	op_max = 6
	op_min = 7
	op_atan2 = 8
	op_step = 9
	op_enum_size = 10
}

pub struct VisualShaderNodeFloatOp {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeFloatOp) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeFloatOp) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeFloatOp) set_operator(op VisualShaderNodeFloatOpOperator) {
	classname := StringName.new("VisualShaderNodeFloatOp")
	fnname := StringName.new("set_operator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2488468047)
	mut args := unsafe { [1]voidptr{} }
	i64_op := i64(op)
	args[0] = unsafe{voidptr(&i64_op)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFloatOp) get_operator() VisualShaderNodeFloatOpOperator {
	mut result := i64(VisualShaderNodeFloatOpOperator.op_add)
	classname := StringName.new("VisualShaderNodeFloatOp")
	fnname := StringName.new("get_operator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1867979390)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeFloatOpOperator(result)}
}
