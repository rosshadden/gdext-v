module gd

pub enum FileAccessModeFlags as i64 {
	read = 1
	write = 2
	read_write = 3
	write_read = 7
}

pub enum FileAccessCompressionMode as i64 {
	compression_fastlz = 0
	compression_deflate = 1
	compression_zstd = 2
	compression_gzip = 3
	compression_brotli = 4
}

pub enum FileAccessUnixPermissionFlags as i64 {
	unix_read_owner = 256
	unix_write_owner = 128
	unix_execute_owner = 64
	unix_read_group = 32
	unix_write_group = 16
	unix_execute_group = 8
	unix_read_other = 4
	unix_write_other = 2
	unix_execute_other = 1
	unix_set_user_id = 2048
	unix_set_group_id = 1024
	unix_restricted_delete = 512
}

pub struct FileAccess {
	RefCounted
}

pub fn (s &FileAccess) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s FileAccess) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn FileAccess.open(path string, flags FileAccessModeFlags) FileAccess {
	mut result := FileAccess{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("open")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1247358404)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_flags := i64(flags)
	args[1] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct FileAccess_open_encrypted_Cfg {
pub:
	iv PackedByteArray
}

pub fn FileAccess.open_encrypted(path string, mode_flags FileAccessModeFlags, key PackedByteArray, cfg FileAccess_open_encrypted_Cfg) FileAccess {
	mut result := FileAccess{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("open_encrypted")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 788003459)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_mode_flags := i64(mode_flags)
	args[1] = unsafe{voidptr(&i64_mode_flags)}
	args[2] = unsafe{voidptr(&key)}
	args[3] = unsafe{voidptr(&cfg.iv)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn FileAccess.open_encrypted_with_pass(path string, mode_flags FileAccessModeFlags, pass string) FileAccess {
	mut result := FileAccess{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("open_encrypted_with_pass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 790283377)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_mode_flags := i64(mode_flags)
	args[1] = unsafe{voidptr(&i64_mode_flags)}
	arg_sn2 := String.new(pass)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct FileAccess_open_compressed_Cfg {
pub:
	compression_mode FileAccessCompressionMode
}

pub fn FileAccess.open_compressed(path string, mode_flags FileAccessModeFlags, cfg FileAccess_open_compressed_Cfg) FileAccess {
	mut result := FileAccess{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("open_compressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3686439335)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_mode_flags := i64(mode_flags)
	args[1] = unsafe{voidptr(&i64_mode_flags)}
	i64_compression_mode := i64(cfg.compression_mode)
	args[2] = unsafe{voidptr(&i64_compression_mode)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn FileAccess.get_open_error() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_open_error")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct FileAccess_create_temp_Cfg {
pub:
	prefix string
	extension string
	keep bool
}

pub fn FileAccess.create_temp(mode_flags i64, cfg FileAccess_create_temp_Cfg) FileAccess {
	mut result := FileAccess{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("create_temp")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3075606245)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&mode_flags)}
	arg_sn1 := String.new(cfg.prefix)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := String.new(cfg.extension)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.keep)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn FileAccess.get_file_as_bytes(path string) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_file_as_bytes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659035735)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn FileAccess.get_file_as_string(path string) string {
	mut result := String{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_file_as_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &FileAccess) resize(length i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("resize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &FileAccess) flush() {
	classname := StringName.new("FileAccess")
	fnname := StringName.new("flush")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileAccess) get_path() string {
	mut result := String{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &FileAccess) get_path_absolute() string {
	mut result := String{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_path_absolute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &FileAccess) is_open() bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("is_open")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) seek(position i64) {
	classname := StringName.new("FileAccess")
	fnname := StringName.new("seek")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct FileAccess_seek_end_Cfg {
pub:
	position i64
}

pub fn (s &FileAccess) seek_end(cfg FileAccess_seek_end_Cfg) {
	classname := StringName.new("FileAccess")
	fnname := StringName.new("seek_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileAccess) get_position() i64 {
	mut result := i64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) get_length() i64 {
	mut result := i64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) eof_reached() bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("eof_reached")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) get_8() i64 {
	mut result := i64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_8")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) get_16() i64 {
	mut result := i64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_16")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) get_32() i64 {
	mut result := i64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_32")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) get_64() i64 {
	mut result := i64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_64")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) get_half() f64 {
	mut result := f64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_half")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) get_float() f64 {
	mut result := f64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_float")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) get_double() f64 {
	mut result := f64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_double")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) get_real() f64 {
	mut result := f64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_real")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) get_buffer(length i64) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4131300905)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) get_line() string {
	mut result := String{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct FileAccess_get_csv_line_Cfg {
pub:
	delim string
}

pub fn (s &FileAccess) get_csv_line(cfg FileAccess_get_csv_line_Cfg) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_csv_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2358116058)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(cfg.delim)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct FileAccess_get_as_text_Cfg {
pub:
	skip_cr bool
}

pub fn (s &FileAccess) get_as_text(cfg FileAccess_get_as_text_Cfg) string {
	mut result := String{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_as_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1162154673)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.skip_cr)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn FileAccess.get_md5(path string) string {
	mut result := String{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_md5")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn FileAccess.get_sha256(path string) string {
	mut result := String{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_sha256")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &FileAccess) is_big_endian() bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("is_big_endian")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) set_big_endian(big_endian bool) {
	classname := StringName.new("FileAccess")
	fnname := StringName.new("set_big_endian")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&big_endian)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FileAccess) get_error() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_error")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3185525595)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct FileAccess_get_var_Cfg {
pub:
	allow_objects bool
}

pub fn (s &FileAccess) get_var(cfg FileAccess_get_var_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_var")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 189129690)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.allow_objects)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) store_8(value i64) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_8")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) store_16(value i64) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_16")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) store_32(value i64) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_32")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) store_64(value i64) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_64")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) store_half(value f64) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_half")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 330693286)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) store_float(value f64) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_float")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 330693286)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) store_double(value f64) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_double")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 330693286)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) store_real(value f64) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_real")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 330693286)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) store_buffer(buffer PackedByteArray) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 114037665)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) store_line(line string) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(line)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct FileAccess_store_csv_line_Cfg {
pub:
	delim string
}

pub fn (s &FileAccess) store_csv_line(values PackedStringArray, cfg FileAccess_store_csv_line_Cfg) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_csv_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611473434)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&values)}
	arg_sn1 := String.new(cfg.delim)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) store_string(gd_string string) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct FileAccess_store_var_Cfg {
pub:
	full_objects bool
}

