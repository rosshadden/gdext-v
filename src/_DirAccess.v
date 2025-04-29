module gd

pub struct DirAccess {
	RefCounted
}

pub fn (s &DirAccess) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s DirAccess) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn DirAccess.open(path string) DirAccess {
	mut result := DirAccess{}
	classname := StringName.new("DirAccess")
	fnname := StringName.new("open")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1923528528)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn DirAccess.get_open_error() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_open_error")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct DirAccess_create_temp_Cfg {
pub:
	prefix string
	keep bool
}

pub fn DirAccess.create_temp(cfg DirAccess_create_temp_Cfg) DirAccess {
	mut result := DirAccess{}
	classname := StringName.new("DirAccess")
	fnname := StringName.new("create_temp")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 812913566)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(cfg.prefix)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.keep)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DirAccess) list_dir_begin() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("list_dir_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &DirAccess) get_next() string {
	mut result := String{}
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_next")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DirAccess) current_is_dir() bool {
	mut result := false
	classname := StringName.new("DirAccess")
	fnname := StringName.new("current_is_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DirAccess) list_dir_end() {
	classname := StringName.new("DirAccess")
	fnname := StringName.new("list_dir_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DirAccess) get_files() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_files")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn DirAccess.get_files_at(path string) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_files_at")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DirAccess) get_directories() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_directories")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn DirAccess.get_directories_at(path string) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_directories_at")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn DirAccess.get_drive_count() i64 {
	mut result := i64(0)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_drive_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn DirAccess.get_drive_name(idx i64) string {
	mut result := String{}
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_drive_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DirAccess) get_current_drive() i64 {
	mut result := i64(0)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_current_drive")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DirAccess) change_dir(to_dir string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("change_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(to_dir)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct DirAccess_get_current_dir_Cfg {
pub:
	include_drive bool
}

pub fn (s &DirAccess) get_current_dir(cfg DirAccess_get_current_dir_Cfg) string {
	mut result := String{}
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_current_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1287308131)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.include_drive)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DirAccess) make_dir(path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("make_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn DirAccess.make_dir_absolute(path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("make_dir_absolute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &DirAccess) make_dir_recursive(path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("make_dir_recursive")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn DirAccess.make_dir_recursive_absolute(path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("make_dir_recursive_absolute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &DirAccess) file_exists(path string) bool {
	mut result := false
	classname := StringName.new("DirAccess")
	fnname := StringName.new("file_exists")
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

pub fn (s &DirAccess) dir_exists(path string) bool {
	mut result := false
	classname := StringName.new("DirAccess")
	fnname := StringName.new("dir_exists")
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

pub fn DirAccess.dir_exists_absolute(path string) bool {
	mut result := false
	classname := StringName.new("DirAccess")
	fnname := StringName.new("dir_exists_absolute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DirAccess) get_space_left() i64 {
	mut result := i64(0)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_space_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DirAccess_copy_Cfg {
pub:
	chmod_flags i64
}

pub fn (s &DirAccess) copy(from string, to string, cfg DirAccess_copy_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("copy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1063198817)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(from)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(to)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.chmod_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct DirAccess_copy_absolute_Cfg {
pub:
	chmod_flags i64
}

pub fn DirAccess.copy_absolute(from string, to string, cfg DirAccess_copy_absolute_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("copy_absolute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1063198817)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(from)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(to)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.chmod_flags)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &DirAccess) rename(from string, to string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("rename")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(from)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(to)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn DirAccess.rename_absolute(from string, to string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("rename_absolute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(from)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(to)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &DirAccess) remove(path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("remove")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn DirAccess.remove_absolute(path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("remove_absolute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &DirAccess) is_link(path string) bool {
	mut result := false
	classname := StringName.new("DirAccess")
	fnname := StringName.new("is_link")
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

pub fn (s &DirAccess) read_link(path string) string {
	mut result := String{}
	classname := StringName.new("DirAccess")
	fnname := StringName.new("read_link")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
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

pub fn (s &DirAccess) create_link(source string, target string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DirAccess")
	fnname := StringName.new("create_link")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(source)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(target)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &DirAccess) is_bundle(path string) bool {
	mut result := false
	classname := StringName.new("DirAccess")
	fnname := StringName.new("is_bundle")
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

pub fn (s &DirAccess) set_include_navigational(enable bool) {
	classname := StringName.new("DirAccess")
	fnname := StringName.new("set_include_navigational")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DirAccess) get_include_navigational() bool {
	mut result := false
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_include_navigational")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DirAccess) set_include_hidden(enable bool) {
	classname := StringName.new("DirAccess")
	fnname := StringName.new("set_include_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DirAccess) get_include_hidden() bool {
	mut result := false
	classname := StringName.new("DirAccess")
	fnname := StringName.new("get_include_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DirAccess) is_case_sensitive(path string) bool {
	mut result := false
	classname := StringName.new("DirAccess")
	fnname := StringName.new("is_case_sensitive")
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

pub fn (s &DirAccess) is_equivalent(path_a string, path_b string) bool {
	mut result := false
	classname := StringName.new("DirAccess")
	fnname := StringName.new("is_equivalent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 820780508)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path_a)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(path_b)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
