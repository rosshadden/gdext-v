module gd

pub struct EditorInterface {
	Object
}

pub fn EditorInterface.get_singleton() EditorInterface {
	sn := StringName.new("EditorInterface")
	result := EditorInterface{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &EditorInterface) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorInterface) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct EditorInterface_restart_editor_Cfg {
pub:
	save bool
}

pub fn (s &EditorInterface) restart_editor(cfg EditorInterface_restart_editor_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("restart_editor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.save)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) get_command_palette() EditorCommandPalette {
	mut result := EditorCommandPalette{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_command_palette")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2471163807)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_resource_filesystem() EditorFileSystem {
	mut result := EditorFileSystem{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_resource_filesystem")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 780151678)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_editor_paths() EditorPaths {
	mut result := EditorPaths{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_editor_paths")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1595760068)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_resource_previewer() EditorResourcePreview {
	mut result := EditorResourcePreview{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_resource_previewer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 943486957)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_selection() EditorSelection {
	mut result := EditorSelection{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2690272531)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_editor_settings() EditorSettings {
	mut result := EditorSettings{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_editor_settings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4086932459)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_editor_toaster() EditorToaster {
	mut result := EditorToaster{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_editor_toaster")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3612675797)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_editor_undo_redo() EditorUndoRedoManager {
	mut result := EditorUndoRedoManager{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_editor_undo_redo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3819628421)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) make_mesh_previews(meshes Array, preview_size i64) Array {
	mut result := Array{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("make_mesh_previews")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 878078554)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&meshes)}
	args[1] = unsafe{voidptr(&preview_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) set_plugin_enabled(plugin string, enabled bool) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("set_plugin_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(plugin)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) is_plugin_enabled(plugin string) bool {
	mut result := false
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("is_plugin_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(plugin)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_editor_theme() Theme {
	mut result := Theme{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_editor_theme")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3846893731)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_base_control() Control {
	mut result := Control{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_base_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_editor_main_screen() VBoxContainer {
	mut result := VBoxContainer{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_editor_main_screen")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706218421)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_script_editor() ScriptEditor {
	mut result := ScriptEditor{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_script_editor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 90868003)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_editor_viewport_2d() SubViewport {
	mut result := SubViewport{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_editor_viewport_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3750751911)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct EditorInterface_get_editor_viewport_3d_Cfg {
pub:
	idx i64
}

pub fn (s &EditorInterface) get_editor_viewport_3d(cfg EditorInterface_get_editor_viewport_3d_Cfg) SubViewport {
	mut result := SubViewport{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_editor_viewport_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1970834490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) set_main_screen_editor(name string) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("set_main_screen_editor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) set_distraction_free_mode(enter bool) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("set_distraction_free_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) is_distraction_free_mode_enabled() bool {
	mut result := false
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("is_distraction_free_mode_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) is_multi_window_enabled() bool {
	mut result := false
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("is_multi_window_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_editor_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_editor_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct EditorInterface_popup_dialog_Cfg {
pub:
	rect Rect2i
}

pub fn (s &EditorInterface) popup_dialog(dialog Window, cfg EditorInterface_popup_dialog_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("popup_dialog")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2015770942)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&dialog.ptr)
	args[1] = unsafe{voidptr(&cfg.rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorInterface_popup_dialog_centered_Cfg {
pub:
	minsize Vector2i
}

pub fn (s &EditorInterface) popup_dialog_centered(dialog Window, cfg EditorInterface_popup_dialog_centered_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("popup_dialog_centered")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 346557367)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&dialog.ptr)
	args[1] = unsafe{voidptr(&cfg.minsize)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorInterface_popup_dialog_centered_ratio_Cfg {
pub:
	ratio f64
}

pub fn (s &EditorInterface) popup_dialog_centered_ratio(dialog Window, cfg EditorInterface_popup_dialog_centered_ratio_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("popup_dialog_centered_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2093669136)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&dialog.ptr)
	args[1] = unsafe{voidptr(&cfg.ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorInterface_popup_dialog_centered_clamped_Cfg {
pub:
	minsize Vector2i
	fallback_ratio f64
}

pub fn (s &EditorInterface) popup_dialog_centered_clamped(dialog Window, cfg EditorInterface_popup_dialog_centered_clamped_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("popup_dialog_centered_clamped")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3763385571)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&dialog.ptr)
	args[1] = unsafe{voidptr(&cfg.minsize)}
	args[2] = unsafe{voidptr(&cfg.fallback_ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) get_current_feature_profile() string {
	mut result := String{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_current_feature_profile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorInterface) set_current_feature_profile(profile_name string) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("set_current_feature_profile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(profile_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorInterface_popup_node_selector_Cfg {
pub:
	valid_types Array
	current_value Node
}

pub fn (s &EditorInterface) popup_node_selector(callback Callable, cfg EditorInterface_popup_node_selector_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("popup_node_selector")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2444591477)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&callback)}
	args[1] = unsafe{voidptr(&cfg.valid_types)}
	args[2] = voidptr(&cfg.current_value.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorInterface_popup_property_selector_Cfg {
pub:
	type_filter PackedInt32Array
	current_value string
}

pub fn (s &EditorInterface) popup_property_selector(object Object, callback Callable, cfg EditorInterface_popup_property_selector_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("popup_property_selector")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2955609011)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&object.ptr)
	args[1] = unsafe{voidptr(&callback)}
	args[2] = unsafe{voidptr(&cfg.type_filter)}
	arg_sn3 := String.new(cfg.current_value)
	args[3] = unsafe{voidptr(&arg_sn3)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorInterface_popup_method_selector_Cfg {
pub:
	current_value string
}

pub fn (s &EditorInterface) popup_method_selector(object Object, callback Callable, cfg EditorInterface_popup_method_selector_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("popup_method_selector")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3585505226)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&object.ptr)
	args[1] = unsafe{voidptr(&callback)}
	arg_sn2 := String.new(cfg.current_value)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorInterface_popup_quick_open_Cfg {
pub:
	base_types Array
}

pub fn (s &EditorInterface) popup_quick_open(callback Callable, cfg EditorInterface_popup_quick_open_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("popup_quick_open")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2271411043)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&callback)}
	args[1] = unsafe{voidptr(&cfg.base_types)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorInterface_popup_create_dialog_Cfg {
pub:
	base_type string
	current_type string
	dialog_title string
	type_blocklist Array
}

pub fn (s &EditorInterface) popup_create_dialog(callback Callable, cfg EditorInterface_popup_create_dialog_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("popup_create_dialog")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 495277124)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&callback)}
	arg_sn1 := StringName.new(cfg.base_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := String.new(cfg.current_type)
	args[2] = unsafe{voidptr(&arg_sn2)}
	arg_sn3 := String.new(cfg.dialog_title)
	args[3] = unsafe{voidptr(&arg_sn3)}
	args[4] = unsafe{voidptr(&cfg.type_blocklist)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	arg_sn2.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) get_file_system_dock() FileSystemDock {
	mut result := FileSystemDock{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_file_system_dock")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3751012327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) select_file(file string) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("select_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) get_selected_paths() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_selected_paths")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_current_path() string {
	mut result := String{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_current_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorInterface) get_current_directory() string {
	mut result := String{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_current_directory")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorInterface) get_inspector() EditorInspector {
	mut result := EditorInspector{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_inspector")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3517113938)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct EditorInterface_inspect_object_Cfg {
pub:
	for_property string
	inspector_only bool
}

pub fn (s &EditorInterface) inspect_object(object Object, cfg EditorInterface_inspect_object_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("inspect_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 127962172)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&object.ptr)
	arg_sn1 := String.new(cfg.for_property)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.inspector_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) edit_resource(resource Resource) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("edit_resource")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&resource.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) edit_node(node Node) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("edit_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorInterface_edit_script_Cfg {
pub:
	line i64
	column i64
	grab_focus bool
}

pub fn (s &EditorInterface) edit_script(script Script, cfg EditorInterface_edit_script_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("edit_script")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 219829402)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&script.ptr)
	args[1] = unsafe{voidptr(&cfg.line)}
	args[2] = unsafe{voidptr(&cfg.column)}
	args[3] = unsafe{voidptr(&cfg.grab_focus)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorInterface_open_scene_from_path_Cfg {
pub:
	set_inherited bool
}

pub fn (s &EditorInterface) open_scene_from_path(scene_filepath string, cfg EditorInterface_open_scene_from_path_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("open_scene_from_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1168363258)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(scene_filepath)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.set_inherited)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) reload_scene_from_path(scene_filepath string) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("reload_scene_from_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(scene_filepath)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) get_open_scenes() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_open_scenes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_open_scene_roots() Array {
	mut result := Array{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_open_scene_roots")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_edited_scene_root() Node {
	mut result := Node{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_edited_scene_root")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) save_scene() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("save_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct EditorInterface_save_scene_as_Cfg {
pub:
	with_preview bool
}

pub fn (s &EditorInterface) save_scene_as(path string, cfg EditorInterface_save_scene_as_Cfg) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("save_scene_as")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3647332257)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.with_preview)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) save_all_scenes() {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("save_all_scenes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) mark_scene_as_unsaved() {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("mark_scene_as_unsaved")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) play_main_scene() {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("play_main_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) play_current_scene() {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("play_current_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) play_custom_scene(scene_filepath string) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("play_custom_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(scene_filepath)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) stop_playing_scene() {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("stop_playing_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) is_playing_scene() bool {
	mut result := false
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("is_playing_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorInterface) get_playing_scene() string {
	mut result := String{}
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("get_playing_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorInterface) set_movie_maker_enabled(enabled bool) {
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("set_movie_maker_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInterface) is_movie_maker_enabled() bool {
	mut result := false
	classname := StringName.new("EditorInterface")
	fnname := StringName.new("is_movie_maker_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
