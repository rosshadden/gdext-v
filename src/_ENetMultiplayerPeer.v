module gd

pub struct ENetMultiplayerPeer {
	MultiplayerPeer
}

pub fn (s &ENetMultiplayerPeer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ENetMultiplayerPeer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct ENetMultiplayerPeer_create_server_Cfg {
pub:
	max_clients i64
	max_channels i64
	in_bandwidth i64
	out_bandwidth i64
}

pub fn (s &ENetMultiplayerPeer) create_server(port i64, cfg ENetMultiplayerPeer_create_server_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ENetMultiplayerPeer")
	fnname := StringName.new("create_server")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2917761309)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	args[1] = unsafe{voidptr(&cfg.max_clients)}
	args[2] = unsafe{voidptr(&cfg.max_channels)}
	args[3] = unsafe{voidptr(&cfg.in_bandwidth)}
	args[4] = unsafe{voidptr(&cfg.out_bandwidth)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct ENetMultiplayerPeer_create_client_Cfg {
pub:
	channel_count i64
	in_bandwidth i64
	out_bandwidth i64
	local_port i64
}

pub fn (s &ENetMultiplayerPeer) create_client(address string, port i64, cfg ENetMultiplayerPeer_create_client_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ENetMultiplayerPeer")
	fnname := StringName.new("create_client")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2327163476)
	mut args := unsafe { [6]voidptr{} }
	arg_sn0 := String.new(address)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&port)}
	args[2] = unsafe{voidptr(&cfg.channel_count)}
	args[3] = unsafe{voidptr(&cfg.in_bandwidth)}
	args[4] = unsafe{voidptr(&cfg.out_bandwidth)}
	args[5] = unsafe{voidptr(&cfg.local_port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ENetMultiplayerPeer) create_mesh(unique_id i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ENetMultiplayerPeer")
	fnname := StringName.new("create_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&unique_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ENetMultiplayerPeer) add_mesh_peer(peer_id i64, host ENetConnection) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ENetMultiplayerPeer")
	fnname := StringName.new("add_mesh_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1293458335)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&peer_id)}
	args[1] = voidptr(&host.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ENetMultiplayerPeer) set_bind_ip(ip string) {
	classname := StringName.new("ENetMultiplayerPeer")
	fnname := StringName.new("set_bind_ip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(ip)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ENetMultiplayerPeer) get_host() ENetConnection {
	mut result := ENetConnection{}
	classname := StringName.new("ENetMultiplayerPeer")
	fnname := StringName.new("get_host")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4103238886)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ENetMultiplayerPeer) get_peer(id i64) ENetPacketPeer {
	mut result := ENetPacketPeer{}
	classname := StringName.new("ENetMultiplayerPeer")
	fnname := StringName.new("get_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3793311544)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
