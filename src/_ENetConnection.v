module gd

pub enum ENetConnectionCompressionMode as i64 {
	compress_none = 0
	compress_range_coder = 1
	compress_fastlz = 2
	compress_zlib = 3
	compress_zstd = 4
}

pub enum ENetConnectionEventType as i64 {
	event_error = -1
	event_none = 0
	event_connect = 1
	event_disconnect = 2
	event_receive = 3
}

pub enum ENetConnectionHostStatistic as i64 {
	host_total_sent_data = 0
	host_total_sent_packets = 1
	host_total_received_data = 2
	host_total_received_packets = 3
}

pub struct ENetConnection {
	RefCounted
}

pub fn (s &ENetConnection) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ENetConnection) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct ENetConnection_create_host_bound_Cfg {
pub:
	max_peers i64
	max_channels i64
	in_bandwidth i64
	out_bandwidth i64
}

pub fn (s &ENetConnection) create_host_bound(bind_address string, bind_port i64, cfg ENetConnection_create_host_bound_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("create_host_bound")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1515002313)
	mut args := unsafe { [6]voidptr{} }
	arg_sn0 := String.new(bind_address)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&bind_port)}
	args[2] = unsafe{voidptr(&cfg.max_peers)}
	args[3] = unsafe{voidptr(&cfg.max_channels)}
	args[4] = unsafe{voidptr(&cfg.in_bandwidth)}
	args[5] = unsafe{voidptr(&cfg.out_bandwidth)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct ENetConnection_create_host_Cfg {
pub:
	max_peers i64
	max_channels i64
	in_bandwidth i64
	out_bandwidth i64
}

pub fn (s &ENetConnection) create_host(cfg ENetConnection_create_host_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("create_host")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 117198950)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.max_peers)}
	args[1] = unsafe{voidptr(&cfg.max_channels)}
	args[2] = unsafe{voidptr(&cfg.in_bandwidth)}
	args[3] = unsafe{voidptr(&cfg.out_bandwidth)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ENetConnection) destroy() {
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("destroy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct ENetConnection_connect_to_host_Cfg {
pub:
	channels i64
	data i64
}

pub fn (s &ENetConnection) connect_to_host(address string, port i64, cfg ENetConnection_connect_to_host_Cfg) ENetPacketPeer {
	mut result := ENetPacketPeer{}
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("connect_to_host")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2171300490)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(address)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&port)}
	args[2] = unsafe{voidptr(&cfg.channels)}
	args[3] = unsafe{voidptr(&cfg.data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ENetConnection_service_Cfg {
pub:
	timeout i64
}

pub fn (s &ENetConnection) service(cfg ENetConnection_service_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("service")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2402345344)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.timeout)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ENetConnection) flush() {
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("flush")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct ENetConnection_bandwidth_limit_Cfg {
pub:
	in_bandwidth i64
	out_bandwidth i64
}

pub fn (s &ENetConnection) bandwidth_limit(cfg ENetConnection_bandwidth_limit_Cfg) {
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("bandwidth_limit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2302169788)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.in_bandwidth)}
	args[1] = unsafe{voidptr(&cfg.out_bandwidth)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ENetConnection) channel_limit(limit i64) {
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("channel_limit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&limit)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ENetConnection) broadcast(channel i64, packet PackedByteArray, flags i64) {
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("broadcast")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2772371345)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&channel)}
	args[1] = unsafe{voidptr(&packet)}
	args[2] = unsafe{voidptr(&flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ENetConnection) compress(mode ENetConnectionCompressionMode) {
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("compress")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2660215187)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ENetConnection) dtls_server_setup(server_options TLSOptions) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("dtls_server_setup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262296096)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&server_options.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct ENetConnection_dtls_client_setup_Cfg {
pub:
	client_options TLSOptions
}

pub fn (s &ENetConnection) dtls_client_setup(hostname string, cfg ENetConnection_dtls_client_setup_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("dtls_client_setup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1966198364)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(hostname)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&cfg.client_options.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ENetConnection) refuse_new_connections(refuse bool) {
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("refuse_new_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&refuse)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ENetConnection) pop_statistic(statistic ENetConnectionHostStatistic) f64 {
	mut result := f64(0)
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("pop_statistic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2166904170)
	mut args := unsafe { [1]voidptr{} }
	i64_statistic := i64(statistic)
	args[0] = unsafe{voidptr(&i64_statistic)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ENetConnection) get_max_channels() i64 {
	mut result := i64(0)
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("get_max_channels")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ENetConnection) get_local_port() i64 {
	mut result := i64(0)
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("get_local_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ENetConnection) get_peers() Array {
	mut result := Array{}
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("get_peers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ENetConnection) socket_send(destination_address string, destination_port i64, packet PackedByteArray) {
	classname := StringName.new("ENetConnection")
	fnname := StringName.new("socket_send")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1100646812)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(destination_address)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&destination_port)}
	args[2] = unsafe{voidptr(&packet)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
