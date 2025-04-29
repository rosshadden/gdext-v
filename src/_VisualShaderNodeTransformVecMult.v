module gd

pub enum VisualShaderNodeTransformVecMultOperator as i64 {
	op_axb = 0
	op_bxa = 1
	op_3x3_axb = 2
	op_3x3_bxa = 3
	op_max = 4
}

pub struct VisualShaderNodeTransformVecMult {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeTransformVecMult) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeTransformVecMult) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeTransformVecMult) set_operator(op VisualShaderNodeTransformVecMultOperator) {
	classname := StringName.new("VisualShaderNodeTransformVecMult")
	fnname := StringName.new("set_operator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1785665912)
	mut args := unsafe { [1]voidptr{} }
	i64_op := i64(op)
	args[0] = unsafe{voidptr(&i64_op)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeTransformVecMult) get_operator() VisualShaderNodeTransformVecMultOperator {
	mut result := i64(VisualShaderNodeTransformVecMultOperator.op_axb)
	classname := StringName.new("VisualShaderNodeTransformVecMult")
	fnname := StringName.new("get_operator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1622088722)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeTransformVecMultOperator(result)}
}
