module gd

pub enum EditorExportPresetExportFilter as i64 {
	export_all_resources = 0
	export_selected_scenes = 1
	export_selected_resources = 2
	exclude_selected_resources = 3
	export_customized = 4
}

pub enum EditorExportPresetFileExportMode as i64 {
	mode_file_not_customized = 0
	mode_file_strip = 1
	mode_file_keep = 2
	mode_file_remove = 3
}

pub enum EditorExportPresetScriptExportMode as i64 {
	mode_script_text = 0
	mode_script_binary_tokens = 1
	mode_script_binary_tokens_compressed = 2
}

pub struct EditorExportPreset {
	RefCounted
}

pub fn (s &EditorExportPreset) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorExportPreset) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &EditorExportPreset) has(property string) bool {
	mut result := false
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("has")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) get_files_to_export() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_files_to_export")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) get_customized_files() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_customized_files")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) get_customized_files_count() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_customized_files_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) has_export_file(path string) bool {
	mut result := false
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("has_export_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct EditorExportPreset_get_file_export_mode_Cfg {
pub:
	default EditorExportPresetFileExportMode
}

pub fn (s &EditorExportPreset) get_file_export_mode(path string, cfg EditorExportPreset_get_file_export_mode_Cfg) EditorExportPresetFileExportMode {
	mut result := i64(EditorExportPresetFileExportMode.mode_file_not_customized)
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_file_export_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 407825436)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_default := i64(cfg.default)
	args[1] = unsafe{voidptr(&i64_default)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{EditorExportPresetFileExportMode(result)}
}

pub fn (s &EditorExportPreset) get_project_setting(name string) Variant {
	mut result := Variant{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_project_setting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) get_preset_name() string {
	mut result := String{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_preset_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPreset) is_runnable() bool {
	mut result := false
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("is_runnable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) are_advanced_options_enabled() bool {
	mut result := false
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("are_advanced_options_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) is_dedicated_server() bool {
	mut result := false
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("is_dedicated_server")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) get_export_filter() EditorExportPresetExportFilter {
	mut result := i64(EditorExportPresetExportFilter.export_all_resources)
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_export_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227045696)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{EditorExportPresetExportFilter(result)}
}

pub fn (s &EditorExportPreset) get_include_filter() string {
	mut result := String{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_include_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPreset) get_exclude_filter() string {
	mut result := String{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_exclude_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPreset) get_custom_features() string {
	mut result := String{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_custom_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPreset) get_patches() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_patches")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) get_export_path() string {
	mut result := String{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_export_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPreset) get_encryption_in_filter() string {
	mut result := String{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_encryption_in_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPreset) get_encryption_ex_filter() string {
	mut result := String{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_encryption_ex_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPreset) get_encrypt_pck() bool {
	mut result := false
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_encrypt_pck")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) get_encrypt_directory() bool {
	mut result := false
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_encrypt_directory")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) get_encryption_key() string {
	mut result := String{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_encryption_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPreset) get_script_export_mode() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_script_export_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) get_or_env(name string, env_var string) Variant {
	mut result := Variant{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_or_env")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 389838787)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(env_var)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPreset) get_version(name string, windows_version bool) string {
	mut result := String{}
	classname := StringName.new("EditorExportPreset")
	fnname := StringName.new("get_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1132184663)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&windows_version)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
