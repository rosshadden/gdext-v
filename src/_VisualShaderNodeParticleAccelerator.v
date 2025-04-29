module gd

pub enum VisualShaderNodeParticleAcceleratorMode as i64 {
	mode_linear = 0
	mode_radial = 1
	mode_tangential = 2
	mode_max = 3
}

pub struct VisualShaderNodeParticleAccelerator {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeParticleAccelerator) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeParticleAccelerator) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeParticleAccelerator) set_mode(mode VisualShaderNodeParticleAcceleratorMode) {
	classname := StringName.new("VisualShaderNodeParticleAccelerator")
	fnname := StringName.new("set_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457585749)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeParticleAccelerator) get_mode() VisualShaderNodeParticleAcceleratorMode {
	mut result := i64(VisualShaderNodeParticleAcceleratorMode.mode_linear)
	classname := StringName.new("VisualShaderNodeParticleAccelerator")
	fnname := StringName.new("get_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2660365633)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeParticleAcceleratorMode(result)}
}
