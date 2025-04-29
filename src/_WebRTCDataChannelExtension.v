module gd

pub struct WebRTCDataChannelExtension {
	WebRTCDataChannel
}

pub fn (s &WebRTCDataChannelExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s WebRTCDataChannelExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IWebRTCDataChannelExtensionGetPacket {
mut:
	get_packet_(r_buffer &&u8 , r_buffer_size &i32) GDError
}

pub fn (s &WebRTCDataChannelExtension) gd_get_packet(r_buffer &&u8 , r_buffer_size &i32) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_get_packet")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3099858825)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&r_buffer)}
	args[1] = unsafe{voidptr(&r_buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IWebRTCDataChannelExtensionPutPacket {
mut:
	put_packet_(p_buffer &u8, p_buffer_size i64) GDError
}

pub fn (s &WebRTCDataChannelExtension) gd_put_packet(p_buffer &u8, p_buffer_size i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_put_packet")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3099858825)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&p_buffer)}
	args[1] = unsafe{voidptr(&p_buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IWebRTCDataChannelExtensionGetAvailablePacketCount {
mut:
	get_available_packet_count_() i64
}

pub fn (s &WebRTCDataChannelExtension) gd_get_available_packet_count() i64 {
	mut result := i64(0)
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_get_available_packet_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IWebRTCDataChannelExtensionGetMaxPacketSize {
mut:
	get_max_packet_size_() i64
}

pub fn (s &WebRTCDataChannelExtension) gd_get_max_packet_size() i64 {
	mut result := i64(0)
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_get_max_packet_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IWebRTCDataChannelExtensionPoll {
mut:
	poll_() GDError
}

pub fn (s &WebRTCDataChannelExtension) gd_poll() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_poll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IWebRTCDataChannelExtensionClose {
mut:
	close_()
}

pub fn (s &WebRTCDataChannelExtension) gd_close() {
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_close")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IWebRTCDataChannelExtensionSetWriteMode {
mut:
	set_write_mode_(p_write_mode WebRTCDataChannelWriteMode)
}

pub fn (s &WebRTCDataChannelExtension) gd_set_write_mode(p_write_mode WebRTCDataChannelWriteMode) {
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_set_write_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1999768052)
	mut args := unsafe { [1]voidptr{} }
	i64_p_write_mode := i64(p_write_mode)
	args[0] = unsafe{voidptr(&i64_p_write_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IWebRTCDataChannelExtensionGetWriteMode {
mut:
	get_write_mode_() WebRTCDataChannelWriteMode
}

pub fn (s &WebRTCDataChannelExtension) gd_get_write_mode() WebRTCDataChannelWriteMode {
	mut result := i64(WebRTCDataChannelWriteMode.write_mode_text)
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_get_write_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2848495172)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{WebRTCDataChannelWriteMode(result)}
}

pub interface IWebRTCDataChannelExtensionWasStringPacket {
mut:
	was_string_packet_() bool
}

pub fn (s &WebRTCDataChannelExtension) gd_was_string_packet() bool {
	mut result := false
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_was_string_packet")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IWebRTCDataChannelExtensionGetReadyState {
mut:
	get_ready_state_() WebRTCDataChannelChannelState
}

pub fn (s &WebRTCDataChannelExtension) gd_get_ready_state() WebRTCDataChannelChannelState {
	mut result := i64(WebRTCDataChannelChannelState.state_connecting)
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_get_ready_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3501143017)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{WebRTCDataChannelChannelState(result)}
}

pub interface IWebRTCDataChannelExtensionGetLabel {
mut:
	get_label_() String
}

pub fn (s &WebRTCDataChannelExtension) gd_get_label() string {
	mut result := String{}
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_get_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IWebRTCDataChannelExtensionIsOrdered {
mut:
	is_ordered_() bool
}

pub fn (s &WebRTCDataChannelExtension) gd_is_ordered() bool {
	mut result := false
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_is_ordered")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IWebRTCDataChannelExtensionGetId {
mut:
	get_id_() i64
}

pub fn (s &WebRTCDataChannelExtension) gd_get_id() i64 {
	mut result := i64(0)
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_get_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IWebRTCDataChannelExtensionGetMaxPacketLifeTime {
mut:
	get_max_packet_life_time_() i64
}

pub fn (s &WebRTCDataChannelExtension) gd_get_max_packet_life_time() i64 {
	mut result := i64(0)
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_get_max_packet_life_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IWebRTCDataChannelExtensionGetMaxRetransmits {
mut:
	get_max_retransmits_() i64
}

pub fn (s &WebRTCDataChannelExtension) gd_get_max_retransmits() i64 {
	mut result := i64(0)
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_get_max_retransmits")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IWebRTCDataChannelExtensionGetProtocol {
mut:
	get_protocol_() String
}

pub fn (s &WebRTCDataChannelExtension) gd_get_protocol() string {
	mut result := String{}
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_get_protocol")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IWebRTCDataChannelExtensionIsNegotiated {
mut:
	is_negotiated_() bool
}

pub fn (s &WebRTCDataChannelExtension) gd_is_negotiated() bool {
	mut result := false
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_is_negotiated")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IWebRTCDataChannelExtensionGetBufferedAmount {
mut:
	get_buffered_amount_() i64
}

pub fn (s &WebRTCDataChannelExtension) gd_get_buffered_amount() i64 {
	mut result := i64(0)
	classname := StringName.new("WebRTCDataChannelExtension")
	fnname := StringName.new("_get_buffered_amount")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
