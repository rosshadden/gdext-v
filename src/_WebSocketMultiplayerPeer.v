module gd

pub struct WebSocketMultiplayerPeer {
	MultiplayerPeer
}

pub fn (s &WebSocketMultiplayerPeer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s WebSocketMultiplayerPeer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct WebSocketMultiplayerPeer_create_client_Cfg {
pub:
	tls_client_options TLSOptions
}

pub fn (s &WebSocketMultiplayerPeer) create_client(url string, cfg WebSocketMultiplayerPeer_create_client_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("create_client")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1966198364)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(url)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&cfg.tls_client_options.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct WebSocketMultiplayerPeer_create_server_Cfg {
pub:
	bind_address string
	tls_server_options TLSOptions
}

pub fn (s &WebSocketMultiplayerPeer) create_server(port i64, cfg WebSocketMultiplayerPeer_create_server_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("create_server")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2400822951)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	arg_sn1 := String.new(cfg.bind_address)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = voidptr(&cfg.tls_server_options.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &WebSocketMultiplayerPeer) get_peer(peer_id i64) WebSocketPeer {
	mut result := WebSocketPeer{}
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("get_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1381378851)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&peer_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketMultiplayerPeer) get_peer_address(id i64) string {
	mut result := String{}
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("get_peer_address")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebSocketMultiplayerPeer) get_peer_port(id i64) i64 {
	mut result := i64(0)
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("get_peer_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketMultiplayerPeer) get_supported_protocols() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("get_supported_protocols")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketMultiplayerPeer) set_supported_protocols(protocols PackedStringArray) {
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("set_supported_protocols")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&protocols)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketMultiplayerPeer) get_handshake_headers() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("get_handshake_headers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketMultiplayerPeer) set_handshake_headers(protocols PackedStringArray) {
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("set_handshake_headers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&protocols)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketMultiplayerPeer) get_inbound_buffer_size() i64 {
	mut result := i64(0)
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("get_inbound_buffer_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketMultiplayerPeer) set_inbound_buffer_size(buffer_size i64) {
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("set_inbound_buffer_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketMultiplayerPeer) get_outbound_buffer_size() i64 {
	mut result := i64(0)
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("get_outbound_buffer_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketMultiplayerPeer) set_outbound_buffer_size(buffer_size i64) {
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("set_outbound_buffer_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketMultiplayerPeer) get_handshake_timeout() f64 {
	mut result := f64(0)
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("get_handshake_timeout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketMultiplayerPeer) set_handshake_timeout(timeout f64) {
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("set_handshake_timeout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&timeout)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketMultiplayerPeer) set_max_queued_packets(max_queued_packets i64) {
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("set_max_queued_packets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_queued_packets)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketMultiplayerPeer) get_max_queued_packets() i64 {
	mut result := i64(0)
	classname := StringName.new("WebSocketMultiplayerPeer")
	fnname := StringName.new("get_max_queued_packets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
