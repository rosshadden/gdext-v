module gd

pub struct TileData {
	Object
}

pub fn (s &TileData) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TileData) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TileData) set_flip_h(flip_h bool) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_flip_h")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&flip_h)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_flip_h() bool {
	mut result := false
	classname := StringName.new("TileData")
	fnname := StringName.new("get_flip_h")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_flip_v(flip_v bool) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_flip_v")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&flip_v)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_flip_v() bool {
	mut result := false
	classname := StringName.new("TileData")
	fnname := StringName.new("get_flip_v")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_transpose(transpose bool) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_transpose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&transpose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_transpose() bool {
	mut result := false
	classname := StringName.new("TileData")
	fnname := StringName.new("get_transpose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_material(material Material) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_material() Material {
	mut result := Material{}
	classname := StringName.new("TileData")
	fnname := StringName.new("get_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_texture_origin(texture_origin Vector2i) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_texture_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&texture_origin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_texture_origin() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileData")
	fnname := StringName.new("get_texture_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_modulate(modulate Color) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&modulate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_modulate() Color {
	mut result := Color{}
	classname := StringName.new("TileData")
	fnname := StringName.new("get_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_z_index(z_index i64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_z_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&z_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_z_index() i64 {
	mut result := i64(0)
	classname := StringName.new("TileData")
	fnname := StringName.new("get_z_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_y_sort_origin(y_sort_origin i64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_y_sort_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&y_sort_origin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_y_sort_origin() i64 {
	mut result := i64(0)
	classname := StringName.new("TileData")
	fnname := StringName.new("get_y_sort_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_occluder_polygons_count(layer_id i64, polygons_count i64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_occluder_polygons_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&polygons_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_occluder_polygons_count(layer_id i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileData")
	fnname := StringName.new("get_occluder_polygons_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) add_occluder_polygon(layer_id i64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("add_occluder_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) remove_occluder_polygon(layer_id i64, polygon_index i64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("remove_occluder_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&polygon_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) set_occluder_polygon(layer_id i64, polygon_index i64, polygon OccluderPolygon2D) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_occluder_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 164249167)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&polygon_index)}
	args[2] = voidptr(&polygon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TileData_get_occluder_polygon_Cfg {
pub:
	flip_h bool
	flip_v bool
	transpose bool
}

pub fn (s &TileData) get_occluder_polygon(layer_id i64, polygon_index i64, cfg TileData_get_occluder_polygon_Cfg) OccluderPolygon2D {
	mut result := OccluderPolygon2D{}
	classname := StringName.new("TileData")
	fnname := StringName.new("get_occluder_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 971166743)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&polygon_index)}
	args[2] = unsafe{voidptr(&cfg.flip_h)}
	args[3] = unsafe{voidptr(&cfg.flip_v)}
	args[4] = unsafe{voidptr(&cfg.transpose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_occluder(layer_id i64, occluder_polygon OccluderPolygon2D) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_occluder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 914399637)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = voidptr(&occluder_polygon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TileData_get_occluder_Cfg {
pub:
	flip_h bool
	flip_v bool
	transpose bool
}

pub fn (s &TileData) get_occluder(layer_id i64, cfg TileData_get_occluder_Cfg) OccluderPolygon2D {
	mut result := OccluderPolygon2D{}
	classname := StringName.new("TileData")
	fnname := StringName.new("get_occluder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2377324099)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&cfg.flip_h)}
	args[2] = unsafe{voidptr(&cfg.flip_v)}
	args[3] = unsafe{voidptr(&cfg.transpose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_constant_linear_velocity(layer_id i64, velocity Vector2) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_constant_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_constant_linear_velocity(layer_id i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TileData")
	fnname := StringName.new("get_constant_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_constant_angular_velocity(layer_id i64, velocity f64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_constant_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_constant_angular_velocity(layer_id i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TileData")
	fnname := StringName.new("get_constant_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_collision_polygons_count(layer_id i64, polygons_count i64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_collision_polygons_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&polygons_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_collision_polygons_count(layer_id i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileData")
	fnname := StringName.new("get_collision_polygons_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) add_collision_polygon(layer_id i64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("add_collision_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) remove_collision_polygon(layer_id i64, polygon_index i64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("remove_collision_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&polygon_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) set_collision_polygon_points(layer_id i64, polygon_index i64, polygon PackedVector2Array) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_collision_polygon_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3230546541)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&polygon_index)}
	args[2] = unsafe{voidptr(&polygon)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_collision_polygon_points(layer_id i64, polygon_index i64) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("TileData")
	fnname := StringName.new("get_collision_polygon_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 103942801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&polygon_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_collision_polygon_one_way(layer_id i64, polygon_index i64, one_way bool) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_collision_polygon_one_way")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&polygon_index)}
	args[2] = unsafe{voidptr(&one_way)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) is_collision_polygon_one_way(layer_id i64, polygon_index i64) bool {
	mut result := false
	classname := StringName.new("TileData")
	fnname := StringName.new("is_collision_polygon_one_way")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&polygon_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_collision_polygon_one_way_margin(layer_id i64, polygon_index i64, one_way_margin f64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_collision_polygon_one_way_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&polygon_index)}
	args[2] = unsafe{voidptr(&one_way_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_collision_polygon_one_way_margin(layer_id i64, polygon_index i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TileData")
	fnname := StringName.new("get_collision_polygon_one_way_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&polygon_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_terrain_set(terrain_set i64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_terrain_set")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_terrain_set() i64 {
	mut result := i64(0)
	classname := StringName.new("TileData")
	fnname := StringName.new("get_terrain_set")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_terrain(terrain i64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_terrain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&terrain)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_terrain() i64 {
	mut result := i64(0)
	classname := StringName.new("TileData")
	fnname := StringName.new("get_terrain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_terrain_peering_bit(peering_bit TileSetCellNeighbor, terrain i64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_terrain_peering_bit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1084452308)
	mut args := unsafe { [2]voidptr{} }
	i64_peering_bit := i64(peering_bit)
	args[0] = unsafe{voidptr(&i64_peering_bit)}
	args[1] = unsafe{voidptr(&terrain)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_terrain_peering_bit(peering_bit TileSetCellNeighbor) i64 {
	mut result := i64(0)
	classname := StringName.new("TileData")
	fnname := StringName.new("get_terrain_peering_bit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3831796792)
	mut args := unsafe { [1]voidptr{} }
	i64_peering_bit := i64(peering_bit)
	args[0] = unsafe{voidptr(&i64_peering_bit)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) is_valid_terrain_peering_bit(peering_bit TileSetCellNeighbor) bool {
	mut result := false
	classname := StringName.new("TileData")
	fnname := StringName.new("is_valid_terrain_peering_bit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 845723972)
	mut args := unsafe { [1]voidptr{} }
	i64_peering_bit := i64(peering_bit)
	args[0] = unsafe{voidptr(&i64_peering_bit)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_navigation_polygon(layer_id i64, navigation_polygon NavigationPolygon) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_navigation_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2224691167)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = voidptr(&navigation_polygon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TileData_get_navigation_polygon_Cfg {
pub:
	flip_h bool
	flip_v bool
	transpose bool
}

pub fn (s &TileData) get_navigation_polygon(layer_id i64, cfg TileData_get_navigation_polygon_Cfg) NavigationPolygon {
	mut result := NavigationPolygon{}
	classname := StringName.new("TileData")
	fnname := StringName.new("get_navigation_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2907127272)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&cfg.flip_h)}
	args[2] = unsafe{voidptr(&cfg.flip_v)}
	args[3] = unsafe{voidptr(&cfg.transpose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_probability(probability f64) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_probability")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&probability)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_probability() f64 {
	mut result := f64(0)
	classname := StringName.new("TileData")
	fnname := StringName.new("get_probability")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_custom_data(layer_name string, value Variant) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_custom_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(layer_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_custom_data(layer_name string) Variant {
	mut result := Variant{}
	classname := StringName.new("TileData")
	fnname := StringName.new("get_custom_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1868160156)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(layer_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) has_custom_data(layer_name string) bool {
	mut result := false
	classname := StringName.new("TileData")
	fnname := StringName.new("has_custom_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(layer_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileData) set_custom_data_by_layer_id(layer_id i64, value Variant) {
	classname := StringName.new("TileData")
	fnname := StringName.new("set_custom_data_by_layer_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileData) get_custom_data_by_layer_id(layer_id i64) Variant {
	mut result := Variant{}
	classname := StringName.new("TileData")
	fnname := StringName.new("get_custom_data_by_layer_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
