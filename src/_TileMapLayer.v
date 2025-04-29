module gd

pub enum TileMapLayerDebugVisibilityMode as i64 {
	debug_visibility_mode_default = 0
	debug_visibility_mode_force_hide = 2
	debug_visibility_mode_force_show = 1
}

pub struct TileMapLayer {
	Node2D
}

pub fn (s &TileMapLayer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TileMapLayer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ITileMapLayerUseTileDataRuntimeUpdate {
mut:
	use_tile_data_runtime_update_(coords Vector2i) bool
}

pub fn (s &TileMapLayer) gd_use_tile_data_runtime_update(coords Vector2i) bool {
	mut result := false
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("_use_tile_data_runtime_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3715736492)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITileMapLayerTileDataRuntimeUpdate {
mut:
	tile_data_runtime_update_(coords Vector2i, tile_data TileData)
}

pub fn (s &TileMapLayer) gd_tile_data_runtime_update(coords Vector2i, tile_data TileData) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("_tile_data_runtime_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1627322126)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	args[1] = voidptr(&tile_data.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITileMapLayerUpdateCells {
mut:
	update_cells_(coords Array, forced_cleanup bool)
}

pub fn (s &TileMapLayer) gd_update_cells(coords Array, forced_cleanup bool) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("_update_cells")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3156113851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	args[1] = unsafe{voidptr(&forced_cleanup)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TileMapLayer_set_cell_Cfg {
pub:
	source_id i64
	atlas_coords Vector2i
	alternative_tile i64
}

pub fn (s &TileMapLayer) set_cell(coords Vector2i, cfg TileMapLayer_set_cell_Cfg) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_cell")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2428518503)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	args[1] = unsafe{voidptr(&cfg.source_id)}
	args[2] = unsafe{voidptr(&cfg.atlas_coords)}
	args[3] = unsafe{voidptr(&cfg.alternative_tile)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) erase_cell(coords Vector2i) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("erase_cell")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) fix_invalid_tiles() {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("fix_invalid_tiles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) clear() {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) get_cell_source_id(coords Vector2i) i64 {
	mut result := i64(0)
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_cell_source_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) get_cell_atlas_coords(coords Vector2i) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_cell_atlas_coords")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3050897911)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) get_cell_alternative_tile(coords Vector2i) i64 {
	mut result := i64(0)
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_cell_alternative_tile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) get_cell_tile_data(coords Vector2i) TileData {
	mut result := TileData{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_cell_tile_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 205084707)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) is_cell_flipped_h(coords Vector2i) bool {
	mut result := false
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("is_cell_flipped_h")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) is_cell_flipped_v(coords Vector2i) bool {
	mut result := false
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("is_cell_flipped_v")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) is_cell_transposed(coords Vector2i) bool {
	mut result := false
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("is_cell_transposed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) get_used_cells() Array {
	mut result := Array{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_used_cells")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileMapLayer_get_used_cells_by_id_Cfg {
pub:
	source_id i64
	atlas_coords Vector2i
	alternative_tile i64
}

pub fn (s &TileMapLayer) get_used_cells_by_id(cfg TileMapLayer_get_used_cells_by_id_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_used_cells_by_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4175304538)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.source_id)}
	args[1] = unsafe{voidptr(&cfg.atlas_coords)}
	args[2] = unsafe{voidptr(&cfg.alternative_tile)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) get_used_rect() Rect2i {
	mut result := Rect2i{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_used_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 410525958)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) get_pattern(coords_array Array) TileMapPattern {
	mut result := TileMapPattern{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_pattern")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820813253)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords_array)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_pattern(position Vector2i, pattern TileMapPattern) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_pattern")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1491151770)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = voidptr(&pattern.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TileMapLayer_set_cells_terrain_connect_Cfg {
pub:
	ignore_empty_terrains bool
}

pub fn (s &TileMapLayer) set_cells_terrain_connect(cells Array, terrain_set i64, terrain i64, cfg TileMapLayer_set_cells_terrain_connect_Cfg) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_cells_terrain_connect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 748968311)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&cells)}
	args[1] = unsafe{voidptr(&terrain_set)}
	args[2] = unsafe{voidptr(&terrain)}
	args[3] = unsafe{voidptr(&cfg.ignore_empty_terrains)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TileMapLayer_set_cells_terrain_path_Cfg {
pub:
	ignore_empty_terrains bool
}

pub fn (s &TileMapLayer) set_cells_terrain_path(path Array, terrain_set i64, terrain i64, cfg TileMapLayer_set_cells_terrain_path_Cfg) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_cells_terrain_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 748968311)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	args[1] = unsafe{voidptr(&terrain_set)}
	args[2] = unsafe{voidptr(&terrain)}
	args[3] = unsafe{voidptr(&cfg.ignore_empty_terrains)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) has_body_rid(body RID) bool {
	mut result := false
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("has_body_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) get_coords_for_body_rid(body RID) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_coords_for_body_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 733700038)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) update_internals() {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("update_internals")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) notify_runtime_tile_data_update() {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("notify_runtime_tile_data_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) map_pattern(position_in_tilemap Vector2i, coords_in_pattern Vector2i, pattern TileMapPattern) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileMapLayer")
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

pub fn (s &TileMapLayer) get_surrounding_cells(coords Vector2i) Array {
	mut result := Array{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_surrounding_cells")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2673526557)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) get_neighbor_cell(coords Vector2i, neighbor TileSetCellNeighbor) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileMapLayer")
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

pub fn (s &TileMapLayer) map_to_local(map_position Vector2i) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("map_to_local")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 108438297)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&map_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) local_to_map(local_position Vector2) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("local_to_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 837806996)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&local_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_tile_map_data_from_array(tile_map_layer_data PackedByteArray) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_tile_map_data_from_array")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tile_map_layer_data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) get_tile_map_data_as_array() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_tile_map_data_as_array")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_enabled(enabled bool) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) is_enabled() bool {
	mut result := false
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("is_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_tile_set(tile_set TileSet) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_tile_set")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 774531446)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&tile_set.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) get_tile_set() TileSet {
	mut result := TileSet{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_tile_set")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678226422)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_y_sort_origin(y_sort_origin i64) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_y_sort_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&y_sort_origin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) get_y_sort_origin() i64 {
	mut result := i64(0)
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_y_sort_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_x_draw_order_reversed(x_draw_order_reversed bool) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_x_draw_order_reversed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&x_draw_order_reversed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) is_x_draw_order_reversed() bool {
	mut result := false
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("is_x_draw_order_reversed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_rendering_quadrant_size(size i64) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_rendering_quadrant_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) get_rendering_quadrant_size() i64 {
	mut result := i64(0)
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_rendering_quadrant_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_collision_enabled(enabled bool) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_collision_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) is_collision_enabled() bool {
	mut result := false
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("is_collision_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_use_kinematic_bodies(use_kinematic_bodies bool) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_use_kinematic_bodies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_kinematic_bodies)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) is_using_kinematic_bodies() bool {
	mut result := false
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("is_using_kinematic_bodies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_collision_visibility_mode(visibility_mode TileMapLayerDebugVisibilityMode) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_collision_visibility_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3508099847)
	mut args := unsafe { [1]voidptr{} }
	i64_visibility_mode := i64(visibility_mode)
	args[0] = unsafe{voidptr(&i64_visibility_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) get_collision_visibility_mode() TileMapLayerDebugVisibilityMode {
	mut result := i64(TileMapLayerDebugVisibilityMode.debug_visibility_mode_default)
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_collision_visibility_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 338220793)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TileMapLayerDebugVisibilityMode(result)}
}

pub fn (s &TileMapLayer) set_physics_quadrant_size(size i64) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_physics_quadrant_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) get_physics_quadrant_size() i64 {
	mut result := i64(0)
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_physics_quadrant_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_occlusion_enabled(enabled bool) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_occlusion_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) is_occlusion_enabled() bool {
	mut result := false
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("is_occlusion_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_navigation_enabled(enabled bool) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_navigation_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) is_navigation_enabled() bool {
	mut result := false
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("is_navigation_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_navigation_map(gd_map RID) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_navigation_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_map)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) get_navigation_map() RID {
	mut result := RID{}
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_navigation_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapLayer) set_navigation_visibility_mode(show_navigation TileMapLayerDebugVisibilityMode) {
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("set_navigation_visibility_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3508099847)
	mut args := unsafe { [1]voidptr{} }
	i64_show_navigation := i64(show_navigation)
	args[0] = unsafe{voidptr(&i64_show_navigation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapLayer) get_navigation_visibility_mode() TileMapLayerDebugVisibilityMode {
	mut result := i64(TileMapLayerDebugVisibilityMode.debug_visibility_mode_default)
	classname := StringName.new("TileMapLayer")
	fnname := StringName.new("get_navigation_visibility_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 338220793)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TileMapLayerDebugVisibilityMode(result)}
}
