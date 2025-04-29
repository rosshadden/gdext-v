module gd

pub enum GPUParticlesCollisionSDF3DResolution as i64 {
	resolution_16 = 0
	resolution_32 = 1
	resolution_64 = 2
	resolution_128 = 3
	resolution_256 = 4
	resolution_512 = 5
	resolution_max = 6
}

pub struct GPUParticlesCollisionSDF3D {
	GPUParticlesCollision3D
}

pub fn (s &GPUParticlesCollisionSDF3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GPUParticlesCollisionSDF3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GPUParticlesCollisionSDF3D) set_size(size Vector3) {
	classname := StringName.new("GPUParticlesCollisionSDF3D")
	fnname := StringName.new("set_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionSDF3D) get_size() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("GPUParticlesCollisionSDF3D")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticlesCollisionSDF3D) set_resolution(resolution GPUParticlesCollisionSDF3DResolution) {
	classname := StringName.new("GPUParticlesCollisionSDF3D")
	fnname := StringName.new("set_resolution")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1155629297)
	mut args := unsafe { [1]voidptr{} }
	i64_resolution := i64(resolution)
	args[0] = unsafe{voidptr(&i64_resolution)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionSDF3D) get_resolution() GPUParticlesCollisionSDF3DResolution {
	mut result := i64(GPUParticlesCollisionSDF3DResolution.resolution_16)
	classname := StringName.new("GPUParticlesCollisionSDF3D")
	fnname := StringName.new("get_resolution")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2919555867)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GPUParticlesCollisionSDF3DResolution(result)}
}

pub fn (s &GPUParticlesCollisionSDF3D) set_texture(texture Texture3D) {
	classname := StringName.new("GPUParticlesCollisionSDF3D")
	fnname := StringName.new("set_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1188404210)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionSDF3D) get_texture() Texture3D {
	mut result := Texture3D{}
	classname := StringName.new("GPUParticlesCollisionSDF3D")
	fnname := StringName.new("get_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373985333)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticlesCollisionSDF3D) set_thickness(thickness f64) {
	classname := StringName.new("GPUParticlesCollisionSDF3D")
	fnname := StringName.new("set_thickness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&thickness)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionSDF3D) get_thickness() f64 {
	mut result := f64(0)
	classname := StringName.new("GPUParticlesCollisionSDF3D")
	fnname := StringName.new("get_thickness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticlesCollisionSDF3D) set_bake_mask(mask i64) {
	classname := StringName.new("GPUParticlesCollisionSDF3D")
	fnname := StringName.new("set_bake_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionSDF3D) get_bake_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("GPUParticlesCollisionSDF3D")
	fnname := StringName.new("get_bake_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticlesCollisionSDF3D) set_bake_mask_value(layer_number i64, value bool) {
	classname := StringName.new("GPUParticlesCollisionSDF3D")
	fnname := StringName.new("set_bake_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionSDF3D) get_bake_mask_value(layer_number i64) bool {
	mut result := false
	classname := StringName.new("GPUParticlesCollisionSDF3D")
	fnname := StringName.new("get_bake_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
