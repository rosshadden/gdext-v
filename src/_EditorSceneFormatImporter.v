module gd

pub struct EditorSceneFormatImporter {
	RefCounted
}

pub fn (s &EditorSceneFormatImporter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorSceneFormatImporter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorSceneFormatImporterGetExtensions {
mut:
	get_extensions_() PackedStringArray
}

pub fn (s &EditorSceneFormatImporter) gd_get_extensions() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorSceneFormatImporter")
	fnname := StringName.new("_get_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorSceneFormatImporterImportScene {
mut:
	import_scene_(path String, flags i64, options Dictionary) Object
}

pub fn (s &EditorSceneFormatImporter) gd_import_scene(path string, flags i64, options Dictionary) Object {
	mut result := Object{}
	classname := StringName.new("EditorSceneFormatImporter")
	fnname := StringName.new("_import_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3749238728)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&flags)}
	args[2] = unsafe{voidptr(&options)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorSceneFormatImporterGetImportOptions {
mut:
	get_import_options_(path String)
}

pub fn (s &EditorSceneFormatImporter) gd_get_import_options(path string) {
	classname := StringName.new("EditorSceneFormatImporter")
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

pub interface IEditorSceneFormatImporterGetOptionVisibility {
mut:
	get_option_visibility_(path String, for_animation bool, option String) Variant
}

pub fn (s &EditorSceneFormatImporter) gd_get_option_visibility(path string, for_animation bool, option string) Variant {
	mut result := Variant{}
	classname := StringName.new("EditorSceneFormatImporter")
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

pub fn (s &EditorSceneFormatImporter) add_import_option(name string, value Variant) {
	classname := StringName.new("EditorSceneFormatImporter")
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
pub struct EditorSceneFormatImporter_add_import_option_advanced_Cfg {
pub:
	hint PropertyHint
	hint_string string
	usage_flags i64
}

pub fn (s &EditorSceneFormatImporter) add_import_option_advanced(gd_type VariantType, name string, default_value Variant, cfg EditorSceneFormatImporter_add_import_option_advanced_Cfg) {
	classname := StringName.new("EditorSceneFormatImporter")
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
