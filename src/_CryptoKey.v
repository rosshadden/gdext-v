module gd

pub struct CryptoKey {
	Resource
}

pub fn (s &CryptoKey) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CryptoKey) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct CryptoKey_save_Cfg {
pub:
	public_only bool
}

pub fn (s &CryptoKey) save(path string, cfg CryptoKey_save_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("CryptoKey")
	fnname := StringName.new("save")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 885841341)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.public_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct CryptoKey_load_Cfg {
pub:
	public_only bool
}

pub fn (s &CryptoKey) load(path string, cfg CryptoKey_load_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("CryptoKey")
	fnname := StringName.new("load")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 885841341)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.public_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &CryptoKey) is_public_only() bool {
	mut result := false
	classname := StringName.new("CryptoKey")
	fnname := StringName.new("is_public_only")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct CryptoKey_save_to_string_Cfg {
pub:
	public_only bool
}

pub fn (s &CryptoKey) save_to_string(cfg CryptoKey_save_to_string_Cfg) string {
	mut result := String{}
	classname := StringName.new("CryptoKey")
	fnname := StringName.new("save_to_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 32795936)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.public_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct CryptoKey_load_from_string_Cfg {
pub:
	public_only bool
}

pub fn (s &CryptoKey) load_from_string(string_key string, cfg CryptoKey_load_from_string_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("CryptoKey")
	fnname := StringName.new("load_from_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 885841341)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(string_key)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.public_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}
