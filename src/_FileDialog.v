module gd

pub enum FileDialogFileMode as i64 {
	file_mode_open_file = 0
	file_mode_open_files = 1
	file_mode_open_dir = 2
	file_mode_open_any = 3
	file_mode_save_file = 4
}

pub enum FileDialogAccess as i64 {
	access_resources = 0
	access_userdata = 1
	access_filesystem = 2
}

pub struct FileDialog {
	ConfirmationDialog
}

pub fn (s &FileDialog) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s FileDialog) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &FileDialog) clear_filters() {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("clear_filters")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct FileDialog_add_filter_Cfg {
pub:
	description string
}

pub fn (s &FileDialog) add_filter(filter string, cfg FileDialog_add_filter_Cfg) {
	classname := StringName.new("FileDialog")
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

pub fn (s &FileDialog) set_filters(filters PackedStringArray) {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("set_filters")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&filters)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileDialog) get_filters() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_filters")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileDialog) clear_filename_filter() {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("clear_filename_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileDialog) set_filename_filter(filter string) {
	classname := StringName.new("FileDialog")
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

pub fn (s &FileDialog) get_filename_filter() string {
	mut result := String{}
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_filename_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &FileDialog) get_option_name(option i64) string {
	mut result := String{}
	classname := StringName.new("FileDialog")
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

pub fn (s &FileDialog) get_option_values(option i64) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_option_values")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 647634434)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileDialog) get_option_default(option i64) i64 {
	mut result := i64(0)
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_option_default")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileDialog) set_option_name(option i64, name string) {
	classname := StringName.new("FileDialog")
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

pub fn (s &FileDialog) set_option_values(option i64, values PackedStringArray) {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("set_option_values")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3353661094)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	args[1] = unsafe{voidptr(&values)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileDialog) set_option_default(option i64, default_value_index i64) {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("set_option_default")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	args[1] = unsafe{voidptr(&default_value_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileDialog) set_option_count(count i64) {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("set_option_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileDialog) get_option_count() i64 {
	mut result := i64(0)
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_option_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileDialog) add_option(name string, values PackedStringArray, default_value_index i64) {
	classname := StringName.new("FileDialog")
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

pub fn (s &FileDialog) get_selected_options() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_selected_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileDialog) get_current_dir() string {
	mut result := String{}
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_current_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &FileDialog) get_current_file() string {
	mut result := String{}
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_current_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &FileDialog) get_current_path() string {
	mut result := String{}
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_current_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &FileDialog) set_current_dir(dir string) {
	classname := StringName.new("FileDialog")
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

pub fn (s &FileDialog) set_current_file(file string) {
	classname := StringName.new("FileDialog")
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

pub fn (s &FileDialog) set_current_path(path string) {
	classname := StringName.new("FileDialog")
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

pub fn (s &FileDialog) set_mode_overrides_title(override bool) {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("set_mode_overrides_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&override)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileDialog) is_mode_overriding_title() bool {
	mut result := false
	classname := StringName.new("FileDialog")
	fnname := StringName.new("is_mode_overriding_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileDialog) set_file_mode(mode FileDialogFileMode) {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("set_file_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3654936397)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileDialog) get_file_mode() FileDialogFileMode {
	mut result := i64(FileDialogFileMode.file_mode_open_file)
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_file_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4074825319)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{FileDialogFileMode(result)}
}

pub fn (s &FileDialog) get_vbox() VBoxContainer {
	mut result := VBoxContainer{}
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_vbox")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 915758477)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileDialog) get_line_edit() LineEdit {
	mut result := LineEdit{}
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_line_edit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4071694264)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileDialog) set_access(access FileDialogAccess) {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("set_access")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4104413466)
	mut args := unsafe { [1]voidptr{} }
	i64_access := i64(access)
	args[0] = unsafe{voidptr(&i64_access)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileDialog) get_access() FileDialogAccess {
	mut result := i64(FileDialogAccess.access_resources)
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_access")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3344081076)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{FileDialogAccess(result)}
}

pub fn (s &FileDialog) set_root_subfolder(dir string) {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("set_root_subfolder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(dir)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileDialog) get_root_subfolder() string {
	mut result := String{}
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_root_subfolder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &FileDialog) set_show_hidden_files(show bool) {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("set_show_hidden_files")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&show)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileDialog) is_showing_hidden_files() bool {
	mut result := false
	classname := StringName.new("FileDialog")
	fnname := StringName.new("is_showing_hidden_files")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileDialog) set_use_native_dialog(native bool) {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("set_use_native_dialog")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&native)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileDialog) get_use_native_dialog() bool {
	mut result := false
	classname := StringName.new("FileDialog")
	fnname := StringName.new("get_use_native_dialog")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileDialog) deselect_all() {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("deselect_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileDialog) invalidate() {
	classname := StringName.new("FileDialog")
	fnname := StringName.new("invalidate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
