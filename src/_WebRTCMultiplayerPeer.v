module gd

pub struct WebRTCMultiplayerPeer {
	MultiplayerPeer
}

pub fn (s &WebRTCMultiplayerPeer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s WebRTCMultiplayerPeer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct WebRTCMultiplayerPeer_create_server_Cfg {
pub:
	channels_config Array
}

pub fn (s &WebRTCMultiplayerPeer) create_server(cfg WebRTCMultiplayerPeer_create_server_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCMultiplayerPeer")
	fnname := StringName.new("create_server")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2865356025)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.channels_config)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct WebRTCMultiplayerPeer_create_client_Cfg {
pub:
	channels_config Array
}

pub fn (s &WebRTCMultiplayerPeer) create_client(peer_id i64, cfg WebRTCMultiplayerPeer_create_client_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCMultiplayerPeer")
	fnname := StringName.new("create_client")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2641732907)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&peer_id)}
	args[1] = unsafe{voidptr(&cfg.channels_config)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct WebRTCMultiplayerPeer_create_mesh_Cfg {
pub:
	channels_config Array
}

pub fn (s &WebRTCMultiplayerPeer) create_mesh(peer_id i64, cfg WebRTCMultiplayerPeer_create_mesh_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCMultiplayerPeer")
	fnname := StringName.new("create_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2641732907)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&peer_id)}
	args[1] = unsafe{voidptr(&cfg.channels_config)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct WebRTCMultiplayerPeer_add_peer_Cfg {
pub:
	unreliable_lifetime i64
}

pub fn (s &WebRTCMultiplayerPeer) add_peer(peer WebRTCPeerConnection, peer_id i64, cfg WebRTCMultiplayerPeer_add_peer_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WebRTCMultiplayerPeer")
	fnname := StringName.new("add_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4078953270)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&peer.ptr)
	args[1] = unsafe{voidptr(&peer_id)}
	args[2] = unsafe{voidptr(&cfg.unreliable_lifetime)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &WebRTCMultiplayerPeer) remove_peer(peer_id i64) {
	classname := StringName.new("WebRTCMultiplayerPeer")
	fnname := StringName.new("remove_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&peer_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebRTCMultiplayerPeer) has_peer(peer_id i64) bool {
	mut result := false
	classname := StringName.new("WebRTCMultiplayerPeer")
	fnname := StringName.new("has_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&peer_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebRTCMultiplayerPeer) get_peer(peer_id i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("WebRTCMultiplayerPeer")
	fnname := StringName.new("get_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3554694381)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&peer_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebRTCMultiplayerPeer) get_peers() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("WebRTCMultiplayerPeer")
	fnname := StringName.new("get_peers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
