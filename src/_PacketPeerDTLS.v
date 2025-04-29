module gd

pub enum PacketPeerDTLSStatus as i64 {
	status_disconnected = 0
	status_handshaking = 1
	status_connected = 2
	status_error = 3
	status_error_hostname_mismatch = 4
}

pub struct PacketPeerDTLS {
	PacketPeer
}

pub fn (s &PacketPeerDTLS) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PacketPeerDTLS) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PacketPeerDTLS) poll() {
	classname := StringName.new("PacketPeerDTLS")
	fnname := StringName.new("poll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PacketPeerDTLS_connect_to_peer_Cfg {
pub:
	client_options TLSOptions
}

pub fn (s &PacketPeerDTLS) connect_to_peer(packet_peer PacketPeerUDP, hostname string, cfg PacketPeerDTLS_connect_to_peer_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PacketPeerDTLS")
	fnname := StringName.new("connect_to_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2880188099)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&packet_peer.ptr)
	arg_sn1 := String.new(hostname)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = voidptr(&cfg.client_options.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &PacketPeerDTLS) get_status() PacketPeerDTLSStatus {
	mut result := i64(PacketPeerDTLSStatus.status_disconnected)
	classname := StringName.new("PacketPeerDTLS")
	fnname := StringName.new("get_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3248654679)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{PacketPeerDTLSStatus(result)}
}

pub fn (s &PacketPeerDTLS) disconnect_from_peer() {
	classname := StringName.new("PacketPeerDTLS")
	fnname := StringName.new("disconnect_from_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
