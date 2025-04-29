module gd

pub struct AStar2D {
	RefCounted
}

pub fn (s &AStar2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AStar2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IAStar2DEstimateCost {
mut:
	estimate_cost_(from_id i64, end_id i64) f64
}

pub fn (s &AStar2D) gd_estimate_cost(from_id i64, end_id i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AStar2D")
	fnname := StringName.new("_estimate_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_id)}
	args[1] = unsafe{voidptr(&end_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAStar2DComputeCost {
mut:
	compute_cost_(from_id i64, to_id i64) f64
}

pub fn (s &AStar2D) gd_compute_cost(from_id i64, to_id i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AStar2D")
	fnname := StringName.new("_compute_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_id)}
	args[1] = unsafe{voidptr(&to_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStar2D) get_available_point_id() i64 {
	mut result := i64(0)
	classname := StringName.new("AStar2D")
	fnname := StringName.new("get_available_point_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AStar2D_add_point_Cfg {
pub:
	weight_scale f64
}

pub fn (s &AStar2D) add_point(id i64, position Vector2, cfg AStar2D_add_point_Cfg) {
	classname := StringName.new("AStar2D")
	fnname := StringName.new("add_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4074201818)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&position)}
	args[2] = unsafe{voidptr(&cfg.weight_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStar2D) get_point_position(id i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("AStar2D")
	fnname := StringName.new("get_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStar2D) set_point_position(id i64, position Vector2) {
	classname := StringName.new("AStar2D")
	fnname := StringName.new("set_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStar2D) get_point_weight_scale(id i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AStar2D")
	fnname := StringName.new("get_point_weight_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStar2D) set_point_weight_scale(id i64, weight_scale f64) {
	classname := StringName.new("AStar2D")
	fnname := StringName.new("set_point_weight_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&weight_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStar2D) remove_point(id i64) {
	classname := StringName.new("AStar2D")
	fnname := StringName.new("remove_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStar2D) has_point(id i64) bool {
	mut result := false
	classname := StringName.new("AStar2D")
	fnname := StringName.new("has_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStar2D) get_point_connections(id i64) PackedInt64Array {
	mut result := PackedInt64Array{}
	classname := StringName.new("AStar2D")
	fnname := StringName.new("get_point_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2865087369)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStar2D) get_point_ids() PackedInt64Array {
	mut result := PackedInt64Array{}
	classname := StringName.new("AStar2D")
	fnname := StringName.new("get_point_ids")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3851388692)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AStar2D_set_point_disabled_Cfg {
pub:
	disabled bool
}

pub fn (s &AStar2D) set_point_disabled(id i64, cfg AStar2D_set_point_disabled_Cfg) {
	classname := StringName.new("AStar2D")
	fnname := StringName.new("set_point_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 972357352)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&cfg.disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStar2D) is_point_disabled(id i64) bool {
	mut result := false
	classname := StringName.new("AStar2D")
	fnname := StringName.new("is_point_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AStar2D_connect_points_Cfg {
pub:
	bidirectional bool
}

pub fn (s &AStar2D) connect_points(id i64, to_id i64, cfg AStar2D_connect_points_Cfg) {
	classname := StringName.new("AStar2D")
	fnname := StringName.new("connect_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3710494224)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&to_id)}
	args[2] = unsafe{voidptr(&cfg.bidirectional)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AStar2D_disconnect_points_Cfg {
pub:
	bidirectional bool
}

pub fn (s &AStar2D) disconnect_points(id i64, to_id i64, cfg AStar2D_disconnect_points_Cfg) {
	classname := StringName.new("AStar2D")
	fnname := StringName.new("disconnect_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3710494224)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&to_id)}
	args[2] = unsafe{voidptr(&cfg.bidirectional)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AStar2D_are_points_connected_Cfg {
pub:
	bidirectional bool
}

pub fn (s &AStar2D) are_points_connected(id i64, to_id i64, cfg AStar2D_are_points_connected_Cfg) bool {
	mut result := false
	classname := StringName.new("AStar2D")
	fnname := StringName.new("are_points_connected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2288175859)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&to_id)}
	args[2] = unsafe{voidptr(&cfg.bidirectional)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStar2D) get_point_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AStar2D")
	fnname := StringName.new("get_point_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStar2D) get_point_capacity() i64 {
	mut result := i64(0)
	classname := StringName.new("AStar2D")
	fnname := StringName.new("get_point_capacity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStar2D) reserve_space(num_nodes i64) {
	classname := StringName.new("AStar2D")
	fnname := StringName.new("reserve_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&num_nodes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStar2D) clear() {
	classname := StringName.new("AStar2D")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AStar2D_get_closest_point_Cfg {
pub:
	include_disabled bool
}

pub fn (s &AStar2D) get_closest_point(to_position Vector2, cfg AStar2D_get_closest_point_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("AStar2D")
	fnname := StringName.new("get_closest_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2300324924)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&to_position)}
	args[1] = unsafe{voidptr(&cfg.include_disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStar2D) get_closest_position_in_segment(to_position Vector2) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("AStar2D")
	fnname := StringName.new("get_closest_position_in_segment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AStar2D_get_point_path_Cfg {
pub:
	allow_partial_path bool
}

pub fn (s &AStar2D) get_point_path(from_id i64, to_id i64, cfg AStar2D_get_point_path_Cfg) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("AStar2D")
	fnname := StringName.new("get_point_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3427490392)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&from_id)}
	args[1] = unsafe{voidptr(&to_id)}
	args[2] = unsafe{voidptr(&cfg.allow_partial_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AStar2D_get_id_path_Cfg {
pub:
	allow_partial_path bool
}

pub fn (s &AStar2D) get_id_path(from_id i64, to_id i64, cfg AStar2D_get_id_path_Cfg) PackedInt64Array {
	mut result := PackedInt64Array{}
	classname := StringName.new("AStar2D")
	fnname := StringName.new("get_id_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3136199648)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&from_id)}
	args[1] = unsafe{voidptr(&to_id)}
	args[2] = unsafe{voidptr(&cfg.allow_partial_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
