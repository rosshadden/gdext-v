module gd

pub enum EditorScenePostImportPluginInternalImportCategory as i64 {
	internal_import_category_node = 0
	internal_import_category_mesh_3d_node = 1
	internal_import_category_mesh = 2
	internal_import_category_material = 3
	internal_import_category_animation = 4
	internal_import_category_animation_node = 5
	internal_import_category_skeleton_3d_node = 6
	internal_import_category_max = 7
}

pub struct EditorScenePostImportPlugin {
	RefCounted
}

pub fn (s &EditorScenePostImportPlugin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorScenePostImportPlugin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorScenePostImportPluginGetInternalImportOptions {
mut:
	get_internal_import_options_(category i64)
}

pub fn (s &EditorScenePostImportPlugin) gd_get_internal_import_options(category i64) {
	classname := StringName.new("EditorScenePostImportPlugin")
	fnname := StringName.new("_get_internal_import_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&category)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorScenePostImportPluginGetInternalOptionVisibility {
mut:
	get_internal_option_visibility_(category i64, for_animation bool, option String) Variant
}

pub fn (s &EditorScenePostImportPlugin) gd_get_internal_option_visibility(category i64, for_animation bool, option string) Variant {
	mut result := Variant{}
	classname := StringName.new("EditorScenePostImportPlugin")
	fnname := StringName.new("_get_internal_option_visibility")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3811255416)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&category)}
	args[1] = unsafe{voidptr(&for_animation)}
	arg_sn2 := String.new(option)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorScenePostImportPluginGetInternalOptionUpdateViewRequired {
mut:
	get_internal_option_update_view_required_(category i64, option String) Variant
}

pub fn (s &EditorScenePostImportPlugin) gd_get_internal_option_update_view_required(category i64, option string) Variant {
	mut result := Variant{}
	classname := StringName.new("EditorScenePostImportPlugin")
	fnname := StringName.new("_get_internal_option_update_view_required")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3957349696)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&category)}
	arg_sn1 := String.new(option)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorScenePostImportPluginInternalProcess {
mut:
	internal_process_(category i64, base_node Node, node Node, resource Resource)
}

pub fn (s &EditorScenePostImportPlugin) gd_internal_process(category i64, base_node Node, node Node, resource Resource) {
	classname := StringName.new("EditorScenePostImportPlugin")
	fnname := StringName.new("_internal_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3641982463)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&category)}
	args[1] = voidptr(&base_node.ptr)
	args[2] = voidptr(&node.ptr)
	args[3] = voidptr(&resource.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorScenePostImportPluginGetImportOptions {
mut:
	get_import_options_(path String)
}

pub fn (s &EditorScenePostImportPlugin) gd_get_import_options(path string) {
	classname := StringName.new("EditorScenePostImportPlugin")
	fnname := StringName.new("_get_import_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorScenePostImportPluginGetOptionVisibility {
mut:
	get_option_visibility_(path String, for_animation bool, option String) Variant
}

pub fn (s &EditorScenePostImportPlugin) gd_get_option_visibility(path string, for_animation bool, option string) Variant {
	mut result := Variant{}
	classname := StringName.new("EditorScenePostImportPlugin")
	fnname := StringName.new("_get_option_visibility")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 298836892)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&for_animation)}
	arg_sn2 := String.new(option)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorScenePostImportPluginPreProcess {
mut:
	pre_process_(scene Node)
}

pub fn (s &EditorScenePostImportPlugin) gd_pre_process(scene Node) {
	classname := StringName.new("EditorScenePostImportPlugin")
	fnname := StringName.new("_pre_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scene.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorScenePostImportPluginPostProcess {
mut:
	post_process_(scene Node)
}

pub fn (s &EditorScenePostImportPlugin) gd_post_process(scene Node) {
	classname := StringName.new("EditorScenePostImportPlugin")
	fnname := StringName.new("_post_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scene.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorScenePostImportPlugin) get_option_value(name string) Variant {
	mut result := Variant{}
	classname := StringName.new("EditorScenePostImportPlugin")
	fnname := StringName.new("get_option_value")
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

pub fn (s &EditorScenePostImportPlugin) add_import_option(name string, value Variant) {
	classname := StringName.new("EditorScenePostImportPlugin")
	fnname := StringName.new("add_import_option")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorScenePostImportPlugin_add_import_option_advanced_Cfg {
pub:
	hint PropertyHint
	hint_string string
	usage_flags i64
}

pub fn (s &EditorScenePostImportPlugin) add_import_option_advanced(gd_type VariantType, name string, default_value Variant, cfg EditorScenePostImportPlugin_add_import_option_advanced_Cfg) {
	classname := StringName.new("EditorScenePostImportPlugin")
	fnname := StringName.new("add_import_option_advanced")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674075649)
	mut args := unsafe { [6]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&default_value)}
	i64_hint := i64(cfg.hint)
	args[3] = unsafe{voidptr(&i64_hint)}
	arg_sn4 := String.new(cfg.hint_string)
	args[4] = unsafe{voidptr(&arg_sn4)}
	args[5] = unsafe{voidptr(&cfg.usage_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	arg_sn4.deinit()
	classname.deinit()
	fnname.deinit()
}
