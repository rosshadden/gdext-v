module gd

pub enum EditorContextMenuPluginContextMenuSlot as i64 {
	context_slot_scene_tree = 0
	context_slot_filesystem = 1
	context_slot_script_editor = 2
	context_slot_filesystem_create = 3
	context_slot_script_editor_code = 4
	context_slot_scene_tabs = 5
	context_slot_2d_editor = 6
}

pub struct EditorContextMenuPlugin {
	RefCounted
}

pub fn (s &EditorContextMenuPlugin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorContextMenuPlugin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorContextMenuPluginPopupMenu {
mut:
	popup_menu_(paths PackedStringArray)
}

pub fn (s &EditorContextMenuPlugin) gd_popup_menu(paths PackedStringArray) {
	classname := StringName.new("EditorContextMenuPlugin")
	fnname := StringName.new("_popup_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&paths)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorContextMenuPlugin) add_menu_shortcut(shortcut Shortcut, callback Callable) {
	classname := StringName.new("EditorContextMenuPlugin")
	fnname := StringName.new("add_menu_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 851596305)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&shortcut.ptr)
	args[1] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorContextMenuPlugin_add_context_menu_item_Cfg {
pub:
	icon Texture2D
}

pub fn (s &EditorContextMenuPlugin) add_context_menu_item(name string, callback Callable, cfg EditorContextMenuPlugin_add_context_menu_item_Cfg) {
	classname := StringName.new("EditorContextMenuPlugin")
	fnname := StringName.new("add_context_menu_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2748336951)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&callback)}
	args[2] = voidptr(&cfg.icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorContextMenuPlugin_add_context_menu_item_from_shortcut_Cfg {
pub:
	icon Texture2D
}

pub fn (s &EditorContextMenuPlugin) add_context_menu_item_from_shortcut(name string, shortcut Shortcut, cfg EditorContextMenuPlugin_add_context_menu_item_from_shortcut_Cfg) {
	classname := StringName.new("EditorContextMenuPlugin")
	fnname := StringName.new("add_context_menu_item_from_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3799546916)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&shortcut.ptr)
	args[2] = voidptr(&cfg.icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorContextMenuPlugin_add_context_submenu_item_Cfg {
pub:
	icon Texture2D
}

pub fn (s &EditorContextMenuPlugin) add_context_submenu_item(name string, menu PopupMenu, cfg EditorContextMenuPlugin_add_context_submenu_item_Cfg) {
	classname := StringName.new("EditorContextMenuPlugin")
	fnname := StringName.new("add_context_submenu_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1994674995)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&menu.ptr)
	args[2] = voidptr(&cfg.icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
