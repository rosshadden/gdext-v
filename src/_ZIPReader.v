module gd

pub struct ZIPReader {
	RefCounted
}

pub fn (s &ZIPReader) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ZIPReader) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ZIPReader) open(path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ZIPReader")
	fnname := StringName.new("open")
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

pub fn (s &ZIPReader) close() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ZIPReader")
	fnname := StringName.new("close")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ZIPReader) get_files() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ZIPReader")
	fnname := StringName.new("get_files")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ZIPReader_read_file_Cfg {
pub:
	case_sensitive bool
}

pub fn (s &ZIPReader) read_file(path string, cfg ZIPReader_read_file_Cfg) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("ZIPReader")
	fnname := StringName.new("read_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 740857591)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.case_sensitive)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ZIPReader_file_exists_Cfg {
pub:
	case_sensitive bool
}

pub fn (s &ZIPReader) file_exists(path string, cfg ZIPReader_file_exists_Cfg) bool {
	mut result := false
	classname := StringName.new("ZIPReader")
	fnname := StringName.new("file_exists")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 35364943)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.case_sensitive)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