pub fn (s &FileAccess) store_var(value Variant, cfg FileAccess_store_var_Cfg) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_var")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 117357437)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	args[1] = unsafe{voidptr(&cfg.full_objects)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) store_pascal_string(gd_string string) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("store_pascal_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FileAccess) get_pascal_string() string {
	mut result := String{}
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_pascal_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &FileAccess) close() {
	classname := StringName.new("FileAccess")
	fnname := StringName.new("close")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn FileAccess.file_exists(path string) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("file_exists")
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

pub fn FileAccess.get_modified_time(file string) i64 {
	mut result := i64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_modified_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1597066294)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn FileAccess.get_access_time(file string) i64 {
	mut result := i64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_access_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1597066294)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn FileAccess.get_size(file string) i64 {
	mut result := i64(0)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1597066294)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn FileAccess.get_unix_permissions(file string) FileAccessUnixPermissionFlags {
	mut result := i64(FileAccessUnixPermissionFlags.unix_read_owner)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_unix_permissions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 524341837)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{FileAccessUnixPermissionFlags(result)}
}

pub fn FileAccess.set_unix_permissions(file string, permissions FileAccessUnixPermissionFlags) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("set_unix_permissions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 846038644)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_permissions := i64(permissions)
	args[1] = unsafe{voidptr(&i64_permissions)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn FileAccess.get_hidden_attribute(file string) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_hidden_attribute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn FileAccess.set_hidden_attribute(file string, hidden bool) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("set_hidden_attribute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2892558115)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&hidden)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn FileAccess.set_read_only_attribute(file string, ro bool) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("FileAccess")
	fnname := StringName.new("set_read_only_attribute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2892558115)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&ro)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn FileAccess.get_read_only_attribute(file string) bool {
	mut result := false
	classname := StringName.new("FileAccess")
	fnname := StringName.new("get_read_only_attribute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
