module gd

pub enum VisualShaderNodeMixOpType as i64 {
	op_type_scalar = 0
	op_type_vector_2d = 1
	op_type_vector_2d_scalar = 2
	op_type_vector_3d = 3
	op_type_vector_3d_scalar = 4
	op_type_vector_4d = 5
	op_type_vector_4d_scalar = 6
	op_type_max = 7
}

pub struct VisualShaderNodeMix {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeMix) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeMix) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeMix) set_op_type(op_type VisualShaderNodeMixOpType) {
	classname := StringName.new("VisualShaderNodeMix")
	fnname := StringName.new("set_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3397501671)
	mut args := unsafe { [1]voidptr{} }
	i64_op_type := i64(op_type)
	args[0] = unsafe{voidptr(&i64_op_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeMix) get_op_type() VisualShaderNodeMixOpType {
	mut result := i64(VisualShaderNodeMixOpType.op_type_scalar)
	classname := StringName.new("VisualShaderNodeMix")
	fnname := StringName.new("get_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4013957297)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeMixOpType(result)}
}
