module gd

pub struct TileMapPattern {
	Resource
}

pub fn (s &TileMapPattern) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TileMapPattern) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct TileMapPattern_set_cell_Cfg {
pub:
	source_id i64
	atlas_coords Vector2i
	alternative_tile i64
}

pub fn (s &TileMapPattern) set_cell(coords Vector2i, cfg TileMapPattern_set_cell_Cfg) {
	classname := StringName.new("TileMapPattern")
	fnname := StringName.new("set_cell")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2224802556)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	args[1] = unsafe{voidptr(&cfg.source_id)}
	args[2] = unsafe{voidptr(&cfg.atlas_coords)}
	args[3] = unsafe{voidptr(&cfg.alternative_tile)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapPattern) has_cell(coords Vector2i) bool {
	mut result := false
	classname := StringName.new("TileMapPattern")
	fnname := StringName.new("has_cell")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapPattern) remove_cell(coords Vector2i, update_size bool) {
	classname := StringName.new("TileMapPattern")
	fnname := StringName.new("remove_cell")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4153096796)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	args[1] = unsafe{voidptr(&update_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapPattern) get_cell_source_id(coords Vector2i) i64 {
	mut result := i64(0)
	classname := StringName.new("TileMapPattern")
	fnname := StringName.new("get_cell_source_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapPattern) get_cell_atlas_coords(coords Vector2i) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileMapPattern")
	fnname := StringName.new("get_cell_atlas_coords")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3050897911)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapPattern) get_cell_alternative_tile(coords Vector2i) i64 {
	mut result := i64(0)
	classname := StringName.new("TileMapPattern")
	fnname := StringName.new("get_cell_alternative_tile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapPattern) get_used_cells() Array {
	mut result := Array{}
	classname := StringName.new("TileMapPattern")
	fnname := StringName.new("get_used_cells")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapPattern) get_size() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("TileMapPattern")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TileMapPattern) set_size(size Vector2i) {
	classname := StringName.new("TileMapPattern")
	fnname := StringName.new("set_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TileMapPattern) is_empty() bool {
	mut result := false
	classname := StringName.new("TileMapPattern")
	fnname := StringName.new("is_empty")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
