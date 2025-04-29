module gd

pub struct ResourceFormatSaver {
	RefCounted
}

pub fn (s &ResourceFormatSaver) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ResourceFormatSaver) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IResourceFormatSaverSave {
mut:
	save_(resource Resource, path String, flags i64) GDError
}

pub fn (s &ResourceFormatSaver) gd_save(resource Resource, path string, flags i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ResourceFormatSaver")
	fnname := StringName.new("_save")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2794699034)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&resource.ptr)
	arg_sn1 := String.new(path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IResourceFormatSaverSetUid {
mut:
	set_uid_(path String, uid i64) GDError
}

pub fn (s &ResourceFormatSaver) gd_set_uid(path string, uid i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ResourceFormatSaver")
	fnname := StringName.new("_set_uid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 993915709)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&uid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IResourceFormatSaverRecognize {
mut:
	recognize_(resource Resource) bool
}

pub fn (s &ResourceFormatSaver) gd_recognize(resource Resource) bool {
	mut result := false
	classname := StringName.new("ResourceFormatSaver")
	fnname := StringName.new("_recognize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3190994482)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&resource.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IResourceFormatSaverGetRecognizedExtensions {
mut:
	get_recognized_extensions_(resource Resource) PackedStringArray
}

pub fn (s &ResourceFormatSaver) gd_get_recognized_extensions(resource Resource) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ResourceFormatSaver")
	fnname := StringName.new("_get_recognized_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1567505034)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&resource.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IResourceFormatSaverRecognizePath {
mut:
	recognize_path_(resource Resource, path String) bool
}

pub fn (s &ResourceFormatSaver) gd_recognize_path(resource Resource, path string) bool {
	mut result := false
	classname := StringName.new("ResourceFormatSaver")
	fnname := StringName.new("_recognize_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 710996192)
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
