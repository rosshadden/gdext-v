module gd

pub enum VisualShaderNodeClampOpType as i64 {
	op_type_float = 0
	op_type_int = 1
	op_type_uint = 2
	op_type_vector_2d = 3
	op_type_vector_3d = 4
	op_type_vector_4d = 5
	op_type_max = 6
}

pub struct VisualShaderNodeClamp {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeClamp) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeClamp) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeClamp) set_op_type(op_type VisualShaderNodeClampOpType) {
	classname := StringName.new("VisualShaderNodeClamp")
	fnname := StringName.new("set_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 405010749)
	mut args := unsafe { [1]voidptr{} }
	i64_op_type := i64(op_type)
	args[0] = unsafe{voidptr(&i64_op_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeClamp) get_op_type() VisualShaderNodeClampOpType {
	mut result := i64(VisualShaderNodeClampOpType.op_type_float)
	classname := StringName.new("VisualShaderNodeClamp")
	fnname := StringName.new("get_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 233276050)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeClampOpType(result)}
}
