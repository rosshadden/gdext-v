module gd

pub enum NavigationPathQueryParameters3DPathfindingAlgorithm as i64 {
	pathfinding_algorithm_astar = 0
}

pub enum NavigationPathQueryParameters3DPathPostProcessing as i64 {
	path_postprocessing_corridorfunnel = 0
	path_postprocessing_edgecentered = 1
	path_postprocessing_none = 2
}

pub enum NavigationPathQueryParameters3DPathMetadataFlags as i64 {
	path_metadata_include_none = 0
	path_metadata_include_types = 1
	path_metadata_include_rids = 2
	path_metadata_include_owners = 4
	path_metadata_include_all = 7
}

pub struct NavigationPathQueryParameters3D {
	RefCounted
}

pub fn (s &NavigationPathQueryParameters3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s NavigationPathQueryParameters3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &NavigationPathQueryParameters3D) set_pathfinding_algorithm(pathfinding_algorithm NavigationPathQueryParameters3DPathfindingAlgorithm) {
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("set_pathfinding_algorithm")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 394560454)
	mut args := unsafe { [1]voidptr{} }
	i64_pathfinding_algorithm := i64(pathfinding_algorithm)
	args[0] = unsafe{voidptr(&i64_pathfinding_algorithm)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryParameters3D) get_pathfinding_algorithm() NavigationPathQueryParameters3DPathfindingAlgorithm {
	mut result := i64(NavigationPathQueryParameters3DPathfindingAlgorithm.pathfinding_algorithm_astar)
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("get_pathfinding_algorithm")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3398491350)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NavigationPathQueryParameters3DPathfindingAlgorithm(result)}
}

pub fn (s &NavigationPathQueryParameters3D) set_path_postprocessing(path_postprocessing NavigationPathQueryParameters3DPathPostProcessing) {
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("set_path_postprocessing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2267362344)
	mut args := unsafe { [1]voidptr{} }
	i64_path_postprocessing := i64(path_postprocessing)
	args[0] = unsafe{voidptr(&i64_path_postprocessing)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryParameters3D) get_path_postprocessing() NavigationPathQueryParameters3DPathPostProcessing {
	mut result := i64(NavigationPathQueryParameters3DPathPostProcessing.path_postprocessing_corridorfunnel)
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("get_path_postprocessing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3883858360)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NavigationPathQueryParameters3DPathPostProcessing(result)}
}

pub fn (s &NavigationPathQueryParameters3D) set_map(gd_map RID) {
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("set_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryParameters3D) get_map() RID {
	mut result := RID{}
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("get_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPathQueryParameters3D) set_start_position(start_position Vector3) {
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("set_start_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&start_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryParameters3D) get_start_position() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("get_start_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPathQueryParameters3D) set_target_position(target_position Vector3) {
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("set_target_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&target_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryParameters3D) get_target_position() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("get_target_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPathQueryParameters3D) set_navigation_layers(navigation_layers i64) {
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("set_navigation_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&navigation_layers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryParameters3D) get_navigation_layers() i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("get_navigation_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPathQueryParameters3D) set_metadata_flags(flags NavigationPathQueryParameters3DPathMetadataFlags) {
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("set_metadata_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2713846708)
	mut args := unsafe { [1]voidptr{} }
	i64_flags := i64(flags)
	args[0] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryParameters3D) get_metadata_flags() NavigationPathQueryParameters3DPathMetadataFlags {
	mut result := i64(NavigationPathQueryParameters3DPathMetadataFlags.path_metadata_include_none)
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("get_metadata_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1582332802)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NavigationPathQueryParameters3DPathMetadataFlags(result)}
}

pub fn (s &NavigationPathQueryParameters3D) set_simplify_path(enabled bool) {
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("set_simplify_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryParameters3D) get_simplify_path() bool {
	mut result := false
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("get_simplify_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPathQueryParameters3D) set_simplify_epsilon(epsilon f64) {
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("set_simplify_epsilon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&epsilon)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryParameters3D) get_simplify_epsilon() f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("get_simplify_epsilon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPathQueryParameters3D) set_included_regions(regions Array) {
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("set_included_regions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&regions)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryParameters3D) get_included_regions() Array {
	mut result := Array{}
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("get_included_regions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPathQueryParameters3D) set_excluded_regions(regions Array) {
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("set_excluded_regions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&regions)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryParameters3D) get_excluded_regions() Array {
	mut result := Array{}
	classname := StringName.new("NavigationPathQueryParameters3D")
	fnname := StringName.new("get_excluded_regions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
