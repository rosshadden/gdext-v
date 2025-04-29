module gd

pub enum EditorPluginCustomControlContainer as i64 {
	container_toolbar = 0
	container_spatial_editor_menu = 1
	container_spatial_editor_side_left = 2
	container_spatial_editor_side_right = 3
	container_spatial_editor_bottom = 4
	container_canvas_editor_menu = 5
	container_canvas_editor_side_left = 6
	container_canvas_editor_side_right = 7
	container_canvas_editor_bottom = 8
	container_inspector_bottom = 9
	container_project_setting_tab_left = 10
	container_project_setting_tab_right = 11
}

pub enum EditorPluginDockSlot as i64 {
	dock_slot_left_ul = 0
	dock_slot_left_bl = 1
	dock_slot_left_ur = 2
	dock_slot_left_br = 3
	dock_slot_right_ul = 4
	dock_slot_right_bl = 5
	dock_slot_right_ur = 6
	dock_slot_right_br = 7
	dock_slot_max = 8
}

pub enum EditorPluginAfterGUIInput as i64 {
	after_gui_input_pass = 0
	after_gui_input_stop = 1
	after_gui_input_custom = 2
}

pub struct EditorPlugin {
	Node
}

pub fn (s &EditorPlugin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorPlugin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorPluginForwardCanvasGuiInput {
mut:
	forward_canvas_gui_input_(event InputEvent) bool
}

pub fn (s &EditorPlugin) gd_forward_canvas_gui_input(event InputEvent) bool {
	mut result := false
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_forward_canvas_gui_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1062211774)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorPluginForwardCanvasDrawOverViewport {
mut:
	forward_canvas_draw_over_viewport_(viewport_control Control)
}

pub fn (s &EditorPlugin) gd_forward_canvas_draw_over_viewport(viewport_control Control) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_forward_canvas_draw_over_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&viewport_control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginForwardCanvasForceDrawOverViewport {
mut:
	forward_canvas_force_draw_over_viewport_(viewport_control Control)
}

pub fn (s &EditorPlugin) gd_forward_canvas_force_draw_over_viewport(viewport_control Control) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_forward_canvas_force_draw_over_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&viewport_control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginForward3dGuiInput {
mut:
	forward_3d_gui_input_(viewport_camera Camera3D, event InputEvent) i64
}

pub fn (s &EditorPlugin) gd_forward_3d_gui_input(viewport_camera Camera3D, event InputEvent) i64 {
	mut result := i64(0)
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_forward_3d_gui_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1018736637)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&viewport_camera.ptr)
	args[1] = voidptr(&event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorPluginForward3dDrawOverViewport {
mut:
	forward_3d_draw_over_viewport_(viewport_control Control)
}

pub fn (s &EditorPlugin) gd_forward_3d_draw_over_viewport(viewport_control Control) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_forward_3d_draw_over_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&viewport_control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginForward3dForceDrawOverViewport {
mut:
	forward_3d_force_draw_over_viewport_(viewport_control Control)
}

pub fn (s &EditorPlugin) gd_forward_3d_force_draw_over_viewport(viewport_control Control) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_forward_3d_force_draw_over_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&viewport_control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginGetPluginName {
mut:
	get_plugin_name_() String
}

pub fn (s &EditorPlugin) gd_get_plugin_name() string {
	mut result := String{}
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_get_plugin_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorPluginGetPluginIcon {
mut:
	get_plugin_icon_() Texture2D
}

pub fn (s &EditorPlugin) gd_get_plugin_icon() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_get_plugin_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorPluginHasMainScreen {
mut:
	has_main_screen_() bool
}

pub fn (s &EditorPlugin) gd_has_main_screen() bool {
	mut result := false
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_has_main_screen")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorPluginMakeVisible {
mut:
	make_visible_(visible bool)
}

pub fn (s &EditorPlugin) gd_make_visible(visible bool) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_make_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&visible)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginEdit {
mut:
	edit_(object Object)
}

pub fn (s &EditorPlugin) gd_edit(object Object) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_edit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginHandles {
mut:
	handles_(object Object) bool
}

pub fn (s &EditorPlugin) gd_handles(object Object) bool {
	mut result := false
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_handles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 397768994)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorPluginGetState {
mut:
	get_state_() Dictionary
}

pub fn (s &EditorPlugin) gd_get_state() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_get_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorPluginSetState {
mut:
	set_state_(state Dictionary)
}

pub fn (s &EditorPlugin) gd_set_state(state Dictionary) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_set_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&state)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginClear {
mut:
	clear_()
}

