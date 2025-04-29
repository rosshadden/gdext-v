module gd

pub enum VisualShaderNodeRemapOpType as i64 {
	op_type_scalar = 0
	op_type_vector_2d = 1
	op_type_vector_2d_scalar = 2
	op_type_vector_3d = 3
	op_type_vector_3d_scalar = 4
	op_type_vector_4d = 5
	op_type_vector_4d_scalar = 6
	op_type_max = 7
}

pub struct VisualShaderNodeRemap {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeRemap) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeRemap) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeRemap) set_op_type(op_type VisualShaderNodeRemapOpType) {
	classname := StringName.new("VisualShaderNodeRemap")
	fnname := StringName.new("set_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703697889)
	mut args := unsafe { [1]voidptr{} }
	i64_op_type := i64(op_type)
	args[0] = unsafe{voidptr(&i64_op_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeRemap) get_op_type() VisualShaderNodeRemapOpType {
	mut result := i64(VisualShaderNodeRemapOpType.op_type_scalar)
	classname := StringName.new("VisualShaderNodeRemap")
	fnname := StringName.new("get_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1678380563)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeRemapOpType(result)}
}
