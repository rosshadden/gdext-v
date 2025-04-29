module gd

pub struct Crypto {
	RefCounted
}

pub fn (s &Crypto) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Crypto) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Crypto) generate_random_bytes(size i64) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("Crypto")
	fnname := StringName.new("generate_random_bytes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 47165747)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Crypto) generate_rsa(size i64) CryptoKey {
	mut result := CryptoKey{}
	classname := StringName.new("Crypto")
	fnname := StringName.new("generate_rsa")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1237515462)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Crypto_generate_self_signed_certificate_Cfg {
pub:
	issuer_name string
	not_before string
	not_after string
}

pub fn (s &Crypto) generate_self_signed_certificate(key CryptoKey, cfg Crypto_generate_self_signed_certificate_Cfg) X509Certificate {
	mut result := X509Certificate{}
	classname := StringName.new("Crypto")
	fnname := StringName.new("generate_self_signed_certificate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 492266173)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&key.ptr)
	arg_sn1 := String.new(cfg.issuer_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := String.new(cfg.not_before)
	args[2] = unsafe{voidptr(&arg_sn2)}
	arg_sn3 := String.new(cfg.not_after)
	args[3] = unsafe{voidptr(&arg_sn3)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	arg_sn2.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Crypto) sign(hash_type HashingContextHashType, hash PackedByteArray, key CryptoKey) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("Crypto")
	fnname := StringName.new("sign")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1673662703)
	mut args := unsafe { [3]voidptr{} }
	i64_hash_type := i64(hash_type)
	args[0] = unsafe{voidptr(&i64_hash_type)}
	args[1] = unsafe{voidptr(&hash)}
	args[2] = voidptr(&key.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Crypto) verify(hash_type HashingContextHashType, hash PackedByteArray, signature PackedByteArray, key CryptoKey) bool {
	mut result := false
	classname := StringName.new("Crypto")
	fnname := StringName.new("verify")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2805902225)
	mut args := unsafe { [4]voidptr{} }
	i64_hash_type := i64(hash_type)
	args[0] = unsafe{voidptr(&i64_hash_type)}
	args[1] = unsafe{voidptr(&hash)}
	args[2] = unsafe{voidptr(&signature)}
	args[3] = voidptr(&key.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Crypto) encrypt(key CryptoKey, plaintext PackedByteArray) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("Crypto")
	fnname := StringName.new("encrypt")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2361793670)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&key.ptr)
	args[1] = unsafe{voidptr(&plaintext)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Crypto) decrypt(key CryptoKey, ciphertext PackedByteArray) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("Crypto")
	fnname := StringName.new("decrypt")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2361793670)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&key.ptr)
	args[1] = unsafe{voidptr(&ciphertext)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Crypto) hmac_digest(hash_type HashingContextHashType, key PackedByteArray, msg PackedByteArray) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("Crypto")
	fnname := StringName.new("hmac_digest")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2368951203)
	mut args := unsafe { [3]voidptr{} }
	i64_hash_type := i64(hash_type)
	args[0] = unsafe{voidptr(&i64_hash_type)}
	args[1] = unsafe{voidptr(&key)}
	args[2] = unsafe{voidptr(&msg)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Crypto) constant_time_compare(trusted PackedByteArray, received PackedByteArray) bool {
	mut result := false
	classname := StringName.new("Crypto")
	fnname := StringName.new("constant_time_compare")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1024142237)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&trusted)}
	args[1] = unsafe{voidptr(&received)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
