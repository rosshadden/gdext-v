module gd

pub struct ImporterMesh {
	Resource
}

pub fn (s &ImporterMesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ImporterMesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ImporterMesh) add_blend_shape(name string) {
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("add_blend_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImporterMesh) get_blend_shape_count() i64 {
	mut result := i64(0)
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_blend_shape_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ImporterMesh) get_blend_shape_name(blend_shape_idx i64) string {
	mut result := String{}
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_blend_shape_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&blend_shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ImporterMesh) set_blend_shape_mode(mode MeshBlendShapeMode) {
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("set_blend_shape_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 227983991)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImporterMesh) get_blend_shape_mode() MeshBlendShapeMode {
	mut result := i64(MeshBlendShapeMode.blend_shape_mode_normalized)
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_blend_shape_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 836485024)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MeshBlendShapeMode(result)}
}

@[params]
pub struct ImporterMesh_add_surface_Cfg {
pub:
	blend_shapes Array
	lods Dictionary
	material Material
	name string
	flags i64
}

pub fn (s &ImporterMesh) add_surface(primitive MeshPrimitiveType, arrays Array, cfg ImporterMesh_add_surface_Cfg) {
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("add_surface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740448849)
	mut args := unsafe { [7]voidptr{} }
	i64_primitive := i64(primitive)
	args[0] = unsafe{voidptr(&i64_primitive)}
	args[1] = unsafe{voidptr(&arrays)}
	args[2] = unsafe{voidptr(&cfg.blend_shapes)}
	args[3] = unsafe{voidptr(&cfg.lods)}
	args[4] = voidptr(&cfg.material.ptr)
	arg_sn5 := String.new(cfg.name)
	args[5] = unsafe{voidptr(&arg_sn5)}
	args[6] = unsafe{voidptr(&cfg.flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn5.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImporterMesh) get_surface_count() i64 {
	mut result := i64(0)
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_surface_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ImporterMesh) get_surface_primitive_type(surface_idx i64) MeshPrimitiveType {
	mut result := i64(MeshPrimitiveType.primitive_points)
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_surface_primitive_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3552571330)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surface_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MeshPrimitiveType(result)}
}

pub fn (s &ImporterMesh) get_surface_name(surface_idx i64) string {
	mut result := String{}
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_surface_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surface_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ImporterMesh) get_surface_arrays(surface_idx i64) Array {
	mut result := Array{}
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_surface_arrays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surface_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ImporterMesh) get_surface_blend_shape_arrays(surface_idx i64, blend_shape_idx i64) Array {
	mut result := Array{}
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_surface_blend_shape_arrays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2345056839)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&surface_idx)}
	args[1] = unsafe{voidptr(&blend_shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ImporterMesh) get_surface_lod_count(surface_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_surface_lod_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surface_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ImporterMesh) get_surface_lod_size(surface_idx i64, lod_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_surface_lod_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&surface_idx)}
	args[1] = unsafe{voidptr(&lod_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ImporterMesh) get_surface_lod_indices(surface_idx i64, lod_idx i64) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_surface_lod_indices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265128013)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&surface_idx)}
	args[1] = unsafe{voidptr(&lod_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ImporterMesh) get_surface_material(surface_idx i64) Material {
	mut result := Material{}
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_surface_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2897466400)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surface_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ImporterMesh) get_surface_format(surface_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_surface_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surface_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ImporterMesh) set_surface_name(surface_idx i64, name string) {
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("set_surface_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&surface_idx)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImporterMesh) set_surface_material(surface_idx i64, material Material) {
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("set_surface_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3671737478)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&surface_idx)}
	args[1] = voidptr(&material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImporterMesh) generate_lods(normal_merge_angle f64, normal_split_angle f64, bone_transform_array Array) {
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("generate_lods")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2491878677)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&normal_merge_angle)}
	args[1] = unsafe{voidptr(&normal_split_angle)}
	args[2] = unsafe{voidptr(&bone_transform_array)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct ImporterMesh_get_mesh_Cfg {
pub:
	base_mesh ArrayMesh
}

pub fn (s &ImporterMesh) get_mesh(cfg ImporterMesh_get_mesh_Cfg) ArrayMesh {
	mut result := ArrayMesh{}
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1457573577)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&cfg.base_mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ImporterMesh) clear() {
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImporterMesh) set_lightmap_size_hint(size Vector2i) {
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("set_lightmap_size_hint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImporterMesh) get_lightmap_size_hint() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("ImporterMesh")
	fnname := StringName.new("get_lightmap_size_hint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
