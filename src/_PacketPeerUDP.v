module gd

pub struct PacketPeerUDP {
	PacketPeer
}

pub fn (s &PacketPeerUDP) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PacketPeerUDP) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct PacketPeerUDP_bind_Cfg {
pub:
	bind_address string
	recv_buf_size i64
}

pub fn (s &PacketPeerUDP) bind(port i64, cfg PacketPeerUDP_bind_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("bind")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051239242)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	arg_sn1 := String.new(cfg.bind_address)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.recv_buf_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &PacketPeerUDP) close() {
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("close")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PacketPeerUDP) wait() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("wait")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &PacketPeerUDP) is_bound() bool {
	mut result := false
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("is_bound")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PacketPeerUDP) connect_to_host(host string, port i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("connect_to_host")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 993915709)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(host)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &PacketPeerUDP) is_socket_connected() bool {
	mut result := false
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("is_socket_connected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PacketPeerUDP) get_packet_ip() string {
	mut result := String{}
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("get_packet_ip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &PacketPeerUDP) get_packet_port() i64 {
	mut result := i64(0)
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("get_packet_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PacketPeerUDP) get_local_port() i64 {
	mut result := i64(0)
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("get_local_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PacketPeerUDP) set_dest_address(host string, port i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("set_dest_address")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 993915709)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(host)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &PacketPeerUDP) set_broadcast_enabled(enabled bool) {
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("set_broadcast_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PacketPeerUDP) join_multicast_group(multicast_address string, interface_name string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("join_multicast_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(multicast_address)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(interface_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &PacketPeerUDP) leave_multicast_group(multicast_address string, interface_name string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PacketPeerUDP")
	fnname := StringName.new("leave_multicast_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(multicast_address)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(interface_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}
