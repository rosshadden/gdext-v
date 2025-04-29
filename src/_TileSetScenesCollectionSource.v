module gd

pub struct TileSetScenesCollectionSource {
	TileSetSource
}

pub fn (s &TileSetScenesCollectionSource) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TileSetScenesCollectionSource) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TileSetScenesCollectionSource) get_scene_tiles_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TileSetScenesCollectionSource")
	fnname := StringName.new("get_scene_tiles_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSetScenesCollectionSource) get_scene_tile_id(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSetScenesCollectionSource")
	fnname := StringName.new("get_scene_tile_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSetScenesCollectionSource) has_scene_tile_id(id i64) bool {
	mut result := false
	classname := StringName.new("TileSetScenesCollectionSource")
	fnname := StringName.new("has_scene_tile_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TileSetScenesCollectionSource_create_scene_tile_Cfg {
pub:
	id_override i64
}

pub fn (s &TileSetScenesCollectionSource) create_scene_tile(packed_scene PackedScene, cfg TileSetScenesCollectionSource_create_scene_tile_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSetScenesCollectionSource")
	fnname := StringName.new("create_scene_tile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1117465415)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&packed_scene.ptr)
	args[1] = unsafe{voidptr(&cfg.id_override)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSetScenesCollectionSource) set_scene_tile_id(id i64, new_id i64) {
	classname := StringName.new("TileSetScenesCollectionSource")
	fnname := StringName.new("set_scene_tile_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&new_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSetScenesCollectionSource) set_scene_tile_scene(id i64, packed_scene PackedScene) {
	classname := StringName.new("TileSetScenesCollectionSource")
	fnname := StringName.new("set_scene_tile_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3435852839)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = voidptr(&packed_scene.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSetScenesCollectionSource) get_scene_tile_scene(id i64) PackedScene {
	mut result := PackedScene{}
	classname := StringName.new("TileSetScenesCollectionSource")
	fnname := StringName.new("get_scene_tile_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 511017218)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSetScenesCollectionSource) set_scene_tile_display_placeholder(id i64, display_placeholder bool) {
	classname := StringName.new("TileSetScenesCollectionSource")
	fnname := StringName.new("set_scene_tile_display_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&display_placeholder)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSetScenesCollectionSource) get_scene_tile_display_placeholder(id i64) bool {
	mut result := false
	classname := StringName.new("TileSetScenesCollectionSource")
	fnname := StringName.new("get_scene_tile_display_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSetScenesCollectionSource) remove_scene_tile(id i64) {
	classname := StringName.new("TileSetScenesCollectionSource")
	fnname := StringName.new("remove_scene_tile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileSetScenesCollectionSource) get_next_scene_tile_id() i64 {
	mut result := i64(0)
	classname := StringName.new("TileSetScenesCollectionSource")
	fnname := StringName.new("get_next_scene_tile_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
