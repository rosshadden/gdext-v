module gd

pub struct PacketPeer {
	RefCounted
}

pub fn (s &PacketPeer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PacketPeer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct PacketPeer_get_var_Cfg {
pub:
	allow_objects bool
}

pub fn (s &PacketPeer) get_var(cfg PacketPeer_get_var_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("PacketPeer")
	fnname := StringName.new("get_var")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3442865206)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.allow_objects)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PacketPeer_put_var_Cfg {
pub:
	full_objects bool
}

pub fn (s &PacketPeer) put_var(var Variant, cfg PacketPeer_put_var_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PacketPeer")
	fnname := StringName.new("put_var")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2436251611)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&var)}
	args[1] = unsafe{voidptr(&cfg.full_objects)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &PacketPeer) get_packet() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("PacketPeer")
	fnname := StringName.new("get_packet")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PacketPeer) put_packet(buffer PackedByteArray) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PacketPeer")
	fnname := StringName.new("put_packet")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &PacketPeer) get_packet_error() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PacketPeer")
	fnname := StringName.new("get_packet_error")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3185525595)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &PacketPeer) get_available_packet_count() i64 {
	mut result := i64(0)
	classname := StringName.new("PacketPeer")
	fnname := StringName.new("get_available_packet_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PacketPeer) get_encode_buffer_max_size() i64 {
	mut result := i64(0)
	classname := StringName.new("PacketPeer")
	fnname := StringName.new("get_encode_buffer_max_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PacketPeer) set_encode_buffer_max_size(max_size i64) {
	classname := StringName.new("PacketPeer")
	fnname := StringName.new("set_encode_buffer_max_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
