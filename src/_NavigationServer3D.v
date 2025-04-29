module gd

pub enum NavigationServer3DProcessInfo as i64 {
	info_active_maps = 0
	info_region_count = 1
	info_agent_count = 2
	info_link_count = 3
	info_polygon_count = 4
	info_edge_count = 5
	info_edge_merge_count = 6
	info_edge_connection_count = 7
	info_edge_free_count = 8
	info_obstacle_count = 9
}

pub struct NavigationServer3D {
	Object
}

pub fn NavigationServer3D.get_singleton() NavigationServer3D {
	sn := StringName.new("NavigationServer3D")
	result := NavigationServer3D{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &NavigationServer3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s NavigationServer3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &NavigationServer3D) get_maps() Array {
	mut result := Array{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("get_maps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_create() RID {
	mut result := RID{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_set_active(gd_map RID, active bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_set_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&active)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) map_is_active(gd_map RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_is_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_set_up(gd_map RID, up Vector3) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_set_up")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&up)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) map_get_up(gd_map RID) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_up")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_set_cell_size(gd_map RID, cell_size f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_set_cell_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&cell_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) map_get_cell_size(gd_map RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_cell_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_set_cell_height(gd_map RID, cell_height f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_set_cell_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&cell_height)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) map_get_cell_height(gd_map RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_cell_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_set_merge_rasterizer_cell_scale(gd_map RID, scale f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_set_merge_rasterizer_cell_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) map_get_merge_rasterizer_cell_scale(gd_map RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_merge_rasterizer_cell_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_set_use_edge_connections(gd_map RID, enabled bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_set_use_edge_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) map_get_use_edge_connections(gd_map RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_use_edge_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_set_edge_connection_margin(gd_map RID, margin f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_set_edge_connection_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) map_get_edge_connection_margin(gd_map RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_edge_connection_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_set_link_connection_radius(gd_map RID, radius f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_set_link_connection_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) map_get_link_connection_radius(gd_map RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_link_connection_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NavigationServer3D_map_get_path_Cfg {
pub:
	navigation_layers i64
}

pub fn (s &NavigationServer3D) map_get_path(gd_map RID, origin Vector3, destination Vector3, optimize bool, cfg NavigationServer3D_map_get_path_Cfg) PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 276783190)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&origin)}
	args[2] = unsafe{voidptr(&destination)}
	args[3] = unsafe{voidptr(&optimize)}
	args[4] = unsafe{voidptr(&cfg.navigation_layers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NavigationServer3D_map_get_closest_point_to_segment_Cfg {
pub:
	use_collision bool
}

pub fn (s &NavigationServer3D) map_get_closest_point_to_segment(gd_map RID, start Vector3, end Vector3, cfg NavigationServer3D_map_get_closest_point_to_segment_Cfg) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_closest_point_to_segment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3830095642)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&start)}
	args[2] = unsafe{voidptr(&end)}
	args[3] = unsafe{voidptr(&cfg.use_collision)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_get_closest_point(gd_map RID, to_point Vector3) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_closest_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2056183332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&to_point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_get_closest_point_normal(gd_map RID, to_point Vector3) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_closest_point_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2056183332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&to_point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_get_closest_point_owner(gd_map RID, to_point Vector3) RID {
	mut result := RID{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_closest_point_owner")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 553364610)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&to_point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_get_links(gd_map RID) Array {
	mut result := Array{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_links")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_get_regions(gd_map RID) Array {
	mut result := Array{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_regions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_get_agents(gd_map RID) Array {
	mut result := Array{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_agents")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_get_obstacles(gd_map RID) Array {
	mut result := Array{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_obstacles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_force_update(gd_map RID) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_force_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) map_get_iteration_id(gd_map RID) i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_iteration_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_set_use_async_iterations(gd_map RID, enabled bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_set_use_async_iterations")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) map_get_use_async_iterations(gd_map RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_use_async_iterations")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) map_get_random_point(gd_map RID, navigation_layers i64, uniformly bool) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("map_get_random_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 722801526)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	args[1] = unsafe{voidptr(&navigation_layers)}
	args[2] = unsafe{voidptr(&uniformly)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NavigationServer3D_query_path_Cfg {
pub:
	callback Callable
}

pub fn (s &NavigationServer3D) query_path(parameters NavigationPathQueryParameters3D, gd_result NavigationPathQueryResult3D, cfg NavigationServer3D_query_path_Cfg) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("query_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2146930868)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&parameters.ptr)
	args[1] = voidptr(&gd_result.ptr)
	args[2] = unsafe{voidptr(&cfg.callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) region_create() RID {
	mut result := RID{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_set_enabled(region RID, enabled bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_set_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) region_get_enabled(region RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_set_use_edge_connections(region RID, enabled bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_set_use_edge_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) region_get_use_edge_connections(region RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_use_edge_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_set_enter_cost(region RID, enter_cost f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_set_enter_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&enter_cost)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) region_get_enter_cost(region RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_enter_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_set_travel_cost(region RID, travel_cost f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_set_travel_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&travel_cost)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) region_get_travel_cost(region RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_travel_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_set_owner_id(region RID, owner_id i64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_set_owner_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&owner_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) region_get_owner_id(region RID) i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_owner_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_owns_point(region RID, point Vector3) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_owns_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2360011153)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_set_map(region RID, gd_map RID) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_set_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) region_get_map(region RID) RID {
	mut result := RID{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_set_navigation_layers(region RID, navigation_layers i64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_set_navigation_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&navigation_layers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) region_get_navigation_layers(region RID) i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_navigation_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_set_transform(region RID, transform Transform3D) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3935195649)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) region_get_transform(region RID) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1128465797)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_set_navigation_mesh(region RID, navigation_mesh NavigationMesh) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_set_navigation_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2764952978)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = voidptr(&navigation_mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) region_bake_navigation_mesh(navigation_mesh NavigationMesh, root_node Node) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_bake_navigation_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1401173477)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&navigation_mesh.ptr)
	args[1] = voidptr(&root_node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) region_get_connections_count(region RID) i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_connections_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_get_connection_pathway_start(region RID, connection i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_connection_pathway_start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3440143363)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&connection)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_get_connection_pathway_end(region RID, connection i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_connection_pathway_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3440143363)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&connection)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NavigationServer3D_region_get_closest_point_to_segment_Cfg {
pub:
	use_collision bool
}

pub fn (s &NavigationServer3D) region_get_closest_point_to_segment(region RID, start Vector3, end Vector3, cfg NavigationServer3D_region_get_closest_point_to_segment_Cfg) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_closest_point_to_segment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3830095642)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&start)}
	args[2] = unsafe{voidptr(&end)}
	args[3] = unsafe{voidptr(&cfg.use_collision)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_get_closest_point(region RID, to_point Vector3) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_closest_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2056183332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&to_point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_get_closest_point_normal(region RID, to_point Vector3) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_closest_point_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2056183332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&to_point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_get_random_point(region RID, navigation_layers i64, uniformly bool) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_random_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 722801526)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&navigation_layers)}
	args[2] = unsafe{voidptr(&uniformly)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) region_get_bounds(region RID) AABB {
	mut result := AABB{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("region_get_bounds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 974181306)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) link_create() RID {
	mut result := RID{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) link_set_map(link RID, gd_map RID) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_set_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	args[1] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) link_get_map(link RID) RID {
	mut result := RID{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_get_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) link_set_enabled(link RID, enabled bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_set_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) link_get_enabled(link RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_get_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) link_set_bidirectional(link RID, bidirectional bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_set_bidirectional")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	args[1] = unsafe{voidptr(&bidirectional)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) link_is_bidirectional(link RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_is_bidirectional")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) link_set_navigation_layers(link RID, navigation_layers i64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_set_navigation_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	args[1] = unsafe{voidptr(&navigation_layers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) link_get_navigation_layers(link RID) i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_get_navigation_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) link_set_start_position(link RID, position Vector3) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_set_start_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) link_get_start_position(link RID) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_get_start_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) link_set_end_position(link RID, position Vector3) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_set_end_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) link_get_end_position(link RID) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_get_end_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) link_set_enter_cost(link RID, enter_cost f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_set_enter_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	args[1] = unsafe{voidptr(&enter_cost)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) link_get_enter_cost(link RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_get_enter_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) link_set_travel_cost(link RID, travel_cost f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_set_travel_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	args[1] = unsafe{voidptr(&travel_cost)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) link_get_travel_cost(link RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_get_travel_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) link_set_owner_id(link RID, owner_id i64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_set_owner_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	args[1] = unsafe{voidptr(&owner_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) link_get_owner_id(link RID) i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("link_get_owner_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&link)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_create() RID {
	mut result := RID{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_avoidance_enabled(agent RID, enabled bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_avoidance_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_avoidance_enabled(agent RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_avoidance_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_use_3d_avoidance(agent RID, enabled bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_use_3d_avoidance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_use_3d_avoidance(agent RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_use_3d_avoidance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_map(agent RID, gd_map RID) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_map(agent RID) RID {
	mut result := RID{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_paused(agent RID, paused bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&paused)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_paused(agent RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_neighbor_distance(agent RID, distance f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_neighbor_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&distance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_neighbor_distance(agent RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_neighbor_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_max_neighbors(agent RID, count i64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_max_neighbors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_max_neighbors(agent RID) i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_max_neighbors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_time_horizon_agents(agent RID, time_horizon f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_time_horizon_agents")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&time_horizon)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_time_horizon_agents(agent RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_time_horizon_agents")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_time_horizon_obstacles(agent RID, time_horizon f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_time_horizon_obstacles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&time_horizon)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_time_horizon_obstacles(agent RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_time_horizon_obstacles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_radius(agent RID, radius f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_radius(agent RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_height(agent RID, height f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&height)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_height(agent RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_max_speed(agent RID, max_speed f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_max_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&max_speed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_max_speed(agent RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_max_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_velocity_forced(agent RID, velocity Vector3) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_velocity_forced")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_set_velocity(agent RID, velocity Vector3) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_velocity(agent RID) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_position(agent RID, position Vector3) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_position(agent RID) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_is_map_changed(agent RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_is_map_changed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_avoidance_callback(agent RID, callback Callable) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_avoidance_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_has_avoidance_callback(agent RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_has_avoidance_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_avoidance_layers(agent RID, layers i64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_avoidance_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&layers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_avoidance_layers(agent RID) i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_avoidance_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_avoidance_mask(agent RID, mask i64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_avoidance_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_avoidance_mask(agent RID) i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_avoidance_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) agent_set_avoidance_priority(agent RID, priority f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_set_avoidance_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	args[1] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) agent_get_avoidance_priority(agent RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("agent_get_avoidance_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) obstacle_create() RID {
	mut result := RID{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) obstacle_set_avoidance_enabled(obstacle RID, enabled bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_set_avoidance_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) obstacle_get_avoidance_enabled(obstacle RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_get_avoidance_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) obstacle_set_use_3d_avoidance(obstacle RID, enabled bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_set_use_3d_avoidance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) obstacle_get_use_3d_avoidance(obstacle RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_get_use_3d_avoidance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) obstacle_set_map(obstacle RID, gd_map RID) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_set_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	args[1] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) obstacle_get_map(obstacle RID) RID {
	mut result := RID{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_get_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) obstacle_set_paused(obstacle RID, paused bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_set_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	args[1] = unsafe{voidptr(&paused)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) obstacle_get_paused(obstacle RID) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_get_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) obstacle_set_radius(obstacle RID, radius f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_set_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	args[1] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) obstacle_get_radius(obstacle RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_get_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) obstacle_set_height(obstacle RID, height f64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_set_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	args[1] = unsafe{voidptr(&height)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) obstacle_get_height(obstacle RID) f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) obstacle_set_velocity(obstacle RID, velocity Vector3) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_set_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	args[1] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) obstacle_get_velocity(obstacle RID) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_get_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) obstacle_set_position(obstacle RID, position Vector3) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_set_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) obstacle_get_position(obstacle RID) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) obstacle_set_vertices(obstacle RID, vertices PackedVector3Array) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_set_vertices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4030257846)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	args[1] = unsafe{voidptr(&vertices)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) obstacle_get_vertices(obstacle RID) PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_get_vertices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 808965560)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) obstacle_set_avoidance_layers(obstacle RID, layers i64) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_set_avoidance_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	args[1] = unsafe{voidptr(&layers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) obstacle_get_avoidance_layers(obstacle RID) i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("obstacle_get_avoidance_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&obstacle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct NavigationServer3D_parse_source_geometry_data_Cfg {
pub:
	callback Callable
}

pub fn (s &NavigationServer3D) parse_source_geometry_data(navigation_mesh NavigationMesh, source_geometry_data NavigationMeshSourceGeometryData3D, root_node Node, cfg NavigationServer3D_parse_source_geometry_data_Cfg) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("parse_source_geometry_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3172802542)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&navigation_mesh.ptr)
	args[1] = voidptr(&source_geometry_data.ptr)
	args[2] = voidptr(&root_node.ptr)
	args[3] = unsafe{voidptr(&cfg.callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct NavigationServer3D_bake_from_source_geometry_data_Cfg {
pub:
	callback Callable
}

pub fn (s &NavigationServer3D) bake_from_source_geometry_data(navigation_mesh NavigationMesh, source_geometry_data NavigationMeshSourceGeometryData3D, cfg NavigationServer3D_bake_from_source_geometry_data_Cfg) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("bake_from_source_geometry_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286748856)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&navigation_mesh.ptr)
	args[1] = voidptr(&source_geometry_data.ptr)
	args[2] = unsafe{voidptr(&cfg.callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct NavigationServer3D_bake_from_source_geometry_data_async_Cfg {
pub:
	callback Callable
}

pub fn (s &NavigationServer3D) bake_from_source_geometry_data_async(navigation_mesh NavigationMesh, source_geometry_data NavigationMeshSourceGeometryData3D, cfg NavigationServer3D_bake_from_source_geometry_data_async_Cfg) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("bake_from_source_geometry_data_async")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286748856)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&navigation_mesh.ptr)
	args[1] = voidptr(&source_geometry_data.ptr)
	args[2] = unsafe{voidptr(&cfg.callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) is_baking_navigation_mesh(navigation_mesh NavigationMesh) bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("is_baking_navigation_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3142026141)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&navigation_mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) source_geometry_parser_create() RID {
	mut result := RID{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("source_geometry_parser_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) source_geometry_parser_set_callback(parser RID, callback Callable) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("source_geometry_parser_set_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&parser)}
	args[1] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) simplify_path(path PackedVector3Array, epsilon f64) PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("simplify_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2344122170)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	args[1] = unsafe{voidptr(&epsilon)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) free_rid(rid RID) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("free_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) set_active(active bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("set_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&active)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) set_debug_enabled(enabled bool) {
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("set_debug_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationServer3D) get_debug_enabled() bool {
	mut result := false
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("get_debug_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationServer3D) get_process_info(process_info NavigationServer3DProcessInfo) i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationServer3D")
	fnname := StringName.new("get_process_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1938440894)
	mut args := unsafe { [1]voidptr{} }
	i64_process_info := i64(process_info)
	args[0] = unsafe{voidptr(&i64_process_info)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
