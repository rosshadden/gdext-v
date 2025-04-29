module gd

pub enum TileSetTileShape as i64 {
	tile_shape_square = 0
	tile_shape_isometric = 1
	tile_shape_half_offset_square = 2
	tile_shape_hexagon = 3
}

pub enum TileSetTileLayout as i64 {
	tile_layout_stacked = 0
	tile_layout_stacked_offset = 1
	tile_layout_stairs_right = 2
	tile_layout_stairs_down = 3
	tile_layout_diamond_right = 4
	tile_layout_diamond_down = 5
}

pub enum TileSetTileOffsetAxis as i64 {
	tile_offset_axis_horizontal = 0
	tile_offset_axis_vertical = 1
}

pub enum TileSetCellNeighbor as i64 {
	cell_neighbor_right_side = 0
	cell_neighbor_right_corner = 1
	cell_neighbor_bottom_right_side = 2
	cell_neighbor_bottom_right_corner = 3
	cell_neighbor_bottom_side = 4
	cell_neighbor_bottom_corner = 5
	cell_neighbor_bottom_left_side = 6
	cell_neighbor_bottom_left_corner = 7
	cell_neighbor_left_side = 8
	cell_neighbor_left_corner = 9
	cell_neighbor_top_left_side = 10
	cell_neighbor_top_left_corner = 11
	cell_neighbor_top_side = 12
	cell_neighbor_top_corner = 13
	cell_neighbor_top_right_side = 14
	cell_neighbor_top_right_corner = 15
}

pub enum TileSetTerrainMode as i64 {
	terrain_mode_match_corners_and_sides = 0
	terrain_mode_match_corners = 1
	terrain_mode_match_sides = 2
}

pub struct TileSet {
	Resource
}

pub fn (s &TileSet) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TileSet) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TileSet) get_next_source_id() i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_next_source_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileSet_add_source_Cfg {
pub:
	atlas_source_id_override i64
}

pub fn (s &TileSet) add_source(source TileSetSource, cfg TileSet_add_source_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("add_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1059186179)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&source.ptr)
	args[1] = unsafe{voidptr(&cfg.atlas_source_id_override)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) remove_source(source_id i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("remove_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&source_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) set_source_id(source_id i64, new_source_id i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_source_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&source_id)}
	args[1] = unsafe{voidptr(&new_source_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_source_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_source_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) get_source_id(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_source_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) has_source(source_id i64) bool {
	mut result := false
	classname := StringName.new("TileSet")
	fnname := StringName.new("has_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&source_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) get_source(source_id i64) TileSetSource {
	mut result := TileSetSource{}
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1763540252)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&source_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) set_tile_shape(shape TileSetTileShape) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_tile_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2131427112)
	mut args := unsafe { [1]voidptr{} }
	i64_shape := i64(shape)
	args[0] = unsafe{voidptr(&i64_shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_tile_shape() TileSetTileShape {
	mut result := i64(TileSetTileShape.tile_shape_square)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_tile_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 716918169)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TileSetTileShape(result)}
}

pub fn (s &TileSet) set_tile_layout(layout TileSetTileLayout) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_tile_layout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1071216679)
	mut args := unsafe { [1]voidptr{} }
	i64_layout := i64(layout)
	args[0] = unsafe{voidptr(&i64_layout)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_tile_layout() TileSetTileLayout {
	mut result := i64(TileSetTileLayout.tile_layout_stacked)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_tile_layout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 194628839)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TileSetTileLayout(result)}
}

pub fn (s &TileSet) set_tile_offset_axis(alignment TileSetTileOffsetAxis) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_tile_offset_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3300198521)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_tile_offset_axis() TileSetTileOffsetAxis {
	mut result := i64(TileSetTileOffsetAxis.tile_offset_axis_horizontal)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_tile_offset_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 762494114)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TileSetTileOffsetAxis(result)}
}

