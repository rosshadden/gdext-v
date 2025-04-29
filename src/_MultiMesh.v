module gd

pub enum MultiMeshTransformFormat as i64 {
	transform_2d = 0
	transform_3d = 1
}

pub enum MultiMeshPhysicsInterpolationQuality as i64 {
	interp_quality_fast = 0
	interp_quality_high = 1
}

pub struct MultiMesh {
	Resource
}

pub fn (s &MultiMesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MultiMesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &MultiMesh) set_mesh(mesh Mesh) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) get_mesh() Mesh {
	mut result := Mesh{}
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("get_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiMesh) set_use_colors(enable bool) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_use_colors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) is_using_colors() bool {
	mut result := false
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("is_using_colors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiMesh) set_use_custom_data(enable bool) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_use_custom_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) is_using_custom_data() bool {
	mut result := false
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("is_using_custom_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiMesh) set_transform_format(format MultiMeshTransformFormat) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_transform_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2404750322)
	mut args := unsafe { [1]voidptr{} }
	i64_format := i64(format)
	args[0] = unsafe{voidptr(&i64_format)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) get_transform_format() MultiMeshTransformFormat {
	mut result := i64(MultiMeshTransformFormat.transform_2d)
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("get_transform_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2444156481)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MultiMeshTransformFormat(result)}
}

pub fn (s &MultiMesh) set_instance_count(count i64) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_instance_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) get_instance_count() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("get_instance_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiMesh) set_visible_instance_count(count i64) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_visible_instance_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) get_visible_instance_count() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("get_visible_instance_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiMesh) set_physics_interpolation_quality(quality MultiMeshPhysicsInterpolationQuality) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_physics_interpolation_quality")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1819488408)
	mut args := unsafe { [1]voidptr{} }
	i64_quality := i64(quality)
	args[0] = unsafe{voidptr(&i64_quality)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) get_physics_interpolation_quality() MultiMeshPhysicsInterpolationQuality {
	mut result := i64(MultiMeshPhysicsInterpolationQuality.interp_quality_fast)
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("get_physics_interpolation_quality")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1465701882)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MultiMeshPhysicsInterpolationQuality(result)}
}

pub fn (s &MultiMesh) set_instance_transform(instance i64, transform Transform3D) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_instance_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&instance)}
	args[1] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) set_instance_transform_2d(instance i64, transform Transform2D) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_instance_transform_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 30160968)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&instance)}
	args[1] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) get_instance_transform(instance i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("get_instance_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&instance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiMesh) get_instance_transform_2d(instance i64) Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("get_instance_transform_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3836996910)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&instance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiMesh) set_instance_color(instance i64, color Color) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_instance_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&instance)}
	args[1] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) get_instance_color(instance i64) Color {
	mut result := Color{}
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("get_instance_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&instance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiMesh) set_instance_custom_data(instance i64, custom_data Color) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_instance_custom_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&instance)}
	args[1] = unsafe{voidptr(&custom_data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) get_instance_custom_data(instance i64) Color {
	mut result := Color{}
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("get_instance_custom_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&instance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiMesh) reset_instance_physics_interpolation(instance i64) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("reset_instance_physics_interpolation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&instance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) set_custom_aabb(aabb AABB) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_custom_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&aabb)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) get_custom_aabb() AABB {
	mut result := AABB{}
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("get_custom_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiMesh) get_aabb() AABB {
	mut result := AABB{}
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("get_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiMesh) get_buffer() PackedFloat32Array {
	mut result := PackedFloat32Array{}
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("get_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiMesh) set_buffer(buffer PackedFloat32Array) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiMesh) set_buffer_interpolated(buffer_curr PackedFloat32Array, buffer_prev PackedFloat32Array) {
	classname := StringName.new("MultiMesh")
	fnname := StringName.new("set_buffer_interpolated")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3514430332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&buffer_curr)}
	args[1] = unsafe{voidptr(&buffer_prev)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
