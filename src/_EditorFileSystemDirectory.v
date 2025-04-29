module gd

pub struct EditorFileSystemDirectory {
	Object
}

pub fn (s &EditorFileSystemDirectory) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorFileSystemDirectory) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &EditorFileSystemDirectory) get_subdir_count() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("get_subdir_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileSystemDirectory) get_subdir(idx i64) EditorFileSystemDirectory {
	mut result := EditorFileSystemDirectory{}
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("get_subdir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2330964164)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileSystemDirectory) get_file_count() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("get_file_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileSystemDirectory) get_file(idx i64) string {
	mut result := String{}
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("get_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorFileSystemDirectory) get_file_path(idx i64) string {
	mut result := String{}
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("get_file_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorFileSystemDirectory) get_file_type(idx i64) string {
	mut result := StringName{}
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("get_file_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorFileSystemDirectory) get_file_script_class_name(idx i64) string {
	mut result := String{}
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("get_file_script_class_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorFileSystemDirectory) get_file_script_class_extends(idx i64) string {
	mut result := String{}
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("get_file_script_class_extends")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorFileSystemDirectory) get_file_import_is_valid(idx i64) bool {
	mut result := false
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("get_file_import_is_valid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileSystemDirectory) get_name() string {
	mut result := String{}
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorFileSystemDirectory) get_path() string {
	mut result := String{}
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("get_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorFileSystemDirectory) get_parent() EditorFileSystemDirectory {
	mut result := EditorFileSystemDirectory{}
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("get_parent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 842323275)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileSystemDirectory) find_file_index(name string) i64 {
	mut result := i64(0)
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("find_file_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileSystemDirectory) find_dir_index(name string) i64 {
	mut result := i64(0)
	classname := StringName.new("EditorFileSystemDirectory")
	fnname := StringName.new("find_dir_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
