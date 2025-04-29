module gd

pub enum WebSocketPeerWriteMode as i64 {
	write_mode_text = 0
	write_mode_binary = 1
}

pub enum WebSocketPeerState as i64 {
	state_connecting = 0
	state_open = 1
	state_closing = 2
	state_closed = 3
}

pub struct WebSocketPeer {
	PacketPeer
}

pub fn (s &WebSocketPeer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s WebSocketPeer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct WebSocketPeer_connect_to_url_Cfg {
pub:
	tls_client_options TLSOptions
}

pub fn (s &WebSocketPeer) connect_to_url(url string, cfg WebSocketPeer_connect_to_url_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("connect_to_url")
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

pub fn (s &WebSocketPeer) accept_stream(stream StreamPeer) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("accept_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 255125695)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&stream.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct WebSocketPeer_send_Cfg {
pub:
	write_mode WebSocketPeerWriteMode
}

pub fn (s &WebSocketPeer) send(message PackedByteArray, cfg WebSocketPeer_send_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("send")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2780360567)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&message)}
	i64_write_mode := i64(cfg.write_mode)
	args[1] = unsafe{voidptr(&i64_write_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &WebSocketPeer) send_text(message string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("send_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &WebSocketPeer) was_string_packet() bool {
	mut result := false
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("was_string_packet")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketPeer) poll() {
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("poll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct WebSocketPeer_close_Cfg {
pub:
	code i64
	reason string
}

pub fn (s &WebSocketPeer) close(cfg WebSocketPeer_close_Cfg) {
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("close")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1047156615)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.code)}
	arg_sn1 := String.new(cfg.reason)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketPeer) get_connected_host() string {
	mut result := String{}
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_connected_host")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebSocketPeer) get_connected_port() i64 {
	mut result := i64(0)
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_connected_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketPeer) get_selected_protocol() string {
	mut result := String{}
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_selected_protocol")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebSocketPeer) get_requested_url() string {
	mut result := String{}
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_requested_url")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebSocketPeer) set_no_delay(enabled bool) {
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("set_no_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketPeer) get_current_outbound_buffered_amount() i64 {
	mut result := i64(0)
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_current_outbound_buffered_amount")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketPeer) get_ready_state() WebSocketPeerState {
	mut result := i64(WebSocketPeerState.state_connecting)
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_ready_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 346482985)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{WebSocketPeerState(result)}
}

pub fn (s &WebSocketPeer) get_close_code() i64 {
	mut result := i64(0)
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_close_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketPeer) get_close_reason() string {
	mut result := String{}
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_close_reason")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebSocketPeer) get_supported_protocols() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_supported_protocols")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketPeer) set_supported_protocols(protocols PackedStringArray) {
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("set_supported_protocols")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&protocols)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketPeer) get_handshake_headers() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_handshake_headers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketPeer) set_handshake_headers(protocols PackedStringArray) {
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("set_handshake_headers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&protocols)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketPeer) get_inbound_buffer_size() i64 {
	mut result := i64(0)
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_inbound_buffer_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketPeer) set_inbound_buffer_size(buffer_size i64) {
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("set_inbound_buffer_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketPeer) get_outbound_buffer_size() i64 {
	mut result := i64(0)
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_outbound_buffer_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketPeer) set_outbound_buffer_size(buffer_size i64) {
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("set_outbound_buffer_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketPeer) set_max_queued_packets(buffer_size i64) {
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("set_max_queued_packets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketPeer) get_max_queued_packets() i64 {
	mut result := i64(0)
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_max_queued_packets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebSocketPeer) set_heartbeat_interval(interval f64) {
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("set_heartbeat_interval")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&interval)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebSocketPeer) get_heartbeat_interval() f64 {
	mut result := f64(0)
	classname := StringName.new("WebSocketPeer")
	fnname := StringName.new("get_heartbeat_interval")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
