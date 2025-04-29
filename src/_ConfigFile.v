module gd

pub struct ConfigFile {
	RefCounted
}

pub fn (s &ConfigFile) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ConfigFile) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ConfigFile) set_value(section string, key string, value Variant) {
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("set_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2504492430)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(section)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(key)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct ConfigFile_get_value_Cfg {
pub:
	default Variant
}

pub fn (s &ConfigFile) get_value(section string, key string, cfg ConfigFile_get_value_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("get_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 89809366)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(section)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(key)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.default)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ConfigFile) has_section(section string) bool {
	mut result := false
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("has_section")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(section)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ConfigFile) has_section_key(section string, key string) bool {
	mut result := false
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("has_section_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 820780508)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(section)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(key)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ConfigFile) get_sections() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("get_sections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ConfigFile) get_section_keys(section string) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("get_section_keys")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(section)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ConfigFile) erase_section(section string) {
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("erase_section")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(section)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ConfigFile) erase_section_key(section string, key string) {
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("erase_section_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(section)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(key)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ConfigFile) load(path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("load")
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

pub fn (s &ConfigFile) parse(data string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("parse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(data)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ConfigFile) save(path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("save")
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

pub fn (s &ConfigFile) encode_to_text() string {
	mut result := String{}
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("encode_to_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ConfigFile) load_encrypted(path string, key PackedByteArray) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("load_encrypted")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 887037711)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&key)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ConfigFile) load_encrypted_pass(path string, password string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("load_encrypted_pass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(password)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ConfigFile) save_encrypted(path string, key PackedByteArray) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("save_encrypted")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 887037711)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&key)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ConfigFile) save_encrypted_pass(path string, password string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("save_encrypted_pass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(password)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ConfigFile) clear() {
	classname := StringName.new("ConfigFile")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
