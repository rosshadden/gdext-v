module gd

pub enum ResourceFormatLoaderCacheMode as i64 {
	cache_mode_ignore = 0
	cache_mode_reuse = 1
	cache_mode_replace = 2
	cache_mode_ignore_deep = 3
	cache_mode_replace_deep = 4
}

pub struct ResourceFormatLoader {
	RefCounted
}

pub fn (s &ResourceFormatLoader) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ResourceFormatLoader) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IResourceFormatLoaderGetRecognizedExtensions {
mut:
	get_recognized_extensions_() PackedStringArray
}

pub fn (s &ResourceFormatLoader) gd_get_recognized_extensions() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ResourceFormatLoader")
	fnname := StringName.new("_get_recognized_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IResourceFormatLoaderRecognizePath {
mut:
	recognize_path_(path String, gd_type StringName) bool
}

pub fn (s &ResourceFormatLoader) gd_recognize_path(path string, gd_type string) bool {
	mut result := false
	classname := StringName.new("ResourceFormatLoader")
	fnname := StringName.new("_recognize_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2594487047)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(gd_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IResourceFormatLoaderHandlesType {
mut:
	handles_type_(gd_type StringName) bool
}

pub fn (s &ResourceFormatLoader) gd_handles_type(gd_type string) bool {
	mut result := false
	classname := StringName.new("ResourceFormatLoader")
	fnname := StringName.new("_handles_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(gd_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IResourceFormatLoaderGetResourceType {
mut:
	get_resource_type_(path String) String
}

pub fn (s &ResourceFormatLoader) gd_get_resource_type(path string) string {
	mut result := String{}
	classname := StringName.new("ResourceFormatLoader")
	fnname := StringName.new("_get_resource_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IResourceFormatLoaderGetResourceScriptClass {
mut:
	get_resource_script_class_(path String) String
}

pub fn (s &ResourceFormatLoader) gd_get_resource_script_class(path string) string {
	mut result := String{}
	classname := StringName.new("ResourceFormatLoader")
	fnname := StringName.new("_get_resource_script_class")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IResourceFormatLoaderGetResourceUid {
mut:
	get_resource_uid_(path String) i64
}

pub fn (s &ResourceFormatLoader) gd_get_resource_uid(path string) i64 {
	mut result := i64(0)
	classname := StringName.new("ResourceFormatLoader")
	fnname := StringName.new("_get_resource_uid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IResourceFormatLoaderGetDependencies {
mut:
	get_dependencies_(path String, add_types bool) PackedStringArray
}

pub fn (s &ResourceFormatLoader) gd_get_dependencies(path string, add_types bool) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ResourceFormatLoader")
	fnname := StringName.new("_get_dependencies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 6257701)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&add_types)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IResourceFormatLoaderRenameDependencies {
mut:
	rename_dependencies_(path String, renames Dictionary) GDError
}

pub fn (s &ResourceFormatLoader) gd_rename_dependencies(path string, renames Dictionary) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ResourceFormatLoader")
	fnname := StringName.new("_rename_dependencies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 223715120)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&renames)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IResourceFormatLoaderExists {
mut:
	exists_(path String) bool
}

pub fn (s &ResourceFormatLoader) gd_exists(path string) bool {
	mut result := false
	classname := StringName.new("ResourceFormatLoader")
	fnname := StringName.new("_exists")
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

pub interface IResourceFormatLoaderGetClassesUsed {
mut:
	get_classes_used_(path String) PackedStringArray
}

pub fn (s &ResourceFormatLoader) gd_get_classes_used(path string) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ResourceFormatLoader")
	fnname := StringName.new("_get_classes_used")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IResourceFormatLoaderLoad {
mut:
	load_(path String, original_path String, use_sub_threads bool, cache_mode i64) Variant
}

pub fn (s &ResourceFormatLoader) gd_load(path string, original_path string, use_sub_threads bool, cache_mode i64) Variant {
	mut result := Variant{}
	classname := StringName.new("ResourceFormatLoader")
	fnname := StringName.new("_load")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2885906527)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(original_path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&use_sub_threads)}
	args[3] = unsafe{voidptr(&cache_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
