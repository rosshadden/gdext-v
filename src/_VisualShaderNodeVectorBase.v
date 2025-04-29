module gd

pub enum VisualShaderNodeVectorBaseOpType as i64 {
	op_type_vector_2d = 0
	op_type_vector_3d = 1
	op_type_vector_4d = 2
	op_type_max = 3
}

pub struct VisualShaderNodeVectorBase {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeVectorBase) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeVectorBase) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeVectorBase) set_op_type(gd_type VisualShaderNodeVectorBaseOpType) {
	classname := StringName.new("VisualShaderNodeVectorBase")
	fnname := StringName.new("set_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1692596998)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeVectorBase) get_op_type() VisualShaderNodeVectorBaseOpType {
	mut result := i64(VisualShaderNodeVectorBaseOpType.op_type_vector_2d)
	classname := StringName.new("VisualShaderNodeVectorBase")
	fnname := StringName.new("get_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2568738462)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeVectorBaseOpType(result)}
}
