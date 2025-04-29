module gd

pub struct MultiplayerPeerExtension {
	MultiplayerPeer
}

pub fn (s &MultiplayerPeerExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MultiplayerPeerExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IMultiplayerPeerExtensionGetPacket {
mut:
	get_packet_(r_buffer &&u8 , r_buffer_size &i32) GDError
}

pub fn (s &MultiplayerPeerExtension) gd_get_packet(r_buffer &&u8 , r_buffer_size &i32) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MultiplayerPeerExtension")
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

pub interface IMultiplayerPeerExtensionPutPacket {
mut:
	put_packet_(p_buffer &u8, p_buffer_size i64) GDError
}

pub fn (s &MultiplayerPeerExtension) gd_put_packet(p_buffer &u8, p_buffer_size i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MultiplayerPeerExtension")
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

pub interface IMultiplayerPeerExtensionGetAvailablePacketCount {
mut:
	get_available_packet_count_() i64
}

pub fn (s &MultiplayerPeerExtension) gd_get_available_packet_count() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_get_available_packet_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerPeerExtensionGetMaxPacketSize {
mut:
	get_max_packet_size_() i64
}

pub fn (s &MultiplayerPeerExtension) gd_get_max_packet_size() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_get_max_packet_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerPeerExtensionGetPacketScript {
mut:
	get_packet_script_() PackedByteArray
}

pub fn (s &MultiplayerPeerExtension) gd_get_packet_script() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_get_packet_script")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerPeerExtensionPutPacketScript {
mut:
	put_packet_script_(p_buffer PackedByteArray) GDError
}

pub fn (s &MultiplayerPeerExtension) gd_put_packet_script(p_buffer PackedByteArray) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_put_packet_script")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_buffer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IMultiplayerPeerExtensionGetPacketChannel {
mut:
	get_packet_channel_() i64
}

pub fn (s &MultiplayerPeerExtension) gd_get_packet_channel() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_get_packet_channel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerPeerExtensionGetPacketMode {
mut:
	get_packet_mode_() MultiplayerPeerTransferMode
}

pub fn (s &MultiplayerPeerExtension) gd_get_packet_mode() MultiplayerPeerTransferMode {
	mut result := i64(MultiplayerPeerTransferMode.transfer_mode_unreliable)
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_get_packet_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3369852622)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MultiplayerPeerTransferMode(result)}
}

pub interface IMultiplayerPeerExtensionSetTransferChannel {
mut:
	set_transfer_channel_(p_channel i64)
}

pub fn (s &MultiplayerPeerExtension) gd_set_transfer_channel(p_channel i64) {
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_set_transfer_channel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_channel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IMultiplayerPeerExtensionGetTransferChannel {
mut:
	get_transfer_channel_() i64
}

pub fn (s &MultiplayerPeerExtension) gd_get_transfer_channel() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_get_transfer_channel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerPeerExtensionSetTransferMode {
mut:
	set_transfer_mode_(p_mode MultiplayerPeerTransferMode)
}

pub fn (s &MultiplayerPeerExtension) gd_set_transfer_mode(p_mode MultiplayerPeerTransferMode) {
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_set_transfer_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 950411049)
	mut args := unsafe { [1]voidptr{} }
	i64_p_mode := i64(p_mode)
	args[0] = unsafe{voidptr(&i64_p_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IMultiplayerPeerExtensionGetTransferMode {
mut:
	get_transfer_mode_() MultiplayerPeerTransferMode
}

pub fn (s &MultiplayerPeerExtension) gd_get_transfer_mode() MultiplayerPeerTransferMode {
	mut result := i64(MultiplayerPeerTransferMode.transfer_mode_unreliable)
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_get_transfer_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3369852622)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MultiplayerPeerTransferMode(result)}
}

pub interface IMultiplayerPeerExtensionSetTargetPeer {
mut:
	set_target_peer_(p_peer i64)
}

pub fn (s &MultiplayerPeerExtension) gd_set_target_peer(p_peer i64) {
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_set_target_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_peer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IMultiplayerPeerExtensionGetPacketPeer {
mut:
	get_packet_peer_() i64
}

pub fn (s &MultiplayerPeerExtension) gd_get_packet_peer() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_get_packet_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerPeerExtensionIsServer {
mut:
	is_server_() bool
}

pub fn (s &MultiplayerPeerExtension) gd_is_server() bool {
	mut result := false
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_is_server")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerPeerExtensionPoll {
mut:
	poll_()
}

pub fn (s &MultiplayerPeerExtension) gd_poll() {
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_poll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IMultiplayerPeerExtensionClose {
mut:
	close_()
}

pub fn (s &MultiplayerPeerExtension) gd_close() {
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_close")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IMultiplayerPeerExtensionDisconnectPeer {
mut:
	disconnect_peer_(p_peer i64, p_force bool)
}

pub fn (s &MultiplayerPeerExtension) gd_disconnect_peer(p_peer i64, p_force bool) {
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_disconnect_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&p_peer)}
	args[1] = unsafe{voidptr(&p_force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IMultiplayerPeerExtensionGetUniqueId {
mut:
	get_unique_id_() i64
}

pub fn (s &MultiplayerPeerExtension) gd_get_unique_id() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_get_unique_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerPeerExtensionSetRefuseNewConnections {
mut:
	set_refuse_new_connections_(p_enable bool)
}

pub fn (s &MultiplayerPeerExtension) gd_set_refuse_new_connections(p_enable bool) {
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_set_refuse_new_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IMultiplayerPeerExtensionIsRefusingNewConnections {
mut:
	is_refusing_new_connections_() bool
}

pub fn (s &MultiplayerPeerExtension) gd_is_refusing_new_connections() bool {
	mut result := false
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_is_refusing_new_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerPeerExtensionIsServerRelaySupported {
mut:
	is_server_relay_supported_() bool
}

pub fn (s &MultiplayerPeerExtension) gd_is_server_relay_supported() bool {
	mut result := false
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_is_server_relay_supported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerPeerExtensionGetConnectionStatus {
mut:
	get_connection_status_() MultiplayerPeerConnectionStatus
}

pub fn (s &MultiplayerPeerExtension) gd_get_connection_status() MultiplayerPeerConnectionStatus {
	mut result := i64(MultiplayerPeerConnectionStatus.connection_disconnected)
	classname := StringName.new("MultiplayerPeerExtension")
	fnname := StringName.new("_get_connection_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2147374275)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MultiplayerPeerConnectionStatus(result)}
}
