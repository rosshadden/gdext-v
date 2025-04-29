module gd

pub struct EditorImportPlugin {
	ResourceImporter
}

pub fn (s &EditorImportPlugin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorImportPlugin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorImportPluginGetImporterName {
mut:
	get_importer_name_() String
}

pub fn (s &EditorImportPlugin) gd_get_importer_name() string {
	mut result := String{}
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_get_importer_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorImportPluginGetVisibleName {
mut:
	get_visible_name_() String
}

pub fn (s &EditorImportPlugin) gd_get_visible_name() string {
	mut result := String{}
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_get_visible_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorImportPluginGetPresetCount {
mut:
	get_preset_count_() i64
}

pub fn (s &EditorImportPlugin) gd_get_preset_count() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_get_preset_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorImportPluginGetPresetName {
mut:
	get_preset_name_(preset_index i64) String
}

pub fn (s &EditorImportPlugin) gd_get_preset_name(preset_index i64) string {
	mut result := String{}
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_get_preset_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&preset_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorImportPluginGetRecognizedExtensions {
mut:
	get_recognized_extensions_() PackedStringArray
}

pub fn (s &EditorImportPlugin) gd_get_recognized_extensions() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_get_recognized_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorImportPluginGetImportOptions {
mut:
	get_import_options_(path String, preset_index i64) Array
}

pub fn (s &EditorImportPlugin) gd_get_import_options(path string, preset_index i64) Array {
	mut result := Array{}
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_get_import_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 520498173)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&preset_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorImportPluginGetSaveExtension {
mut:
	get_save_extension_() String
}

pub fn (s &EditorImportPlugin) gd_get_save_extension() string {
	mut result := String{}
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_get_save_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorImportPluginGetResourceType {
mut:
	get_resource_type_() String
}

pub fn (s &EditorImportPlugin) gd_get_resource_type() string {
	mut result := String{}
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_get_resource_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorImportPluginGetPriority {
mut:
	get_priority_() f64
}

pub fn (s &EditorImportPlugin) gd_get_priority() f64 {
	mut result := f64(0)
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_get_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorImportPluginGetImportOrder {
mut:
	get_import_order_() i64
}

pub fn (s &EditorImportPlugin) gd_get_import_order() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_get_import_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorImportPluginGetFormatVersion {
mut:
	get_format_version_() i64
}

pub fn (s &EditorImportPlugin) gd_get_format_version() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_get_format_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorImportPluginGetOptionVisibility {
mut:
	get_option_visibility_(path String, option_name StringName, options Dictionary) bool
}

pub fn (s &EditorImportPlugin) gd_get_option_visibility(path string, option_name string, options Dictionary) bool {
	mut result := false
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_get_option_visibility")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 240466755)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(option_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&options)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorImportPluginImport {
mut:
	gd_import_(source_file String, save_path String, options Dictionary, platform_variants Array, gen_files Array) GDError
}

pub fn (s &EditorImportPlugin) gd_import(source_file string, save_path string, options Dictionary, platform_variants Array, gen_files Array) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_import")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108152118)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := String.new(source_file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(save_path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&options)}
	args[3] = unsafe{voidptr(&platform_variants)}
	args[4] = unsafe{voidptr(&gen_files)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IEditorImportPluginCanImportThreaded {
mut:
	can_import_threaded_() bool
}

pub fn (s &EditorImportPlugin) gd_can_import_threaded() bool {
	mut result := false
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("_can_import_threaded")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct EditorImportPlugin_append_import_external_resource_Cfg {
pub:
	custom_options Dictionary
	custom_importer string
	generator_parameters Variant
}

pub fn (s &EditorImportPlugin) append_import_external_resource(path string, cfg EditorImportPlugin_append_import_external_resource_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorImportPlugin")
	fnname := StringName.new("append_import_external_resource")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 320493106)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.custom_options)}
	arg_sn2 := String.new(cfg.custom_importer)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.generator_parameters)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}
