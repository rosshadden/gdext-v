module gd

pub struct StreamPeer {
	RefCounted
}

pub fn (s &StreamPeer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s StreamPeer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &StreamPeer) put_data(data PackedByteArray) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &StreamPeer) put_partial_data(data PackedByteArray) Array {
	mut result := Array{}
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_partial_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2934048347)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_data(bytes i64) Array {
	mut result := Array{}
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171824711)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bytes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_partial_data(bytes i64) Array {
	mut result := Array{}
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_partial_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171824711)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bytes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_available_bytes() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_available_bytes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) set_big_endian(enable bool) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("set_big_endian")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) is_big_endian_enabled() bool {
	mut result := false
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("is_big_endian_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) put_8(value i64) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_8")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) put_u8(value i64) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_u8")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) put_16(value i64) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_16")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) put_u16(value i64) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_u16")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) put_32(value i64) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_32")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) put_u32(value i64) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_u32")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) put_64(value i64) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_64")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) put_u64(value i64) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_u64")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) put_half(value f64) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_half")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) put_float(value f64) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_float")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) put_double(value f64) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_double")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) put_string(value string) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(value)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) put_utf8_string(value string) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_utf8_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(value)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct StreamPeer_put_var_Cfg {
pub:
	full_objects bool
}

pub fn (s &StreamPeer) put_var(value Variant, cfg StreamPeer_put_var_Cfg) {
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("put_var")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 738511890)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	args[1] = unsafe{voidptr(&cfg.full_objects)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeer) get_8() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_8")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_u8() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_u8")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_16() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_16")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_u16() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_u16")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_32() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_32")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_u32() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_u32")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_64() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_64")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_u64() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_u64")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_half() f64 {
	mut result := f64(0)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_half")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_float() f64 {
	mut result := f64(0)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_float")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeer) get_double() f64 {
	mut result := f64(0)
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_double")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct StreamPeer_get_string_Cfg {
pub:
	bytes i64
}

pub fn (s &StreamPeer) get_string(cfg StreamPeer_get_string_Cfg) string {
	mut result := String{}
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2309358862)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.bytes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct StreamPeer_get_utf8_string_Cfg {
pub:
	bytes i64
}

pub fn (s &StreamPeer) get_utf8_string(cfg StreamPeer_get_utf8_string_Cfg) string {
	mut result := String{}
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_utf8_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2309358862)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.bytes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct StreamPeer_get_var_Cfg {
pub:
	allow_objects bool
}

pub fn (s &StreamPeer) get_var(cfg StreamPeer_get_var_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("StreamPeer")
	fnname := StringName.new("get_var")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3442865206)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.allow_objects)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
