module gd

pub struct GPUParticlesCollision3D {
	VisualInstance3D
}

pub fn (s &GPUParticlesCollision3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GPUParticlesCollision3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GPUParticlesCollision3D) set_cull_mask(mask i64) {
	classname := StringName.new("GPUParticlesCollision3D")
	fnname := StringName.new("set_cull_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollision3D) get_cull_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("GPUParticlesCollision3D")
	fnname := StringName.new("get_cull_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
