module gd

pub enum ZIPPackerZipAppend as i64 {
	append_create = 0
	append_createafter = 1
	append_addinzip = 2
}

pub struct ZIPPacker {
	RefCounted
}

pub fn (s &ZIPPacker) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ZIPPacker) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct ZIPPacker_open_Cfg {
pub:
	append ZIPPackerZipAppend
}

pub fn (s &ZIPPacker) open(path string, cfg ZIPPacker_open_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ZIPPacker")
	fnname := StringName.new("open")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1936816515)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_append := i64(cfg.append)
	args[1] = unsafe{voidptr(&i64_append)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ZIPPacker) start_file(path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ZIPPacker")
	fnname := StringName.new("start_file")
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

pub fn (s &ZIPPacker) write_file(data PackedByteArray) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ZIPPacker")
	fnname := StringName.new("write_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ZIPPacker) close_file() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ZIPPacker")
	fnname := StringName.new("close_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ZIPPacker) close() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ZIPPacker")
	fnname := StringName.new("close")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}
