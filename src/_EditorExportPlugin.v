module gd

pub struct EditorExportPlugin {
	RefCounted
}

pub fn (s &EditorExportPlugin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorExportPlugin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorExportPluginExportFile {
mut:
	export_file_(path String, gd_type String, features PackedStringArray)
}

pub fn (s &EditorExportPlugin) gd_export_file(path string, gd_type string, features PackedStringArray) {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_export_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3533781844)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(gd_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&features)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorExportPluginExportBegin {
mut:
	export_begin_(features PackedStringArray, is_debug bool, path String, flags i64)
}

pub fn (s &EditorExportPlugin) gd_export_begin(features PackedStringArray, is_debug bool, path string, flags i64) {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_export_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2765511433)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&features)}
	args[1] = unsafe{voidptr(&is_debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorExportPluginExportEnd {
mut:
	export_end_()
}

pub fn (s &EditorExportPlugin) gd_export_end() {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_export_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorExportPluginBeginCustomizeResources {
mut:
	begin_customize_resources_(platform EditorExportPlatform, features PackedStringArray) bool
}

pub fn (s &EditorExportPlugin) gd_begin_customize_resources(platform EditorExportPlatform, features PackedStringArray) bool {
	mut result := false
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_begin_customize_resources")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1312023292)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	args[1] = unsafe{voidptr(&features)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginCustomizeResource {
mut:
	customize_resource_(resource Resource, path String) Resource
}

pub fn (s &EditorExportPlugin) gd_customize_resource(resource Resource, path string) Resource {
	mut result := Resource{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_customize_resource")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 307917495)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&resource.ptr)
	arg_sn1 := String.new(path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginBeginCustomizeScenes {
mut:
	begin_customize_scenes_(platform EditorExportPlatform, features PackedStringArray) bool
}

pub fn (s &EditorExportPlugin) gd_begin_customize_scenes(platform EditorExportPlatform, features PackedStringArray) bool {
	mut result := false
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_begin_customize_scenes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1312023292)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	args[1] = unsafe{voidptr(&features)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginCustomizeScene {
mut:
	customize_scene_(scene Node, path String) Node
}

pub fn (s &EditorExportPlugin) gd_customize_scene(scene Node, path string) Node {
	mut result := Node{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_customize_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 498701822)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&scene.ptr)
	arg_sn1 := String.new(path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginGetCustomizationConfigurationHash {
mut:
	get_customization_configuration_hash_() i64
}

pub fn (s &EditorExportPlugin) gd_get_customization_configuration_hash() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_customization_configuration_hash")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginEndCustomizeScenes {
mut:
	end_customize_scenes_()
}

pub fn (s &EditorExportPlugin) gd_end_customize_scenes() {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_end_customize_scenes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorExportPluginEndCustomizeResources {
mut:
	end_customize_resources_()
}

pub fn (s &EditorExportPlugin) gd_end_customize_resources() {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_end_customize_resources")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorExportPluginGetExportOptions {
mut:
	get_export_options_(platform EditorExportPlatform) Array
}

pub fn (s &EditorExportPlugin) gd_get_export_options(platform EditorExportPlatform) Array {
	mut result := Array{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_export_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 488349689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginGetExportOptionsOverrides {
mut:
	get_export_options_overrides_(platform EditorExportPlatform) Dictionary
}

pub fn (s &EditorExportPlugin) gd_get_export_options_overrides(platform EditorExportPlatform) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_export_options_overrides")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2837326714)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginShouldUpdateExportOptions {
mut:
	should_update_export_options_(platform EditorExportPlatform) bool
}

pub fn (s &EditorExportPlugin) gd_should_update_export_options(platform EditorExportPlatform) bool {
	mut result := false
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_should_update_export_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1866233299)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginGetExportOptionVisibility {
mut:
	get_export_option_visibility_(platform EditorExportPlatform, option String) bool
}

pub fn (s &EditorExportPlugin) gd_get_export_option_visibility(platform EditorExportPlatform, option string) bool {
	mut result := false
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_export_option_visibility")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3537301980)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	arg_sn1 := String.new(option)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginGetExportOptionWarning {
mut:
	get_export_option_warning_(platform EditorExportPlatform, option String) String
}

pub fn (s &EditorExportPlugin) gd_get_export_option_warning(platform EditorExportPlatform, option string) string {
	mut result := String{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_export_option_warning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3340251247)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	arg_sn1 := String.new(option)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorExportPluginGetExportFeatures {
mut:
	get_export_features_(platform EditorExportPlatform, debug bool) PackedStringArray
}

pub fn (s &EditorExportPlugin) gd_get_export_features(platform EditorExportPlatform, debug bool) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_export_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1057664154)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	args[1] = unsafe{voidptr(&debug)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginGetName {
mut:
	get_name_() String
}

pub fn (s &EditorExportPlugin) gd_get_name() string {
	mut result := String{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorExportPluginSupportsPlatform {
mut:
	supports_platform_(platform EditorExportPlatform) bool
}

pub fn (s &EditorExportPlugin) gd_supports_platform(platform EditorExportPlatform) bool {
	mut result := false
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_supports_platform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1866233299)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginGetAndroidDependencies {
mut:
	get_android_dependencies_(platform EditorExportPlatform, debug bool) PackedStringArray
}

pub fn (s &EditorExportPlugin) gd_get_android_dependencies(platform EditorExportPlatform, debug bool) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_android_dependencies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1057664154)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	args[1] = unsafe{voidptr(&debug)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginGetAndroidDependenciesMavenRepos {
mut:
	get_android_dependencies_maven_repos_(platform EditorExportPlatform, debug bool) PackedStringArray
}

pub fn (s &EditorExportPlugin) gd_get_android_dependencies_maven_repos(platform EditorExportPlatform, debug bool) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_android_dependencies_maven_repos")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1057664154)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	args[1] = unsafe{voidptr(&debug)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginGetAndroidLibraries {
mut:
	get_android_libraries_(platform EditorExportPlatform, debug bool) PackedStringArray
}

pub fn (s &EditorExportPlugin) gd_get_android_libraries(platform EditorExportPlatform, debug bool) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_android_libraries")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1057664154)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	args[1] = unsafe{voidptr(&debug)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorExportPluginGetAndroidManifestActivityElementContents {
mut:
	get_android_manifest_activity_element_contents_(platform EditorExportPlatform, debug bool) String
}

pub fn (s &EditorExportPlugin) gd_get_android_manifest_activity_element_contents(platform EditorExportPlatform, debug bool) string {
	mut result := String{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_android_manifest_activity_element_contents")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4013372917)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	args[1] = unsafe{voidptr(&debug)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorExportPluginGetAndroidManifestApplicationElementContents {
mut:
	get_android_manifest_application_element_contents_(platform EditorExportPlatform, debug bool) String
}

pub fn (s &EditorExportPlugin) gd_get_android_manifest_application_element_contents(platform EditorExportPlatform, debug bool) string {
	mut result := String{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_android_manifest_application_element_contents")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4013372917)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	args[1] = unsafe{voidptr(&debug)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorExportPluginGetAndroidManifestElementContents {
mut:
	get_android_manifest_element_contents_(platform EditorExportPlatform, debug bool) String
}

pub fn (s &EditorExportPlugin) gd_get_android_manifest_element_contents(platform EditorExportPlatform, debug bool) string {
	mut result := String{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_get_android_manifest_element_contents")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4013372917)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	args[1] = unsafe{voidptr(&debug)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorExportPluginUpdateAndroidPrebuiltManifest {
mut:
	update_android_prebuilt_manifest_(platform EditorExportPlatform, manifest_data PackedByteArray) PackedByteArray
}

pub fn (s &EditorExportPlugin) gd_update_android_prebuilt_manifest(platform EditorExportPlatform, manifest_data PackedByteArray) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("_update_android_prebuilt_manifest")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304965187)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&platform.ptr)
	args[1] = unsafe{voidptr(&manifest_data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPlugin) add_shared_object(path string, tags PackedStringArray, target string) {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("add_shared_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3098291045)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&tags)}
	arg_sn2 := String.new(target)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlugin) add_ios_project_static_lib(path string) {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("add_ios_project_static_lib")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlugin) add_file(path string, file PackedByteArray, remap bool) {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("add_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 527928637)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&file)}
	args[2] = unsafe{voidptr(&remap)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlugin) add_ios_framework(path string) {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("add_ios_framework")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlugin) add_ios_embedded_framework(path string) {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("add_ios_embedded_framework")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlugin) add_ios_plist_content(plist_content string) {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("add_ios_plist_content")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(plist_content)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlugin) add_ios_linker_flags(flags string) {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("add_ios_linker_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(flags)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlugin) add_ios_bundle_file(path string) {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("add_ios_bundle_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlugin) add_ios_cpp_code(code string) {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("add_ios_cpp_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(code)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlugin) add_macos_plugin_file(path string) {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("add_macos_plugin_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlugin) skip() {
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("skip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlugin) get_option(name string) Variant {
	mut result := Variant{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("get_option")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPlugin) get_export_preset() EditorExportPreset {
	mut result := EditorExportPreset{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("get_export_preset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1610607222)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPlugin) get_export_platform() EditorExportPlatform {
	mut result := EditorExportPlatform{}
	classname := StringName.new("EditorExportPlugin")
	fnname := StringName.new("get_export_platform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 282254641)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
