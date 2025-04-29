module gd

pub struct GPUParticlesCollisionBox3D {
	GPUParticlesCollision3D
}

pub fn (s &GPUParticlesCollisionBox3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GPUParticlesCollisionBox3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GPUParticlesCollisionBox3D) set_size(size Vector3) {
	classname := StringName.new("GPUParticlesCollisionBox3D")
	fnname := StringName.new("set_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionBox3D) get_size() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("GPUParticlesCollisionBox3D")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
