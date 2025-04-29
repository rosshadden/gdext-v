module gd

pub struct EditorExportPlatformExtension {
	EditorExportPlatform
}

pub fn (s &EditorExportPlatformExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorExportPlatformExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorExportPlatformExtensionGetPresetFeatures {
mut:
	get_preset_features_(preset EditorExportPreset) PackedStringArray
}

pub fn (s &EditorExportPlatformExtension) gd_get_preset_features(preset EditorExportPreset) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_preset_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1387456631)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionIsExecutable {
mut:
	is_executable_(path String) bool
}

pub fn (s &EditorExportPlatformExtension) gd_is_executable(path string) bool {
	mut result := false
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_is_executable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionGetExportOptions {
mut:
	get_export_options_() Array
}

pub fn (s &EditorExportPlatformExtension) gd_get_export_options() Array {
	mut result := Array{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_export_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionShouldUpdateExportOptions {
mut:
	should_update_export_options_() bool
}

pub fn (s &EditorExportPlatformExtension) gd_should_update_export_options() bool {
	mut result := false
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_should_update_export_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionGetExportOptionVisibility {
mut:
	get_export_option_visibility_(preset EditorExportPreset, option String) bool
}

pub fn (s &EditorExportPlatformExtension) gd_get_export_option_visibility(preset EditorExportPreset, option string) bool {
	mut result := false
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_export_option_visibility")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 969350244)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	arg_sn1 := String.new(option)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionGetExportOptionWarning {
mut:
	get_export_option_warning_(preset EditorExportPreset, option StringName) String
}

pub fn (s &EditorExportPlatformExtension) gd_get_export_option_warning(preset EditorExportPreset, option string) string {
	mut result := String{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_export_option_warning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 805886795)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	arg_sn1 := StringName.new(option)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorExportPlatformExtensionGetOsName {
mut:
	get_os_name_() String
}

pub fn (s &EditorExportPlatformExtension) gd_get_os_name() string {
	mut result := String{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_os_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorExportPlatformExtensionGetName {
mut:
	get_name_() String
}

pub fn (s &EditorExportPlatformExtension) gd_get_name() string {
	mut result := String{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorExportPlatformExtensionGetLogo {
mut:
	get_logo_() Texture2D
}

pub fn (s &EditorExportPlatformExtension) gd_get_logo() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_logo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionPollExport {
mut:
	poll_export_() bool
}

pub fn (s &EditorExportPlatformExtension) gd_poll_export() bool {
	mut result := false
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_poll_export")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionGetOptionsCount {
mut:
	get_options_count_() i64
}

pub fn (s &EditorExportPlatformExtension) gd_get_options_count() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_options_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionGetOptionsTooltip {
mut:
	get_options_tooltip_() String
}

pub fn (s &EditorExportPlatformExtension) gd_get_options_tooltip() string {
	mut result := String{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_options_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorExportPlatformExtensionGetOptionIcon {
mut:
	get_option_icon_(device i64) ImageTexture
}

pub fn (s &EditorExportPlatformExtension) gd_get_option_icon(device i64) ImageTexture {
	mut result := ImageTexture{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_option_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3991065292)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionGetOptionLabel {
mut:
	get_option_label_(device i64) String
}

pub fn (s &EditorExportPlatformExtension) gd_get_option_label(device i64) string {
	mut result := String{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_option_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorExportPlatformExtensionGetOptionTooltip {
mut:
	get_option_tooltip_(device i64) String
}

pub fn (s &EditorExportPlatformExtension) gd_get_option_tooltip(device i64) string {
	mut result := String{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_option_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorExportPlatformExtensionGetDeviceArchitecture {
mut:
	get_device_architecture_(device i64) String
}

pub fn (s &EditorExportPlatformExtension) gd_get_device_architecture(device i64) string {
	mut result := String{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_device_architecture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorExportPlatformExtensionCleanup {
mut:
	cleanup_()
}

pub fn (s &EditorExportPlatformExtension) gd_cleanup() {
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_cleanup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorExportPlatformExtensionRun {
mut:
	run_(preset EditorExportPreset, device i64, debug_flags EditorExportPlatformDebugFlags) GDError
}

pub fn (s &EditorExportPlatformExtension) gd_run(preset EditorExportPreset, device i64, debug_flags EditorExportPlatformDebugFlags) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_run")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1726914928)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&device)}
	i64_debug_flags := i64(debug_flags)
	args[2] = unsafe{voidptr(&i64_debug_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IEditorExportPlatformExtensionGetRunIcon {
mut:
	get_run_icon_() Texture2D
}

pub fn (s &EditorExportPlatformExtension) gd_get_run_icon() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_run_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionCanExport {
mut:
	can_export_(preset EditorExportPreset, debug bool) bool
}

pub fn (s &EditorExportPlatformExtension) gd_can_export(preset EditorExportPreset, debug bool) bool {
	mut result := false
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_can_export")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 493961987)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionHasValidExportConfiguration {
mut:
	has_valid_export_configuration_(preset EditorExportPreset, debug bool) bool
}

pub fn (s &EditorExportPlatformExtension) gd_has_valid_export_configuration(preset EditorExportPreset, debug bool) bool {
	mut result := false
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_has_valid_export_configuration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 493961987)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionHasValidProjectConfiguration {
mut:
	has_valid_project_configuration_(preset EditorExportPreset) bool
}

pub fn (s &EditorExportPlatformExtension) gd_has_valid_project_configuration(preset EditorExportPreset) bool {
	mut result := false
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_has_valid_project_configuration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3117166915)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionGetBinaryExtensions {
mut:
	get_binary_extensions_(preset EditorExportPreset) PackedStringArray
}

pub fn (s &EditorExportPlatformExtension) gd_get_binary_extensions(preset EditorExportPreset) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_binary_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1387456631)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionExportProject {
mut:
	export_project_(preset EditorExportPreset, debug bool, path String, flags EditorExportPlatformDebugFlags) GDError
}

pub fn (s &EditorExportPlatformExtension) gd_export_project(preset EditorExportPreset, debug bool, path string, flags EditorExportPlatformDebugFlags) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_export_project")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1328957260)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_flags := i64(flags)
	args[3] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IEditorExportPlatformExtensionExportPack {
mut:
	export_pack_(preset EditorExportPreset, debug bool, path String, flags EditorExportPlatformDebugFlags) GDError
}

pub fn (s &EditorExportPlatformExtension) gd_export_pack(preset EditorExportPreset, debug bool, path string, flags EditorExportPlatformDebugFlags) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_export_pack")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1328957260)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_flags := i64(flags)
	args[3] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IEditorExportPlatformExtensionExportZip {
mut:
	export_zip_(preset EditorExportPreset, debug bool, path String, flags EditorExportPlatformDebugFlags) GDError
}

pub fn (s &EditorExportPlatformExtension) gd_export_zip(preset EditorExportPreset, debug bool, path string, flags EditorExportPlatformDebugFlags) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_export_zip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1328957260)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_flags := i64(flags)
	args[3] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IEditorExportPlatformExtensionExportPackPatch {
mut:
	export_pack_patch_(preset EditorExportPreset, debug bool, path String, patches PackedStringArray, flags EditorExportPlatformDebugFlags) GDError
}

pub fn (s &EditorExportPlatformExtension) gd_export_pack_patch(preset EditorExportPreset, debug bool, path string, patches PackedStringArray, flags EditorExportPlatformDebugFlags) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_export_pack_patch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 454765315)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&patches)}
	i64_flags := i64(flags)
	args[4] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IEditorExportPlatformExtensionExportZipPatch {
mut:
	export_zip_patch_(preset EditorExportPreset, debug bool, path String, patches PackedStringArray, flags EditorExportPlatformDebugFlags) GDError
}

pub fn (s &EditorExportPlatformExtension) gd_export_zip_patch(preset EditorExportPreset, debug bool, path string, patches PackedStringArray, flags EditorExportPlatformDebugFlags) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_export_zip_patch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 454765315)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&patches)}
	i64_flags := i64(flags)
	args[4] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IEditorExportPlatformExtensionGetPlatformFeatures {
mut:
	get_platform_features_() PackedStringArray
}

pub fn (s &EditorExportPlatformExtension) gd_get_platform_features() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_platform_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPlatformExtensionGetDebugProtocol {
mut:
	get_debug_protocol_() String
}

pub fn (s &EditorExportPlatformExtension) gd_get_debug_protocol() string {
	mut result := String{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("_get_debug_protocol")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPlatformExtension) set_config_error(error_text string) {
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("set_config_error")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3089850668)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(error_text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlatformExtension) get_config_error() string {
	mut result := String{}
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("get_config_error")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPlatformExtension) set_config_missing_templates(missing_templates bool) {
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("set_config_missing_templates")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1695273946)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&missing_templates)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlatformExtension) get_config_missing_templates() bool {
	mut result := false
	classname := StringName.new("EditorExportPlatformExtension")
	fnname := StringName.new("get_config_missing_templates")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
