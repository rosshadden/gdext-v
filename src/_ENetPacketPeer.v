module gd

pub enum ENetPacketPeerPeerState as i64 {
	state_disconnected = 0
	state_connecting = 1
	state_acknowledging_connect = 2
	state_connection_pending = 3
	state_connection_succeeded = 4
	state_connected = 5
	state_disconnect_later = 6
	state_disconnecting = 7
	state_acknowledging_disconnect = 8
	state_zombie = 9
}

pub enum ENetPacketPeerPeerStatistic as i64 {
	peer_packet_loss = 0
	peer_packet_loss_variance = 1
	peer_packet_loss_epoch = 2
	peer_round_trip_time = 3
	peer_round_trip_time_variance = 4
	peer_last_round_trip_time = 5
	peer_last_round_trip_time_variance = 6
	peer_packet_throttle = 7
	peer_packet_throttle_limit = 8
	peer_packet_throttle_counter = 9
	peer_packet_throttle_epoch = 10
	peer_packet_throttle_acceleration = 11
	peer_packet_throttle_deceleration = 12
	peer_packet_throttle_interval = 13
}

pub struct ENetPacketPeer {
	PacketPeer
}

pub fn (s &ENetPacketPeer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ENetPacketPeer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct ENetPacketPeer_peer_disconnect_Cfg {
pub:
	data i64
}

pub fn (s &ENetPacketPeer) peer_disconnect(cfg ENetPacketPeer_peer_disconnect_Cfg) {
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("peer_disconnect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct ENetPacketPeer_peer_disconnect_later_Cfg {
pub:
	data i64
}

pub fn (s &ENetPacketPeer) peer_disconnect_later(cfg ENetPacketPeer_peer_disconnect_later_Cfg) {
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("peer_disconnect_later")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct ENetPacketPeer_peer_disconnect_now_Cfg {
pub:
	data i64
}

pub fn (s &ENetPacketPeer) peer_disconnect_now(cfg ENetPacketPeer_peer_disconnect_now_Cfg) {
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("peer_disconnect_now")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ENetPacketPeer) ping() {
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("ping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ENetPacketPeer) ping_interval(ping_interval i64) {
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("ping_interval")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ping_interval)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ENetPacketPeer) reset() {
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("reset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ENetPacketPeer) send(channel i64, packet PackedByteArray, flags i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("send")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 120522849)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&channel)}
	args[1] = unsafe{voidptr(&packet)}
	args[2] = unsafe{voidptr(&flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ENetPacketPeer) throttle_configure(interval i64, acceleration i64, deceleration i64) {
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("throttle_configure")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1649997291)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&interval)}
	args[1] = unsafe{voidptr(&acceleration)}
	args[2] = unsafe{voidptr(&deceleration)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ENetPacketPeer) set_timeout(timeout i64, timeout_min i64, timeout_max i64) {
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("set_timeout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1649997291)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&timeout)}
	args[1] = unsafe{voidptr(&timeout_min)}
	args[2] = unsafe{voidptr(&timeout_max)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ENetPacketPeer) get_packet_flags() i64 {
	mut result := i64(0)
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("get_packet_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ENetPacketPeer) get_remote_address() string {
	mut result := String{}
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("get_remote_address")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ENetPacketPeer) get_remote_port() i64 {
	mut result := i64(0)
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("get_remote_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ENetPacketPeer) get_statistic(statistic ENetPacketPeerPeerStatistic) f64 {
	mut result := f64(0)
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("get_statistic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1642578323)
	mut args := unsafe { [1]voidptr{} }
	i64_statistic := i64(statistic)
	args[0] = unsafe{voidptr(&i64_statistic)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ENetPacketPeer) get_state() ENetPacketPeerPeerState {
	mut result := i64(ENetPacketPeerPeerState.state_disconnected)
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("get_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711068532)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ENetPacketPeerPeerState(result)}
}

pub fn (s &ENetPacketPeer) get_channels() i64 {
	mut result := i64(0)
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("get_channels")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ENetPacketPeer) is_active() bool {
	mut result := false
	classname := StringName.new("ENetPacketPeer")
	fnname := StringName.new("is_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
