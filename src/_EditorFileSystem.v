module gd

pub struct EditorFileSystem {
	Node
}

pub fn (s &EditorFileSystem) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorFileSystem) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &EditorFileSystem) get_filesystem() EditorFileSystemDirectory {
	mut result := EditorFileSystemDirectory{}
	classname := StringName.new("EditorFileSystem")
	fnname := StringName.new("get_filesystem")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 842323275)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileSystem) is_scanning() bool {
	mut result := false
	classname := StringName.new("EditorFileSystem")
	fnname := StringName.new("is_scanning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileSystem) get_scanning_progress() f64 {
	mut result := f64(0)
	classname := StringName.new("EditorFileSystem")
	fnname := StringName.new("get_scanning_progress")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileSystem) scan() {
	classname := StringName.new("EditorFileSystem")
	fnname := StringName.new("scan")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileSystem) scan_sources() {
	classname := StringName.new("EditorFileSystem")
	fnname := StringName.new("scan_sources")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileSystem) update_file(path string) {
	classname := StringName.new("EditorFileSystem")
	fnname := StringName.new("update_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorFileSystem) get_filesystem_path(path string) EditorFileSystemDirectory {
	mut result := EditorFileSystemDirectory{}
	classname := StringName.new("EditorFileSystem")
	fnname := StringName.new("get_filesystem_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3188521125)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorFileSystem) get_file_type(path string) string {
	mut result := String{}
	classname := StringName.new("EditorFileSystem")
	fnname := StringName.new("get_file_type")
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

pub fn (s &EditorFileSystem) reimport_files(files PackedStringArray) {
	classname := StringName.new("EditorFileSystem")
	fnname := StringName.new("reimport_files")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&files)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
