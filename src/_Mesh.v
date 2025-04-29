module gd

pub enum MeshPrimitiveType as i64 {
	primitive_points = 0
	primitive_lines = 1
	primitive_line_strip = 2
	primitive_triangles = 3
	primitive_triangle_strip = 4
}

pub enum MeshArrayType as i64 {
	array_vertex = 0
	array_normal = 1
	array_tangent = 2
	array_color = 3
	array_tex_uv = 4
	array_tex_uv2 = 5
	array_custom0 = 6
	array_custom1 = 7
	array_custom2 = 8
	array_custom3 = 9
	array_bones = 10
	array_weights = 11
	array_index = 12
	array_max = 13
}

pub enum MeshArrayCustomFormat as i64 {
	array_custom_rgba8_unorm = 0
	array_custom_rgba8_snorm = 1
	array_custom_rg_half = 2
	array_custom_rgba_half = 3
	array_custom_r_float = 4
	array_custom_rg_float = 5
	array_custom_rgb_float = 6
	array_custom_rgba_float = 7
	array_custom_max = 8
}

pub enum MeshArrayFormat as i64 {
	array_format_vertex = 1
	array_format_normal = 2
	array_format_tangent = 4
	array_format_color = 8
	array_format_tex_uv = 16
	array_format_tex_uv2 = 32
	array_format_custom0 = 64
	array_format_custom1 = 128
	array_format_custom2 = 256
	array_format_custom3 = 512
	array_format_bones = 1024
	array_format_weights = 2048
	array_format_index = 4096
	array_format_blend_shape_mask = 7
	array_format_custom_base = 13
	array_format_custom_bits = 3
	array_format_custom2_shift = 19
	array_format_custom3_shift = 22
	array_compress_flags_base = 25
	array_flag_use_2d_vertices = 33554432
	array_flag_use_dynamic_update = 67108864
	array_flag_use_8_bone_weights = 134217728
	array_flag_uses_empty_vertex_array = 268435456
	array_flag_compress_attributes = 536870912
}

pub enum MeshBlendShapeMode as i64 {
	blend_shape_mode_normalized = 0
	blend_shape_mode_relative = 1
}

pub struct Mesh {
	Resource
}

pub fn (s &Mesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Mesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IMeshGetSurfaceCount {
mut:
	get_surface_count_() i64
}

pub fn (s &Mesh) gd_get_surface_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Mesh")
	fnname := StringName.new("_get_surface_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMeshSurfaceGetArrayLen {
mut:
	surface_get_array_len_(index i64) i64
}

pub fn (s &Mesh) gd_surface_get_array_len(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("Mesh")
	fnname := StringName.new("_surface_get_array_len")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMeshSurfaceGetArrayIndexLen {
mut:
	surface_get_array_index_len_(index i64) i64
}

pub fn (s &Mesh) gd_surface_get_array_index_len(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("Mesh")
	fnname := StringName.new("_surface_get_array_index_len")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMeshSurfaceGetArrays {
mut:
	surface_get_arrays_(index i64) Array
}

pub fn (s &Mesh) gd_surface_get_arrays(index i64) Array {
	mut result := Array{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("_surface_get_arrays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMeshSurfaceGetBlendShapeArrays {
mut:
	surface_get_blend_shape_arrays_(index i64) Array
}

pub fn (s &Mesh) gd_surface_get_blend_shape_arrays(index i64) Array {
	mut result := Array{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("_surface_get_blend_shape_arrays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMeshSurfaceGetLods {
mut:
	surface_get_lods_(index i64) Dictionary
}

pub fn (s &Mesh) gd_surface_get_lods(index i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("_surface_get_lods")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMeshSurfaceGetFormat {
mut:
	surface_get_format_(index i64) i64
}

pub fn (s &Mesh) gd_surface_get_format(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("Mesh")
	fnname := StringName.new("_surface_get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMeshSurfaceGetPrimitiveType {
mut:
	surface_get_primitive_type_(index i64) i64
}

pub fn (s &Mesh) gd_surface_get_primitive_type(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("Mesh")
	fnname := StringName.new("_surface_get_primitive_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMeshSurfaceSetMaterial {
mut:
	surface_set_material_(index i64, material Material)
}

pub fn (s &Mesh) gd_surface_set_material(index i64, material Material) {
	classname := StringName.new("Mesh")
	fnname := StringName.new("_surface_set_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3671737478)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = voidptr(&material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IMeshSurfaceGetMaterial {
mut:
	surface_get_material_(index i64) Material
}

pub fn (s &Mesh) gd_surface_get_material(index i64) Material {
	mut result := Material{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("_surface_get_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2897466400)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMeshGetBlendShapeCount {
mut:
	get_blend_shape_count_() i64
}

pub fn (s &Mesh) gd_get_blend_shape_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Mesh")
	fnname := StringName.new("_get_blend_shape_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMeshGetBlendShapeName {
mut:
	get_blend_shape_name_(index i64) StringName
}

pub fn (s &Mesh) gd_get_blend_shape_name(index i64) string {
	mut result := StringName{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("_get_blend_shape_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IMeshSetBlendShapeName {
mut:
	set_blend_shape_name_(index i64, name StringName)
}

pub fn (s &Mesh) gd_set_blend_shape_name(index i64, name string) {
	classname := StringName.new("Mesh")
	fnname := StringName.new("_set_blend_shape_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface IMeshGetAabb {
mut:
	get_aabb_() AABB
}

pub fn (s &Mesh) gd_get_aabb() AABB {
	mut result := AABB{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("_get_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Mesh) set_lightmap_size_hint(size Vector2i) {
	classname := StringName.new("Mesh")
	fnname := StringName.new("set_lightmap_size_hint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Mesh) get_lightmap_size_hint() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("get_lightmap_size_hint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Mesh) get_aabb() AABB {
	mut result := AABB{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("get_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Mesh) get_faces() PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("get_faces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Mesh) get_surface_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Mesh")
	fnname := StringName.new("get_surface_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Mesh) surface_get_arrays(surf_idx i64) Array {
	mut result := Array{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("surface_get_arrays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Mesh) surface_get_blend_shape_arrays(surf_idx i64) Array {
	mut result := Array{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("surface_get_blend_shape_arrays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Mesh) surface_set_material(surf_idx i64, material Material) {
	classname := StringName.new("Mesh")
	fnname := StringName.new("surface_set_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3671737478)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	args[1] = voidptr(&material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Mesh) surface_get_material(surf_idx i64) Material {
	mut result := Material{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("surface_get_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2897466400)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Mesh) create_placeholder() Resource {
	mut result := Resource{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("create_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Mesh) create_trimesh_shape() ConcavePolygonShape3D {
	mut result := ConcavePolygonShape3D{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("create_trimesh_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4160111210)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Mesh_create_convex_shape_Cfg {
pub:
	clean bool
	simplify bool
}

pub fn (s &Mesh) create_convex_shape(cfg Mesh_create_convex_shape_Cfg) ConvexPolygonShape3D {
	mut result := ConvexPolygonShape3D{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("create_convex_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2529984628)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.clean)}
	args[1] = unsafe{voidptr(&cfg.simplify)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Mesh) create_outline(margin f64) Mesh {
	mut result := Mesh{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("create_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1208642001)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Mesh) generate_triangle_mesh() TriangleMesh {
	mut result := TriangleMesh{}
	classname := StringName.new("Mesh")
	fnname := StringName.new("generate_triangle_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3476533166)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
