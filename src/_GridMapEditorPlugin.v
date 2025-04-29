module gd

pub struct GridMapEditorPlugin {
	EditorPlugin
}

pub fn (s &GridMapEditorPlugin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GridMapEditorPlugin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GridMapEditorPlugin) get_current_grid_map() GridMap {
	mut result := GridMap{}
	classname := StringName.new("GridMapEditorPlugin")
	fnname := StringName.new("get_current_grid_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1184264483)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMapEditorPlugin) set_selection(begin Vector3i, end Vector3i) {
	classname := StringName.new("GridMapEditorPlugin")
	fnname := StringName.new("set_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3659408297)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&begin)}
	args[1] = unsafe{voidptr(&end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMapEditorPlugin) clear_selection() {
	classname := StringName.new("GridMapEditorPlugin")
	fnname := StringName.new("clear_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMapEditorPlugin) get_selection() AABB {
	mut result := AABB{}
	classname := StringName.new("GridMapEditorPlugin")
	fnname := StringName.new("get_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMapEditorPlugin) has_selection() bool {
	mut result := false
	classname := StringName.new("GridMapEditorPlugin")
	fnname := StringName.new("has_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMapEditorPlugin) get_selected_cells() Array {
	mut result := Array{}
	classname := StringName.new("GridMapEditorPlugin")
	fnname := StringName.new("get_selected_cells")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GridMapEditorPlugin) set_selected_palette_item(item i64) {
	classname := StringName.new("GridMapEditorPlugin")
	fnname := StringName.new("set_selected_palette_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 998575451)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&item)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GridMapEditorPlugin) get_selected_palette_item() i64 {
	mut result := i64(0)
	classname := StringName.new("GridMapEditorPlugin")
	fnname := StringName.new("get_selected_palette_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
