module gd

pub enum AESContextMode as i64 {
	mode_ecb_encrypt = 0
	mode_ecb_decrypt = 1
	mode_cbc_encrypt = 2
	mode_cbc_decrypt = 3
	mode_max = 4
}

pub struct AESContext {
	RefCounted
}

pub fn (s &AESContext) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AESContext) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct AESContext_start_Cfg {
pub:
	iv PackedByteArray
}

pub fn (s &AESContext) start(mode AESContextMode, key PackedByteArray, cfg AESContext_start_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("AESContext")
	fnname := StringName.new("start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3122411423)
	mut args := unsafe { [3]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	args[1] = unsafe{voidptr(&key)}
	args[2] = unsafe{voidptr(&cfg.iv)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &AESContext) update(src PackedByteArray) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("AESContext")
	fnname := StringName.new("update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 527836100)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&src)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AESContext) get_iv_state() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("AESContext")
	fnname := StringName.new("get_iv_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AESContext) finish() {
	classname := StringName.new("AESContext")
	fnname := StringName.new("finish")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
