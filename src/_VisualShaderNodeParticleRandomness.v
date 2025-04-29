module gd

pub enum VisualShaderNodeParticleRandomnessOpType as i64 {
	op_type_scalar = 0
	op_type_vector_2d = 1
	op_type_vector_3d = 2
	op_type_vector_4d = 3
	op_type_max = 4
}

pub struct VisualShaderNodeParticleRandomness {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeParticleRandomness) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeParticleRandomness) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeParticleRandomness) set_op_type(gd_type VisualShaderNodeParticleRandomnessOpType) {
	classname := StringName.new("VisualShaderNodeParticleRandomness")
	fnname := StringName.new("set_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2060089061)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeParticleRandomness) get_op_type() VisualShaderNodeParticleRandomnessOpType {
	mut result := i64(VisualShaderNodeParticleRandomnessOpType.op_type_scalar)
	classname := StringName.new("VisualShaderNodeParticleRandomness")
	fnname := StringName.new("get_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3597061078)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeParticleRandomnessOpType(result)}
}
