module gd

pub struct GridMap {
	Node3D
}

pub fn (s &GridMap) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GridMap) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GridMap) set_collision_layer(layer i64) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_collision_layer() i64 {
	mut result := i64(0)
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_collision_mask(mask i64) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_collision_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_collision_mask_value(layer_number i64, value bool) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_collision_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_collision_mask_value(layer_number i64) bool {
	mut result := false
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_collision_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_collision_layer_value(layer_number i64, value bool) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_collision_layer_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_collision_layer_value(layer_number i64) bool {
	mut result := false
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_collision_layer_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_collision_priority(priority f64) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_collision_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_collision_priority() f64 {
	mut result := f64(0)
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_collision_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_physics_material(material PhysicsMaterial) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_physics_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1784508650)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_physics_material() PhysicsMaterial {
	mut result := PhysicsMaterial{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_physics_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2521850424)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_bake_navigation(bake_navigation bool) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_bake_navigation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bake_navigation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) is_baking_navigation() bool {
	mut result := false
	classname := StringName.new("GridMap")
	fnname := StringName.new("is_baking_navigation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_navigation_map(navigation_map RID) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_navigation_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&navigation_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_navigation_map() RID {
	mut result := RID{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_navigation_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_mesh_library(mesh_library MeshLibrary) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_mesh_library")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1488083439)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&mesh_library.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_mesh_library() MeshLibrary {
	mut result := MeshLibrary{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_mesh_library")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3350993772)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_cell_size(size Vector3) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_cell_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_cell_size() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_cell_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_cell_scale(scale f64) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_cell_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_cell_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_cell_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_octant_size(size i64) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_octant_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_octant_size() i64 {
	mut result := i64(0)
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_octant_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct GridMap_set_cell_item_Cfg {
pub:
	orientation i64
}

pub fn (s &GridMap) set_cell_item(position Vector3i, item i64, cfg GridMap_set_cell_item_Cfg) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_cell_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3449088946)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&item)}
	args[2] = unsafe{voidptr(&cfg.orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_cell_item(position Vector3i) i64 {
	mut result := i64(0)
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_cell_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3724960147)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) get_cell_item_orientation(position Vector3i) i64 {
	mut result := i64(0)
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_cell_item_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3724960147)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) get_cell_item_basis(position Vector3i) Basis {
	mut result := Basis{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_cell_item_basis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3493604918)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) get_basis_with_orthogonal_index(index i64) Basis {
	mut result := Basis{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_basis_with_orthogonal_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2816196998)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) get_orthogonal_index_from_basis(basis Basis) i64 {
	mut result := i64(0)
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_orthogonal_index_from_basis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4210359952)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&basis)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) local_to_map(local_position Vector3) Vector3i {
	mut result := Vector3i{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("local_to_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1257687843)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&local_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) map_to_local(map_position Vector3i) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("map_to_local")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1088329196)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&map_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) resource_changed(resource Resource) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("resource_changed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&resource.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) set_center_x(enable bool) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_center_x")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_center_x() bool {
	mut result := false
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_center_x")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_center_y(enable bool) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_center_y")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_center_y() bool {
	mut result := false
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_center_y")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) set_center_z(enable bool) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("set_center_z")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_center_z() bool {
	mut result := false
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_center_z")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) clear() {
	classname := StringName.new("GridMap")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMap) get_used_cells() Array {
	mut result := Array{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_used_cells")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) get_used_cells_by_item(item i64) Array {
	mut result := Array{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_used_cells_by_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&item)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) get_meshes() Array {
	mut result := Array{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_meshes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) get_bake_meshes() Array {
	mut result := Array{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_bake_meshes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) get_bake_mesh_instance(idx i64) RID {
	mut result := RID{}
	classname := StringName.new("GridMap")
	fnname := StringName.new("get_bake_mesh_instance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 937000113)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMap) clear_baked_meshes() {
	classname := StringName.new("GridMap")
	fnname := StringName.new("clear_baked_meshes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct GridMap_make_baked_meshes_Cfg {
pub:
	gen_lightmap_uv bool
	lightmap_uv_texel_size f64
}

pub fn (s &GridMap) make_baked_meshes(cfg GridMap_make_baked_meshes_Cfg) {
	classname := StringName.new("GridMap")
	fnname := StringName.new("make_baked_meshes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3609286057)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.gen_lightmap_uv)}
	args[1] = unsafe{voidptr(&cfg.lightmap_uv_texel_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
