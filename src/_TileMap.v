module gd

pub enum TileMapVisibilityMode as i64 {
	visibility_mode_default = 0
	visibility_mode_force_hide = 2
	visibility_mode_force_show = 1
}

pub struct TileMap {
	Node2D
}

pub fn (s &TileMap) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TileMap) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ITileMapUseTileDataRuntimeUpdate {
mut:
	use_tile_data_runtime_update_(layer i64, coords Vector2i) bool
}

pub fn (s &TileMap) gd_use_tile_data_runtime_update(layer i64, coords Vector2i) bool {
	mut result := false
	classname := StringName.new("TileMap")
	fnname := StringName.new("_use_tile_data_runtime_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3957903770)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITileMapTileDataRuntimeUpdate {
mut:
	tile_data_runtime_update_(layer i64, coords Vector2i, tile_data TileData)
}

pub fn (s &TileMap) gd_tile_data_runtime_update(layer i64, coords Vector2i, tile_data TileData) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("_tile_data_runtime_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4223434291)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&coords)}
	args[2] = voidptr(&tile_data.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) set_navigation_map(layer i64, gd_map RID) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_navigation_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4040184819)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) get_navigation_map(layer i64) RID {
	mut result := RID{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_navigation_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileMap_force_update_Cfg {
pub:
	layer i64
}

pub fn (s &TileMap) force_update(cfg TileMap_force_update_Cfg) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("force_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) set_tileset(tileset TileSet) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_tileset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 774531446)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&tileset.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) get_tileset() TileSet {
	mut result := TileSet{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_tileset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678226422)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) set_rendering_quadrant_size(size i64) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_rendering_quadrant_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) get_rendering_quadrant_size() i64 {
	mut result := i64(0)
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_rendering_quadrant_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) get_layers_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_layers_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) add_layer(to_position i64) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("add_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) move_layer(layer i64, to_position i64) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("move_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) remove_layer(layer i64) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("remove_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) set_layer_name(layer i64, name string) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_layer_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) get_layer_name(layer i64) string {
	mut result := String{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_layer_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TileMap) set_layer_enabled(layer i64, enabled bool) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_layer_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) is_layer_enabled(layer i64) bool {
	mut result := false
	classname := StringName.new("TileMap")
	fnname := StringName.new("is_layer_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) set_layer_modulate(layer i64, modulate Color) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_layer_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&modulate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) get_layer_modulate(layer i64) Color {
	mut result := Color{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_layer_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) set_layer_y_sort_enabled(layer i64, y_sort_enabled bool) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_layer_y_sort_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&y_sort_enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) is_layer_y_sort_enabled(layer i64) bool {
	mut result := false
	classname := StringName.new("TileMap")
	fnname := StringName.new("is_layer_y_sort_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) set_layer_y_sort_origin(layer i64, y_sort_origin i64) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_layer_y_sort_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&y_sort_origin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) get_layer_y_sort_origin(layer i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_layer_y_sort_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) set_layer_z_index(layer i64, z_index i64) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_layer_z_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&z_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) get_layer_z_index(layer i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_layer_z_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) set_layer_navigation_enabled(layer i64, enabled bool) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_layer_navigation_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) is_layer_navigation_enabled(layer i64) bool {
	mut result := false
	classname := StringName.new("TileMap")
	fnname := StringName.new("is_layer_navigation_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) set_layer_navigation_map(layer i64, gd_map RID) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_layer_navigation_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4040184819)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) get_layer_navigation_map(layer i64) RID {
	mut result := RID{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_layer_navigation_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) set_collision_animatable(enabled bool) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_collision_animatable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) is_collision_animatable() bool {
	mut result := false
	classname := StringName.new("TileMap")
	fnname := StringName.new("is_collision_animatable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) set_collision_visibility_mode(collision_visibility_mode TileMapVisibilityMode) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_collision_visibility_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3193440636)
	mut args := unsafe { [1]voidptr{} }
	i64_collision_visibility_mode := i64(collision_visibility_mode)
	args[0] = unsafe{voidptr(&i64_collision_visibility_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) get_collision_visibility_mode() TileMapVisibilityMode {
	mut result := i64(TileMapVisibilityMode.visibility_mode_default)
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_collision_visibility_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1697018252)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TileMapVisibilityMode(result)}
}

pub fn (s &TileMap) set_navigation_visibility_mode(navigation_visibility_mode TileMapVisibilityMode) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_navigation_visibility_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3193440636)
	mut args := unsafe { [1]voidptr{} }
	i64_navigation_visibility_mode := i64(navigation_visibility_mode)
	args[0] = unsafe{voidptr(&i64_navigation_visibility_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) get_navigation_visibility_mode() TileMapVisibilityMode {
	mut result := i64(TileMapVisibilityMode.visibility_mode_default)
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_navigation_visibility_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1697018252)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TileMapVisibilityMode(result)}
}

@[params]
pub struct TileMap_set_cell_Cfg {
pub:
	source_id i64
	atlas_coords Vector2i
	alternative_tile i64
}

pub fn (s &TileMap) set_cell(layer i64, coords Vector2i, cfg TileMap_set_cell_Cfg) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_cell")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 966713560)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&coords)}
	args[2] = unsafe{voidptr(&cfg.source_id)}
	args[3] = unsafe{voidptr(&cfg.atlas_coords)}
	args[4] = unsafe{voidptr(&cfg.alternative_tile)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) erase_cell(layer i64, coords Vector2i) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("erase_cell")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311374912)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TileMap_get_cell_source_id_Cfg {
pub:
	use_proxies bool
}

pub fn (s &TileMap) get_cell_source_id(layer i64, coords Vector2i, cfg TileMap_get_cell_source_id_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_cell_source_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 551761942)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&coords)}
	args[2] = unsafe{voidptr(&cfg.use_proxies)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileMap_get_cell_atlas_coords_Cfg {
pub:
	use_proxies bool
}

pub fn (s &TileMap) get_cell_atlas_coords(layer i64, coords Vector2i, cfg TileMap_get_cell_atlas_coords_Cfg) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_cell_atlas_coords")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1869815066)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&coords)}
	args[2] = unsafe{voidptr(&cfg.use_proxies)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileMap_get_cell_alternative_tile_Cfg {
pub:
	use_proxies bool
}

pub fn (s &TileMap) get_cell_alternative_tile(layer i64, coords Vector2i, cfg TileMap_get_cell_alternative_tile_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_cell_alternative_tile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 551761942)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&coords)}
	args[2] = unsafe{voidptr(&cfg.use_proxies)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileMap_get_cell_tile_data_Cfg {
pub:
	use_proxies bool
}

pub fn (s &TileMap) get_cell_tile_data(layer i64, coords Vector2i, cfg TileMap_get_cell_tile_data_Cfg) TileData {
	mut result := TileData{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_cell_tile_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2849631287)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&coords)}
	args[2] = unsafe{voidptr(&cfg.use_proxies)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileMap_is_cell_flipped_h_Cfg {
pub:
	use_proxies bool
}

pub fn (s &TileMap) is_cell_flipped_h(layer i64, coords Vector2i, cfg TileMap_is_cell_flipped_h_Cfg) bool {
	mut result := false
	classname := StringName.new("TileMap")
	fnname := StringName.new("is_cell_flipped_h")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2908343862)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&coords)}
	args[2] = unsafe{voidptr(&cfg.use_proxies)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileMap_is_cell_flipped_v_Cfg {
pub:
	use_proxies bool
}

pub fn (s &TileMap) is_cell_flipped_v(layer i64, coords Vector2i, cfg TileMap_is_cell_flipped_v_Cfg) bool {
	mut result := false
	classname := StringName.new("TileMap")
	fnname := StringName.new("is_cell_flipped_v")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2908343862)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&coords)}
	args[2] = unsafe{voidptr(&cfg.use_proxies)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileMap_is_cell_transposed_Cfg {
pub:
	use_proxies bool
}

pub fn (s &TileMap) is_cell_transposed(layer i64, coords Vector2i, cfg TileMap_is_cell_transposed_Cfg) bool {
	mut result := false
	classname := StringName.new("TileMap")
	fnname := StringName.new("is_cell_transposed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2908343862)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&coords)}
	args[2] = unsafe{voidptr(&cfg.use_proxies)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) get_coords_for_body_rid(body RID) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_coords_for_body_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 291584212)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) get_layer_for_body_rid(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_layer_for_body_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3917799429)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) get_pattern(layer i64, coords_array Array) TileMapPattern {
	mut result := TileMapPattern{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_pattern")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2833570986)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&coords_array)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) map_pattern(position_in_tilemap Vector2i, coords_in_pattern Vector2i, pattern TileMapPattern) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("map_pattern")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1864516957)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&position_in_tilemap)}
	args[1] = unsafe{voidptr(&coords_in_pattern)}
	args[2] = voidptr(&pattern.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) set_pattern(layer i64, position Vector2i, pattern TileMapPattern) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_pattern")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1195853946)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&position)}
	args[2] = voidptr(&pattern.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TileMap_set_cells_terrain_connect_Cfg {
pub:
	ignore_empty_terrains bool
}

pub fn (s &TileMap) set_cells_terrain_connect(layer i64, cells Array, terrain_set i64, terrain i64, cfg TileMap_set_cells_terrain_connect_Cfg) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_cells_terrain_connect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3578627656)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&cells)}
	args[2] = unsafe{voidptr(&terrain_set)}
	args[3] = unsafe{voidptr(&terrain)}
	args[4] = unsafe{voidptr(&cfg.ignore_empty_terrains)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TileMap_set_cells_terrain_path_Cfg {
pub:
	ignore_empty_terrains bool
}

pub fn (s &TileMap) set_cells_terrain_path(layer i64, path Array, terrain_set i64, terrain i64, cfg TileMap_set_cells_terrain_path_Cfg) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("set_cells_terrain_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3578627656)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&path)}
	args[2] = unsafe{voidptr(&terrain_set)}
	args[3] = unsafe{voidptr(&terrain)}
	args[4] = unsafe{voidptr(&cfg.ignore_empty_terrains)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) fix_invalid_tiles() {
	classname := StringName.new("TileMap")
	fnname := StringName.new("fix_invalid_tiles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) clear_layer(layer i64) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("clear_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) clear() {
	classname := StringName.new("TileMap")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) update_internals() {
	classname := StringName.new("TileMap")
	fnname := StringName.new("update_internals")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TileMap_notify_runtime_tile_data_update_Cfg {
pub:
	layer i64
}

pub fn (s &TileMap) notify_runtime_tile_data_update(cfg TileMap_notify_runtime_tile_data_update_Cfg) {
	classname := StringName.new("TileMap")
	fnname := StringName.new("notify_runtime_tile_data_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMap) get_surrounding_cells(coords Vector2i) Array {
	mut result := Array{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_surrounding_cells")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2673526557)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) get_used_cells(layer i64) Array {
	mut result := Array{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_used_cells")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileMap_get_used_cells_by_id_Cfg {
pub:
	source_id i64
	atlas_coords Vector2i
	alternative_tile i64
}

pub fn (s &TileMap) get_used_cells_by_id(layer i64, cfg TileMap_get_used_cells_by_id_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_used_cells_by_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2931012785)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&cfg.source_id)}
	args[2] = unsafe{voidptr(&cfg.atlas_coords)}
	args[3] = unsafe{voidptr(&cfg.alternative_tile)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) get_used_rect() Rect2i {
	mut result := Rect2i{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_used_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 410525958)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) map_to_local(map_position Vector2i) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("map_to_local")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 108438297)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&map_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) local_to_map(local_position Vector2) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("local_to_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 837806996)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&local_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMap) get_neighbor_cell(coords Vector2i, neighbor TileSetCellNeighbor) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileMap")
	fnname := StringName.new("get_neighbor_cell")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 986575103)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	i64_neighbor := i64(neighbor)
	args[1] = unsafe{voidptr(&i64_neighbor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
