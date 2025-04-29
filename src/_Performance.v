module gd

pub enum PerformanceMonitor as i64 {
	time_fps = 0
	time_process = 1
	time_physics_process = 2
	time_navigation_process = 3
	memory_static = 4
	memory_static_max = 5
	memory_message_buffer_max = 6
	object_count = 7
	object_resource_count = 8
	object_node_count = 9
	object_orphan_node_count = 10
	render_total_objects_in_frame = 11
	render_total_primitives_in_frame = 12
	render_total_draw_calls_in_frame = 13
	render_video_mem_used = 14
	render_texture_mem_used = 15
	render_buffer_mem_used = 16
	physics_2d_active_objects = 17
	physics_2d_collision_pairs = 18
	physics_2d_island_count = 19
	physics_3d_active_objects = 20
	physics_3d_collision_pairs = 21
	physics_3d_island_count = 22
	audio_output_latency = 23
	navigation_active_maps = 24
	navigation_region_count = 25
	navigation_agent_count = 26
	navigation_link_count = 27
	navigation_polygon_count = 28
	navigation_edge_count = 29
	navigation_edge_merge_count = 30
	navigation_edge_connection_count = 31
	navigation_edge_free_count = 32
	navigation_obstacle_count = 33
	pipeline_compilations_canvas = 34
	pipeline_compilations_mesh = 35
	pipeline_compilations_surface = 36
	pipeline_compilations_draw = 37
	pipeline_compilations_specialization = 38
	navigation_2d_active_maps = 39
	navigation_2d_region_count = 40
	navigation_2d_agent_count = 41
	navigation_2d_link_count = 42
	navigation_2d_polygon_count = 43
	navigation_2d_edge_count = 44
	navigation_2d_edge_merge_count = 45
	navigation_2d_edge_connection_count = 46
	navigation_2d_edge_free_count = 47
	navigation_2d_obstacle_count = 48
	navigation_3d_active_maps = 49
	navigation_3d_region_count = 50
	navigation_3d_agent_count = 51
	navigation_3d_link_count = 52
	navigation_3d_polygon_count = 53
	navigation_3d_edge_count = 54
	navigation_3d_edge_merge_count = 55
	navigation_3d_edge_connection_count = 56
	navigation_3d_edge_free_count = 57
	navigation_3d_obstacle_count = 58
	monitor_max = 59
}

pub struct Performance {
	Object
}

pub fn Performance.get_singleton() Performance {
	sn := StringName.new("Performance")
	result := Performance{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &Performance) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Performance) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Performance) get_monitor(monitor PerformanceMonitor) f64 {
	mut result := f64(0)
	classname := StringName.new("Performance")
	fnname := StringName.new("get_monitor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1943275655)
	mut args := unsafe { [1]voidptr{} }
	i64_monitor := i64(monitor)
	args[0] = unsafe{voidptr(&i64_monitor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Performance_add_custom_monitor_Cfg {
pub:
	arguments Array
}

pub fn (s &Performance) add_custom_monitor(id string, callable Callable, cfg Performance_add_custom_monitor_Cfg) {
	classname := StringName.new("Performance")
	fnname := StringName.new("add_custom_monitor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4099036814)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(id)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&callable)}
	args[2] = unsafe{voidptr(&cfg.arguments)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Performance) remove_custom_monitor(id string) {
	classname := StringName.new("Performance")
	fnname := StringName.new("remove_custom_monitor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(id)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Performance) has_custom_monitor(id string) bool {
	mut result := false
	classname := StringName.new("Performance")
	fnname := StringName.new("has_custom_monitor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041966384)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(id)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Performance) get_custom_monitor(id string) Variant {
	mut result := Variant{}
	classname := StringName.new("Performance")
	fnname := StringName.new("get_custom_monitor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(id)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Performance) get_monitor_modification_time() i64 {
	mut result := i64(0)
	classname := StringName.new("Performance")
	fnname := StringName.new("get_monitor_modification_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Performance) get_custom_monitor_names() Array {
	mut result := Array{}
	classname := StringName.new("Performance")
	fnname := StringName.new("get_custom_monitor_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
