module gd

pub struct TLSOptions {
	RefCounted
}

pub fn (s &TLSOptions) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TLSOptions) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct TLSOptions_client_Cfg {
pub:
	trusted_chain X509Certificate
	common_name_override string
}

pub fn TLSOptions.client(cfg TLSOptions_client_Cfg) TLSOptions {
	mut result := TLSOptions{}
	classname := StringName.new("TLSOptions")
	fnname := StringName.new("client")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3565000357)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&cfg.trusted_chain.ptr)
	arg_sn1 := String.new(cfg.common_name_override)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct TLSOptions_client_unsafe_Cfg {
pub:
	trusted_chain X509Certificate
}

pub fn TLSOptions.client_unsafe(cfg TLSOptions_client_unsafe_Cfg) TLSOptions {
	mut result := TLSOptions{}
	classname := StringName.new("TLSOptions")
	fnname := StringName.new("client_unsafe")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2090251749)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&cfg.trusted_chain.ptr)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn TLSOptions.server(key CryptoKey, certificate X509Certificate) TLSOptions {
	mut result := TLSOptions{}
	classname := StringName.new("TLSOptions")
	fnname := StringName.new("server")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36969539)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&key.ptr)
	args[1] = voidptr(&certificate.ptr)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TLSOptions) is_server() bool {
	mut result := false
	classname := StringName.new("TLSOptions")
	fnname := StringName.new("is_server")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TLSOptions) is_unsafe_client() bool {
	mut result := false
	classname := StringName.new("TLSOptions")
	fnname := StringName.new("is_unsafe_client")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TLSOptions) get_common_name_override() string {
	mut result := String{}
	classname := StringName.new("TLSOptions")
	fnname := StringName.new("get_common_name_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TLSOptions) get_trusted_ca_chain() X509Certificate {
	mut result := X509Certificate{}
	classname := StringName.new("TLSOptions")
	fnname := StringName.new("get_trusted_ca_chain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120709175)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TLSOptions) get_private_key() CryptoKey {
	mut result := CryptoKey{}
	classname := StringName.new("TLSOptions")
	fnname := StringName.new("get_private_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2119971811)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TLSOptions) get_own_certificate() X509Certificate {
	mut result := X509Certificate{}
	classname := StringName.new("TLSOptions")
	fnname := StringName.new("get_own_certificate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120709175)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