pub fn (s &EditorPlugin) gd_clear() {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginGetUnsavedStatus {
mut:
	get_unsaved_status_(for_scene String) String
}

pub fn (s &EditorPlugin) gd_get_unsaved_status(for_scene string) string {
	mut result := String{}
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_get_unsaved_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(for_scene)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorPluginSaveExternalData {
mut:
	save_external_data_()
}

pub fn (s &EditorPlugin) gd_save_external_data() {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_save_external_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginApplyChanges {
mut:
	apply_changes_()
}

pub fn (s &EditorPlugin) gd_apply_changes() {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_apply_changes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginGetBreakpoints {
mut:
	get_breakpoints_() PackedStringArray
}

pub fn (s &EditorPlugin) gd_get_breakpoints() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_get_breakpoints")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorPluginSetWindowLayout {
mut:
	set_window_layout_(configuration ConfigFile)
}

pub fn (s &EditorPlugin) gd_set_window_layout(configuration ConfigFile) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_set_window_layout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 853519107)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&configuration.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginGetWindowLayout {
mut:
	get_window_layout_(configuration ConfigFile)
}

pub fn (s &EditorPlugin) gd_get_window_layout(configuration ConfigFile) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_get_window_layout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 853519107)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&configuration.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginBuild {
mut:
	build_() bool
}

pub fn (s &EditorPlugin) gd_build() bool {
	mut result := false
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_build")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorPluginEnablePlugin {
mut:
	enable_plugin_()
}

pub fn (s &EditorPlugin) gd_enable_plugin() {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_enable_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPluginDisablePlugin {
mut:
	disable_plugin_()
}

pub fn (s &EditorPlugin) gd_disable_plugin() {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("_disable_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) add_control_to_container(container EditorPluginCustomControlContainer, control Control) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_control_to_container")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3092750152)
	mut args := unsafe { [2]voidptr{} }
	i64_container := i64(container)
	args[0] = unsafe{voidptr(&i64_container)}
	args[1] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorPlugin_add_control_to_bottom_panel_Cfg {
pub:
	shortcut Shortcut
}

pub fn (s &EditorPlugin) add_control_to_bottom_panel(control Control, title string, cfg EditorPlugin_add_control_to_bottom_panel_Cfg) Button {
	mut result := Button{}
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_control_to_bottom_panel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 111032269)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&control.ptr)
	arg_sn1 := String.new(title)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = voidptr(&cfg.shortcut.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct EditorPlugin_add_control_to_dock_Cfg {
pub:
	shortcut Shortcut
}

pub fn (s &EditorPlugin) add_control_to_dock(slot EditorPluginDockSlot, control Control, cfg EditorPlugin_add_control_to_dock_Cfg) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_control_to_dock")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2994930786)
	mut args := unsafe { [3]voidptr{} }
	i64_slot := i64(slot)
	args[0] = unsafe{voidptr(&i64_slot)}
	args[1] = voidptr(&control.ptr)
	args[2] = voidptr(&cfg.shortcut.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_control_from_docks(control Control) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_control_from_docks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_control_from_bottom_panel(control Control) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_control_from_bottom_panel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_control_from_container(container EditorPluginCustomControlContainer, control Control) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_control_from_container")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3092750152)
	mut args := unsafe { [2]voidptr{} }
	i64_container := i64(container)
	args[0] = unsafe{voidptr(&i64_container)}
	args[1] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) set_dock_tab_icon(control Control, icon Texture2D) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("set_dock_tab_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3450529724)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&control.ptr)
	args[1] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) add_tool_menu_item(name string, callable Callable) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_tool_menu_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2137474292)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) add_tool_submenu_item(name string, submenu PopupMenu) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_tool_submenu_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1019428915)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&submenu.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_tool_menu_item(name string) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_tool_menu_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) get_export_as_menu() PopupMenu {
	mut result := PopupMenu{}
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("get_export_as_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1775878644)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorPlugin) add_custom_type(gd_type string, base string, script Script, icon Texture2D) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_custom_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1986814599)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(gd_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(base)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = voidptr(&script.ptr)
	args[3] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_custom_type(gd_type string) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_custom_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) add_autoload_singleton(name string, path string) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_autoload_singleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_autoload_singleton(name string) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_autoload_singleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) update_overlays() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("update_overlays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorPlugin) make_bottom_panel_item_visible(item Control) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("make_bottom_panel_item_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&item.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) hide_bottom_panel() {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("hide_bottom_panel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) get_undo_redo() EditorUndoRedoManager {
	mut result := EditorUndoRedoManager{}
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("get_undo_redo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 773492341)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorPlugin) add_undo_redo_inspector_hook_callback(callable Callable) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_undo_redo_inspector_hook_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_undo_redo_inspector_hook_callback(callable Callable) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_undo_redo_inspector_hook_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) queue_save_layout() {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("queue_save_layout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) add_translation_parser_plugin(parser EditorTranslationParserPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_translation_parser_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3116463128)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&parser.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_translation_parser_plugin(parser EditorTranslationParserPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_translation_parser_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3116463128)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&parser.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorPlugin_add_import_plugin_Cfg {
pub:
	first_priority bool
}

pub fn (s &EditorPlugin) add_import_plugin(importer EditorImportPlugin, cfg EditorPlugin_add_import_plugin_Cfg) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_import_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3113975762)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&importer.ptr)
	args[1] = unsafe{voidptr(&cfg.first_priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_import_plugin(importer EditorImportPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_import_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312482773)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&importer.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorPlugin_add_scene_format_importer_plugin_Cfg {
pub:
	first_priority bool
}

pub fn (s &EditorPlugin) add_scene_format_importer_plugin(scene_format_importer EditorSceneFormatImporter, cfg EditorPlugin_add_scene_format_importer_plugin_Cfg) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_scene_format_importer_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2764104752)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&scene_format_importer.ptr)
	args[1] = unsafe{voidptr(&cfg.first_priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_scene_format_importer_plugin(scene_format_importer EditorSceneFormatImporter) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_scene_format_importer_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2637776123)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scene_format_importer.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorPlugin_add_scene_post_import_plugin_Cfg {
pub:
	first_priority bool
}

pub fn (s &EditorPlugin) add_scene_post_import_plugin(scene_import_plugin EditorScenePostImportPlugin, cfg EditorPlugin_add_scene_post_import_plugin_Cfg) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_scene_post_import_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3492436322)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&scene_import_plugin.ptr)
	args[1] = unsafe{voidptr(&cfg.first_priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_scene_post_import_plugin(scene_import_plugin EditorScenePostImportPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_scene_post_import_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3045178206)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scene_import_plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) add_export_plugin(plugin EditorExportPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_export_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4095952207)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_export_plugin(plugin EditorExportPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_export_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4095952207)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) add_export_platform(platform EditorExportPlatform) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_export_platform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3431312373)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_export_platform(platform EditorExportPlatform) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_export_platform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3431312373)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) add_node_3d_gizmo_plugin(plugin EditorNode3DGizmoPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_node_3d_gizmo_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1541015022)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_node_3d_gizmo_plugin(plugin EditorNode3DGizmoPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_node_3d_gizmo_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1541015022)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) add_inspector_plugin(plugin EditorInspectorPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_inspector_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 546395733)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_inspector_plugin(plugin EditorInspectorPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_inspector_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 546395733)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) add_resource_conversion_plugin(plugin EditorResourceConversionPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_resource_conversion_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2124849111)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_resource_conversion_plugin(plugin EditorResourceConversionPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_resource_conversion_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2124849111)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) set_input_event_forwarding_always_enabled() {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("set_input_event_forwarding_always_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) set_force_draw_over_forwarding_enabled() {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("set_force_draw_over_forwarding_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) add_context_menu_plugin(slot EditorContextMenuPluginContextMenuSlot, plugin EditorContextMenuPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_context_menu_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1904221872)
	mut args := unsafe { [2]voidptr{} }
	i64_slot := i64(slot)
	args[0] = unsafe{voidptr(&i64_slot)}
	args[1] = voidptr(&plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_context_menu_plugin(plugin EditorContextMenuPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_context_menu_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2281511854)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plugin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) get_editor_interface() EditorInterface {
	mut result := EditorInterface{}
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("get_editor_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4223731786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorPlugin) get_script_create_dialog() ScriptCreateDialog {
	mut result := ScriptCreateDialog{}
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("get_script_create_dialog")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3121871482)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorPlugin) add_debugger_plugin(script EditorDebuggerPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("add_debugger_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3749880309)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&script.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) remove_debugger_plugin(script EditorDebuggerPlugin) {
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("remove_debugger_plugin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3749880309)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&script.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorPlugin) get_plugin_version() string {
	mut result := String{}
	classname := StringName.new("EditorPlugin")
	fnname := StringName.new("get_plugin_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
