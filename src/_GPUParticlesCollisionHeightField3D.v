module gd

pub enum GPUParticlesCollisionHeightField3DResolution as i64 {
	resolution_256 = 0
	resolution_512 = 1
	resolution_1024 = 2
	resolution_2048 = 3
	resolution_4096 = 4
	resolution_8192 = 5
	resolution_max = 6
}

pub enum GPUParticlesCollisionHeightField3DUpdateMode as i64 {
	update_mode_when_moved = 0
	update_mode_always = 1
}

pub struct GPUParticlesCollisionHeightField3D {
	GPUParticlesCollision3D
}

pub fn (s &GPUParticlesCollisionHeightField3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GPUParticlesCollisionHeightField3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GPUParticlesCollisionHeightField3D) set_size(size Vector3) {
	classname := StringName.new("GPUParticlesCollisionHeightField3D")
	fnname := StringName.new("set_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionHeightField3D) get_size() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("GPUParticlesCollisionHeightField3D")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticlesCollisionHeightField3D) set_resolution(resolution GPUParticlesCollisionHeightField3DResolution) {
	classname := StringName.new("GPUParticlesCollisionHeightField3D")
	fnname := StringName.new("set_resolution")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1009996517)
	mut args := unsafe { [1]voidptr{} }
	i64_resolution := i64(resolution)
	args[0] = unsafe{voidptr(&i64_resolution)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionHeightField3D) get_resolution() GPUParticlesCollisionHeightField3DResolution {
	mut result := i64(GPUParticlesCollisionHeightField3DResolution.resolution_256)
	classname := StringName.new("GPUParticlesCollisionHeightField3D")
	fnname := StringName.new("get_resolution")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1156065644)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GPUParticlesCollisionHeightField3DResolution(result)}
}

pub fn (s &GPUParticlesCollisionHeightField3D) set_update_mode(update_mode GPUParticlesCollisionHeightField3DUpdateMode) {
	classname := StringName.new("GPUParticlesCollisionHeightField3D")
	fnname := StringName.new("set_update_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 673680859)
	mut args := unsafe { [1]voidptr{} }
	i64_update_mode := i64(update_mode)
	args[0] = unsafe{voidptr(&i64_update_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionHeightField3D) get_update_mode() GPUParticlesCollisionHeightField3DUpdateMode {
	mut result := i64(GPUParticlesCollisionHeightField3DUpdateMode.update_mode_when_moved)
	classname := StringName.new("GPUParticlesCollisionHeightField3D")
	fnname := StringName.new("get_update_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1998141380)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GPUParticlesCollisionHeightField3DUpdateMode(result)}
}

pub fn (s &GPUParticlesCollisionHeightField3D) set_heightfield_mask(heightfield_mask i64) {
	classname := StringName.new("GPUParticlesCollisionHeightField3D")
	fnname := StringName.new("set_heightfield_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&heightfield_mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionHeightField3D) get_heightfield_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("GPUParticlesCollisionHeightField3D")
	fnname := StringName.new("get_heightfield_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticlesCollisionHeightField3D) set_heightfield_mask_value(layer_number i64, value bool) {
	classname := StringName.new("GPUParticlesCollisionHeightField3D")
	fnname := StringName.new("set_heightfield_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionHeightField3D) get_heightfield_mask_value(layer_number i64) bool {
	mut result := false
	classname := StringName.new("GPUParticlesCollisionHeightField3D")
	fnname := StringName.new("get_heightfield_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticlesCollisionHeightField3D) set_follow_camera_enabled(enabled bool) {
	classname := StringName.new("GPUParticlesCollisionHeightField3D")
	fnname := StringName.new("set_follow_camera_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticlesCollisionHeightField3D) is_follow_camera_enabled() bool {
	mut result := false
	classname := StringName.new("GPUParticlesCollisionHeightField3D")
	fnname := StringName.new("is_follow_camera_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
