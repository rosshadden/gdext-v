module gd

pub enum VisualShaderNodeTransformOpOperator as i64 {
	op_axb = 0
	op_bxa = 1
	op_axb_comp = 2
	op_bxa_comp = 3
	op_add = 4
	op_a_minus_b = 5
	op_b_minus_a = 6
	op_a_div_b = 7
	op_b_div_a = 8
	op_max = 9
}

pub struct VisualShaderNodeTransformOp {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeTransformOp) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeTransformOp) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeTransformOp) set_operator(op VisualShaderNodeTransformOpOperator) {
	classname := StringName.new("VisualShaderNodeTransformOp")
	fnname := StringName.new("set_operator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2287310733)
	mut args := unsafe { [1]voidptr{} }
	i64_op := i64(op)
	args[0] = unsafe{voidptr(&i64_op)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeTransformOp) get_operator() VisualShaderNodeTransformOpOperator {
	mut result := i64(VisualShaderNodeTransformOpOperator.op_axb)
	classname := StringName.new("VisualShaderNodeTransformOp")
	fnname := StringName.new("get_operator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1238663601)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeTransformOpOperator(result)}
}
