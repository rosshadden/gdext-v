module gd

pub struct FileSystemDock {
	VBoxContainer
}

pub fn (s &FileSystemDock) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s FileSystemDock) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &FileSystemDock) navigate_to_path(path string) {
	classname := StringName.new("FileSystemDock")
	fnname := StringName.new("navigate_to_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileSystemDock) add_resource_tooltip_plugin(plugin EditorResourceTooltipPlugin) {
	classname := StringName.new("FileSystemDock")
	fnname := StringName.new("add_resource_tooltip_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2258356838)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileSystemDock) remove_resource_tooltip_plugin(plugin EditorResourceTooltipPlugin) {
	classname := StringName.new("FileSystemDock")
	fnname := StringName.new("remove_resource_tooltip_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2258356838)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
