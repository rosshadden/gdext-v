module gd

pub struct MeshInstance3D {
	GeometryInstance3D
}

pub fn (s &MeshInstance3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MeshInstance3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &MeshInstance3D) set_mesh(mesh Mesh) {
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("set_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshInstance3D) get_mesh() Mesh {
	mut result := Mesh{}
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("get_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshInstance3D) set_skeleton_path(skeleton_path NodePath) {
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("set_skeleton_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&skeleton_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshInstance3D) get_skeleton_path() NodePath {
	mut result := NodePath{}
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("get_skeleton_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 277076166)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshInstance3D) set_skin(skin Skin) {
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("set_skin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3971435618)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&skin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshInstance3D) get_skin() Skin {
	mut result := Skin{}
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("get_skin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074563878)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshInstance3D) get_skin_reference() SkinReference {
	mut result := SkinReference{}
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("get_skin_reference")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2060603409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshInstance3D) get_surface_override_material_count() i64 {
	mut result := i64(0)
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("get_surface_override_material_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshInstance3D) set_surface_override_material(surface i64, material Material) {
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("set_surface_override_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3671737478)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&surface)}
	args[1] = voidptr(&material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshInstance3D) get_surface_override_material(surface i64) Material {
	mut result := Material{}
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("get_surface_override_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2897466400)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surface)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshInstance3D) get_active_material(surface i64) Material {
	mut result := Material{}
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("get_active_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2897466400)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surface)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshInstance3D) create_trimesh_collision() {
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("create_trimesh_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct MeshInstance3D_create_convex_collision_Cfg {
pub:
	clean bool
	simplify bool
}

pub fn (s &MeshInstance3D) create_convex_collision(cfg MeshInstance3D_create_convex_collision_Cfg) {
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("create_convex_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2751962654)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.clean)}
	args[1] = unsafe{voidptr(&cfg.simplify)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct MeshInstance3D_create_multiple_convex_collisions_Cfg {
pub:
	settings MeshConvexDecompositionSettings
}

pub fn (s &MeshInstance3D) create_multiple_convex_collisions(cfg MeshInstance3D_create_multiple_convex_collisions_Cfg) {
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("create_multiple_convex_collisions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 628789669)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&cfg.settings.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshInstance3D) get_blend_shape_count() i64 {
	mut result := i64(0)
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("get_blend_shape_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshInstance3D) find_blend_shape_by_name(name string) i64 {
	mut result := i64(0)
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("find_blend_shape_by_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150868206)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshInstance3D) get_blend_shape_value(blend_shape_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("get_blend_shape_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&blend_shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshInstance3D) set_blend_shape_value(blend_shape_idx i64, value f64) {
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("set_blend_shape_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&blend_shape_idx)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshInstance3D) create_debug_tangents() {
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("create_debug_tangents")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct MeshInstance3D_bake_mesh_from_current_blend_shape_mix_Cfg {
pub:
	existing ArrayMesh
}

pub fn (s &MeshInstance3D) bake_mesh_from_current_blend_shape_mix(cfg MeshInstance3D_bake_mesh_from_current_blend_shape_mix_Cfg) ArrayMesh {
	mut result := ArrayMesh{}
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("bake_mesh_from_current_blend_shape_mix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1457573577)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&cfg.existing.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct MeshInstance3D_bake_mesh_from_current_skeleton_pose_Cfg {
pub:
	existing ArrayMesh
}

pub fn (s &MeshInstance3D) bake_mesh_from_current_skeleton_pose(cfg MeshInstance3D_bake_mesh_from_current_skeleton_pose_Cfg) ArrayMesh {
	mut result := ArrayMesh{}
	classname := StringName.new("MeshInstance3D")
	fnname := StringName.new("bake_mesh_from_current_skeleton_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1457573577)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&cfg.existing.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
