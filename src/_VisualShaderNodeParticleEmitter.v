module gd

pub struct VisualShaderNodeParticleEmitter {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeParticleEmitter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeParticleEmitter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeParticleEmitter) set_mode_2d(enabled bool) {
	classname := StringName.new("VisualShaderNodeParticleEmitter")
	fnname := StringName.new("set_mode_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeParticleEmitter) is_mode_2d() bool {
	mut result := false
	classname := StringName.new("VisualShaderNodeParticleEmitter")
	fnname := StringName.new("is_mode_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
