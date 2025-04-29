module gd

pub enum EditorFileDialogFileMode as i64 {
	file_mode_open_file = 0
	file_mode_open_files = 1
	file_mode_open_dir = 2
	file_mode_open_any = 3
	file_mode_save_file = 4
}

pub enum EditorFileDialogAccess as i64 {
	access_resources = 0
	access_userdata = 1
	access_filesystem = 2
}

pub enum EditorFileDialogDisplayMode as i64 {
	display_thumbnails = 0
	display_list = 1
}

pub struct EditorFileDialog {
	ConfirmationDialog
}

pub fn (s &EditorFileDialog) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorFileDialog) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &EditorFileDialog) clear_filters() {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("clear_filters")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorFileDialog_add_filter_Cfg {
pub:
	description string
}

pub fn (s &EditorFileDialog) add_filter(filter string, cfg EditorFileDialog_add_filter_Cfg) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("add_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3388804757)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(filter)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(cfg.description)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) set_filters(filters PackedStringArray) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_filters")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&filters)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) get_filters() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_filters")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileDialog) get_option_name(option i64) string {
	mut result := String{}
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_option_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorFileDialog) get_option_values(option i64) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_option_values")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 647634434)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileDialog) get_option_default(option i64) i64 {
	mut result := i64(0)
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_option_default")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileDialog) set_option_name(option i64, name string) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_option_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) set_option_values(option i64, values PackedStringArray) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_option_values")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3353661094)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	args[1] = unsafe{voidptr(&values)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) set_option_default(option i64, default_value_index i64) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_option_default")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	args[1] = unsafe{voidptr(&default_value_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) set_option_count(count i64) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_option_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) get_option_count() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_option_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileDialog) add_option(name string, values PackedStringArray, default_value_index i64) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("add_option")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 149592325)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&values)}
	args[2] = unsafe{voidptr(&default_value_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) get_selected_options() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_selected_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileDialog) clear_filename_filter() {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("clear_filename_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) set_filename_filter(filter string) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_filename_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(filter)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) get_filename_filter() string {
	mut result := String{}
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_filename_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorFileDialog) get_current_dir() string {
	mut result := String{}
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_current_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorFileDialog) get_current_file() string {
	mut result := String{}
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_current_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorFileDialog) get_current_path() string {
	mut result := String{}
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_current_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorFileDialog) set_current_dir(dir string) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_current_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(dir)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) set_current_file(file string) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_current_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) set_current_path(path string) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_current_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) set_file_mode(mode EditorFileDialogFileMode) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_file_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 274150415)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) get_file_mode() EditorFileDialogFileMode {
	mut result := i64(EditorFileDialogFileMode.file_mode_open_file)
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_file_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2681044145)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{EditorFileDialogFileMode(result)}
}

pub fn (s &EditorFileDialog) get_vbox() VBoxContainer {
	mut result := VBoxContainer{}
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_vbox")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 915758477)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileDialog) get_line_edit() LineEdit {
	mut result := LineEdit{}
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_line_edit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4071694264)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileDialog) set_access(access EditorFileDialogAccess) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_access")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3882893764)
	mut args := unsafe { [1]voidptr{} }
	i64_access := i64(access)
	args[0] = unsafe{voidptr(&i64_access)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) get_access() EditorFileDialogAccess {
	mut result := i64(EditorFileDialogAccess.access_resources)
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_access")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 778734016)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{EditorFileDialogAccess(result)}
}

pub fn (s &EditorFileDialog) set_show_hidden_files(show bool) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_show_hidden_files")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&show)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) is_showing_hidden_files() bool {
	mut result := false
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("is_showing_hidden_files")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileDialog) set_display_mode(mode EditorFileDialogDisplayMode) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_display_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3049004050)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) get_display_mode() EditorFileDialogDisplayMode {
	mut result := i64(EditorFileDialogDisplayMode.display_thumbnails)
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("get_display_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3517174669)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{EditorFileDialogDisplayMode(result)}
}

pub fn (s &EditorFileDialog) set_disable_overwrite_warning(disable bool) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("set_disable_overwrite_warning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&disable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) is_overwrite_warning_disabled() bool {
	mut result := false
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("is_overwrite_warning_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct EditorFileDialog_add_side_menu_Cfg {
pub:
	title string
}

pub fn (s &EditorFileDialog) add_side_menu(menu Control, cfg EditorFileDialog_add_side_menu_Cfg) {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("add_side_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 402368861)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&menu.ptr)
	arg_sn1 := String.new(cfg.title)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) popup_file_dialog() {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("popup_file_dialog")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileDialog) invalidate() {
	classname := StringName.new("EditorFileDialog")
	fnname := StringName.new("invalidate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
