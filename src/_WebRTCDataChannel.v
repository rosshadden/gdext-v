module gd

pub enum WebRTCDataChannelWriteMode as i64 {
	write_mode_text = 0
	write_mode_binary = 1
}

pub enum WebRTCDataChannelChannelState as i64 {
	state_connecting = 0
	state_open = 1
	state_closing = 2
	state_closed = 3
}

pub struct WebRTCDataChannel {
	PacketPeer
}

pub fn (s &WebRTCDataChannel) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s WebRTCDataChannel) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &WebRTCDataChannel) poll() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("poll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &WebRTCDataChannel) close() {
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("close")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebRTCDataChannel) was_string_packet() bool {
	mut result := false
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("was_string_packet")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebRTCDataChannel) set_write_mode(write_mode WebRTCDataChannelWriteMode) {
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("set_write_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1999768052)
	mut args := unsafe { [1]voidptr{} }
	i64_write_mode := i64(write_mode)
	args[0] = unsafe{voidptr(&i64_write_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebRTCDataChannel) get_write_mode() WebRTCDataChannelWriteMode {
	mut result := i64(WebRTCDataChannelWriteMode.write_mode_text)
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("get_write_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2848495172)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{WebRTCDataChannelWriteMode(result)}
}

pub fn (s &WebRTCDataChannel) get_ready_state() WebRTCDataChannelChannelState {
	mut result := i64(WebRTCDataChannelChannelState.state_connecting)
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("get_ready_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3501143017)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{WebRTCDataChannelChannelState(result)}
}

pub fn (s &WebRTCDataChannel) get_label() string {
	mut result := String{}
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("get_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebRTCDataChannel) is_ordered() bool {
	mut result := false
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("is_ordered")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebRTCDataChannel) get_id() i64 {
	mut result := i64(0)
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("get_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebRTCDataChannel) get_max_packet_life_time() i64 {
	mut result := i64(0)
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("get_max_packet_life_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebRTCDataChannel) get_max_retransmits() i64 {
	mut result := i64(0)
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("get_max_retransmits")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebRTCDataChannel) get_protocol() string {
	mut result := String{}
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("get_protocol")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebRTCDataChannel) is_negotiated() bool {
	mut result := false
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("is_negotiated")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebRTCDataChannel) get_buffered_amount() i64 {
	mut result := i64(0)
	classname := StringName.new("WebRTCDataChannel")
	fnname := StringName.new("get_buffered_amount")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
