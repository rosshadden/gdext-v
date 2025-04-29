module gd

pub struct TileSetSource {
	Resource
}

pub fn (s &TileSetSource) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TileSetSource) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TileSetSource) get_tiles_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TileSetSource")
	fnname := StringName.new("get_tiles_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSetSource) get_tile_id(index i64) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileSetSource")
	fnname := StringName.new("get_tile_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 880721226)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSetSource) has_tile(atlas_coords Vector2i) bool {
	mut result := false
	classname := StringName.new("TileSetSource")
	fnname := StringName.new("has_tile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&atlas_coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSetSource) get_alternative_tiles_count(atlas_coords Vector2i) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSetSource")
	fnname := StringName.new("get_alternative_tiles_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&atlas_coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSetSource) get_alternative_tile_id(atlas_coords Vector2i, index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TileSetSource")
	fnname := StringName.new("get_alternative_tile_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 89881719)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&atlas_coords)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileSetSource) has_alternative_tile(atlas_coords Vector2i, alternative_tile i64) bool {
	mut result := false
	classname := StringName.new("TileSetSource")
	fnname := StringName.new("has_alternative_tile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1073731340)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&atlas_coords)}
	args[1] = unsafe{voidptr(&alternative_tile)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
