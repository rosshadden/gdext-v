module gd

pub enum StreamPeerTCPStatus as i64 {
	status_none = 0
	status_connecting = 1
	status_connected = 2
	status_error = 3
}

pub struct StreamPeerTCP {
	StreamPeer
}

pub fn (s &StreamPeerTCP) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s StreamPeerTCP) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct StreamPeerTCP_bind_Cfg {
pub:
	host string
}

pub fn (s &StreamPeerTCP) bind(port i64, cfg StreamPeerTCP_bind_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeerTCP")
	fnname := StringName.new("bind")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3167955072)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	arg_sn1 := String.new(cfg.host)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &StreamPeerTCP) connect_to_host(host string, port i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeerTCP")
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

pub fn (s &StreamPeerTCP) poll() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeerTCP")
	fnname := StringName.new("poll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &StreamPeerTCP) get_status() StreamPeerTCPStatus {
	mut result := i64(StreamPeerTCPStatus.status_none)
	classname := StringName.new("StreamPeerTCP")
	fnname := StringName.new("get_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 859471121)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{StreamPeerTCPStatus(result)}
}

pub fn (s &StreamPeerTCP) get_connected_host() string {
	mut result := String{}
	classname := StringName.new("StreamPeerTCP")
	fnname := StringName.new("get_connected_host")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &StreamPeerTCP) get_connected_port() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeerTCP")
	fnname := StringName.new("get_connected_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeerTCP) get_local_port() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeerTCP")
	fnname := StringName.new("get_local_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeerTCP) disconnect_from_host() {
	classname := StringName.new("StreamPeerTCP")
	fnname := StringName.new("disconnect_from_host")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeerTCP) set_no_delay(enabled bool) {
	classname := StringName.new("StreamPeerTCP")
	fnname := StringName.new("set_no_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