pub fn (s &TileSet) set_tile_size(size Vector2i) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_tile_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_tile_size() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_tile_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) set_uv_clipping(uv_clipping bool) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_uv_clipping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&uv_clipping)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) is_uv_clipping() bool {
	mut result := false
	classname := StringName.new("TileSet")
	fnname := StringName.new("is_uv_clipping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) get_occlusion_layers_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_occlusion_layers_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileSet_add_occlusion_layer_Cfg {
pub:
	to_position i64
}

pub fn (s &TileSet) add_occlusion_layer(cfg TileSet_add_occlusion_layer_Cfg) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("add_occlusion_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) move_occlusion_layer(layer_index i64, to_position i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("move_occlusion_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = unsafe{voidptr(&to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) remove_occlusion_layer(layer_index i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("remove_occlusion_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) set_occlusion_layer_light_mask(layer_index i64, light_mask i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_occlusion_layer_light_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = unsafe{voidptr(&light_mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_occlusion_layer_light_mask(layer_index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_occlusion_layer_light_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) set_occlusion_layer_sdf_collision(layer_index i64, sdf_collision bool) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_occlusion_layer_sdf_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = unsafe{voidptr(&sdf_collision)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_occlusion_layer_sdf_collision(layer_index i64) bool {
	mut result := false
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_occlusion_layer_sdf_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) get_physics_layers_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_physics_layers_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileSet_add_physics_layer_Cfg {
pub:
	to_position i64
}

pub fn (s &TileSet) add_physics_layer(cfg TileSet_add_physics_layer_Cfg) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("add_physics_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) move_physics_layer(layer_index i64, to_position i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("move_physics_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = unsafe{voidptr(&to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) remove_physics_layer(layer_index i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("remove_physics_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) set_physics_layer_collision_layer(layer_index i64, layer i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_physics_layer_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_physics_layer_collision_layer(layer_index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_physics_layer_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) set_physics_layer_collision_mask(layer_index i64, mask i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_physics_layer_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_physics_layer_collision_mask(layer_index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_physics_layer_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) set_physics_layer_collision_priority(layer_index i64, priority f64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_physics_layer_collision_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_physics_layer_collision_priority(layer_index i64) f64 {
	mut result := f64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_physics_layer_collision_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) set_physics_layer_physics_material(layer_index i64, physics_material PhysicsMaterial) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_physics_layer_physics_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1018687357)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = voidptr(&physics_material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_physics_layer_physics_material(layer_index i64) PhysicsMaterial {
	mut result := PhysicsMaterial{}
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_physics_layer_physics_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 788318639)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) get_terrain_sets_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_terrain_sets_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileSet_add_terrain_set_Cfg {
pub:
	to_position i64
}

pub fn (s &TileSet) add_terrain_set(cfg TileSet_add_terrain_set_Cfg) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("add_terrain_set")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) move_terrain_set(terrain_set i64, to_position i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("move_terrain_set")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	args[1] = unsafe{voidptr(&to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) remove_terrain_set(terrain_set i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("remove_terrain_set")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) set_terrain_set_mode(terrain_set i64, mode TileSetTerrainMode) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_terrain_set_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3943003916)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	i64_mode := i64(mode)
	args[1] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_terrain_set_mode(terrain_set i64) TileSetTerrainMode {
	mut result := i64(TileSetTerrainMode.terrain_mode_match_corners_and_sides)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_terrain_set_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2084469411)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TileSetTerrainMode(result)}
}

pub fn (s &TileSet) get_terrains_count(terrain_set i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_terrains_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileSet_add_terrain_Cfg {
pub:
	to_position i64
}

pub fn (s &TileSet) add_terrain(terrain_set i64, cfg TileSet_add_terrain_Cfg) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("add_terrain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1230568737)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	args[1] = unsafe{voidptr(&cfg.to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) move_terrain(terrain_set i64, terrain_index i64, to_position i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("move_terrain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1649997291)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	args[1] = unsafe{voidptr(&terrain_index)}
	args[2] = unsafe{voidptr(&to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) remove_terrain(terrain_set i64, terrain_index i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("remove_terrain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	args[1] = unsafe{voidptr(&terrain_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) set_terrain_name(terrain_set i64, terrain_index i64, name string) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_terrain_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285447957)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	args[1] = unsafe{voidptr(&terrain_index)}
	arg_sn2 := String.new(name)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_terrain_name(terrain_set i64, terrain_index i64) string {
	mut result := String{}
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_terrain_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1391810591)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	args[1] = unsafe{voidptr(&terrain_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TileSet) set_terrain_color(terrain_set i64, terrain_index i64, color Color) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_terrain_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3733378741)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	args[1] = unsafe{voidptr(&terrain_index)}
	args[2] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_terrain_color(terrain_set i64, terrain_index i64) Color {
	mut result := Color{}
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_terrain_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2165839948)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&terrain_set)}
	args[1] = unsafe{voidptr(&terrain_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) get_navigation_layers_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_navigation_layers_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileSet_add_navigation_layer_Cfg {
pub:
	to_position i64
}

pub fn (s &TileSet) add_navigation_layer(cfg TileSet_add_navigation_layer_Cfg) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("add_navigation_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) move_navigation_layer(layer_index i64, to_position i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("move_navigation_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = unsafe{voidptr(&to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) remove_navigation_layer(layer_index i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("remove_navigation_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) set_navigation_layer_layers(layer_index i64, layers i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_navigation_layer_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = unsafe{voidptr(&layers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_navigation_layer_layers(layer_index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_navigation_layer_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) set_navigation_layer_layer_value(layer_index i64, layer_number i64, value bool) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_navigation_layer_layer_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = unsafe{voidptr(&layer_number)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_navigation_layer_layer_value(layer_index i64, layer_number i64) bool {
	mut result := false
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_navigation_layer_layer_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = unsafe{voidptr(&layer_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) get_custom_data_layers_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_custom_data_layers_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileSet_add_custom_data_layer_Cfg {
pub:
	to_position i64
}

pub fn (s &TileSet) add_custom_data_layer(cfg TileSet_add_custom_data_layer_Cfg) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("add_custom_data_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) move_custom_data_layer(layer_index i64, to_position i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("move_custom_data_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	args[1] = unsafe{voidptr(&to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) remove_custom_data_layer(layer_index i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("remove_custom_data_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_custom_data_layer_by_name(layer_name string) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_custom_data_layer_by_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(layer_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) set_custom_data_layer_name(layer_index i64, layer_name string) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_custom_data_layer_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	arg_sn1 := String.new(layer_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) has_custom_data_layer_by_name(layer_name string) bool {
	mut result := false
	classname := StringName.new("TileSet")
	fnname := StringName.new("has_custom_data_layer_by_name")
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

pub fn (s &TileSet) get_custom_data_layer_name(layer_index i64) string {
	mut result := String{}
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_custom_data_layer_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TileSet) set_custom_data_layer_type(layer_index i64, layer_type VariantType) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_custom_data_layer_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3492912874)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	i64_layer_type := i64(layer_type)
	args[1] = unsafe{voidptr(&i64_layer_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_custom_data_layer_type(layer_index i64) VariantType {
	mut result := i64(VariantType.type_nil)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_custom_data_layer_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2990820875)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VariantType(result)}
}

pub fn (s &TileSet) set_source_level_tile_proxy(source_from i64, source_to i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_source_level_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&source_from)}
	args[1] = unsafe{voidptr(&source_to)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_source_level_tile_proxy(source_from i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_source_level_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&source_from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) has_source_level_tile_proxy(source_from i64) bool {
	mut result := false
	classname := StringName.new("TileSet")
	fnname := StringName.new("has_source_level_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&source_from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) remove_source_level_tile_proxy(source_from i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("remove_source_level_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&source_from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) set_coords_level_tile_proxy(p_source_from i64, coords_from Vector2i, source_to i64, coords_to Vector2i) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_coords_level_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1769939278)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&p_source_from)}
	args[1] = unsafe{voidptr(&coords_from)}
	args[2] = unsafe{voidptr(&source_to)}
	args[3] = unsafe{voidptr(&coords_to)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_coords_level_tile_proxy(source_from i64, coords_from Vector2i) Array {
	mut result := Array{}
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_coords_level_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2856536371)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&source_from)}
	args[1] = unsafe{voidptr(&coords_from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) has_coords_level_tile_proxy(source_from i64, coords_from Vector2i) bool {
	mut result := false
	classname := StringName.new("TileSet")
	fnname := StringName.new("has_coords_level_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3957903770)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&source_from)}
	args[1] = unsafe{voidptr(&coords_from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) remove_coords_level_tile_proxy(source_from i64, coords_from Vector2i) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("remove_coords_level_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311374912)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&source_from)}
	args[1] = unsafe{voidptr(&coords_from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) set_alternative_level_tile_proxy(source_from i64, coords_from Vector2i, alternative_from i64, source_to i64, coords_to Vector2i, alternative_to i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("set_alternative_level_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3862385460)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&source_from)}
	args[1] = unsafe{voidptr(&coords_from)}
	args[2] = unsafe{voidptr(&alternative_from)}
	args[3] = unsafe{voidptr(&source_to)}
	args[4] = unsafe{voidptr(&coords_to)}
	args[5] = unsafe{voidptr(&alternative_to)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_alternative_level_tile_proxy(source_from i64, coords_from Vector2i, alternative_from i64) Array {
	mut result := Array{}
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_alternative_level_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2303761075)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&source_from)}
	args[1] = unsafe{voidptr(&coords_from)}
	args[2] = unsafe{voidptr(&alternative_from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) has_alternative_level_tile_proxy(source_from i64, coords_from Vector2i, alternative_from i64) bool {
	mut result := false
	classname := StringName.new("TileSet")
	fnname := StringName.new("has_alternative_level_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 180086755)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&source_from)}
	args[1] = unsafe{voidptr(&coords_from)}
	args[2] = unsafe{voidptr(&alternative_from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) remove_alternative_level_tile_proxy(source_from i64, coords_from Vector2i, alternative_from i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("remove_alternative_level_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2328951467)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&source_from)}
	args[1] = unsafe{voidptr(&coords_from)}
	args[2] = unsafe{voidptr(&alternative_from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) map_tile_proxy(source_from i64, coords_from Vector2i, alternative_from i64) Array {
	mut result := Array{}
	classname := StringName.new("TileSet")
	fnname := StringName.new("map_tile_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4267935328)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&source_from)}
	args[1] = unsafe{voidptr(&coords_from)}
	args[2] = unsafe{voidptr(&alternative_from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) cleanup_invalid_tile_proxies() {
	classname := StringName.new("TileSet")
	fnname := StringName.new("cleanup_invalid_tile_proxies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) clear_tile_proxies() {
	classname := StringName.new("TileSet")
	fnname := StringName.new("clear_tile_proxies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TileSet_add_pattern_Cfg {
pub:
	index i64
}

pub fn (s &TileSet) add_pattern(pattern TileMapPattern, cfg TileSet_add_pattern_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("add_pattern")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 763712015)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&pattern.ptr)
	args[1] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileSet_get_pattern_Cfg {
pub:
	index i64
}

pub fn (s &TileSet) get_pattern(cfg TileSet_get_pattern_Cfg) TileMapPattern {
	mut result := TileMapPattern{}
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_pattern")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4207737510)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSet) remove_pattern(index i64) {
	classname := StringName.new("TileSet")
	fnname := StringName.new("remove_pattern")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSet) get_patterns_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TileSet")
	fnname := StringName.new("get_patterns_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
