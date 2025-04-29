module gd

pub enum MultiplayerAPIRPCMode as i64 {
	rpc_mode_disabled = 0
	rpc_mode_any_peer = 1
	rpc_mode_authority = 2
}

pub struct MultiplayerAPI {
	RefCounted
}

pub fn (s &MultiplayerAPI) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MultiplayerAPI) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &MultiplayerAPI) has_multiplayer_peer() bool {
	mut result := false
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("has_multiplayer_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiplayerAPI) get_multiplayer_peer() MultiplayerPeer {
	mut result := MultiplayerPeer{}
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("get_multiplayer_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3223692825)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiplayerAPI) set_multiplayer_peer(peer MultiplayerPeer) {
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("set_multiplayer_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3694835298)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&peer.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiplayerAPI) get_unique_id() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("get_unique_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiplayerAPI) is_server() bool {
	mut result := false
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("is_server")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiplayerAPI) get_remote_sender_id() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("get_remote_sender_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiplayerAPI) poll() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("poll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct MultiplayerAPI_rpc_Cfg {
pub:
	arguments Array
}

pub fn (s &MultiplayerAPI) rpc(peer i64, object Object, method string, cfg MultiplayerAPI_rpc_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("rpc")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2077486355)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&peer)}
	args[1] = voidptr(&object.ptr)
	arg_sn2 := StringName.new(method)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.arguments)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &MultiplayerAPI) object_configuration_add(object Object, configuration Variant) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("object_configuration_add")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171879464)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&object.ptr)
	args[1] = unsafe{voidptr(&configuration)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &MultiplayerAPI) object_configuration_remove(object Object, configuration Variant) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("object_configuration_remove")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171879464)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&object.ptr)
	args[1] = unsafe{voidptr(&configuration)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &MultiplayerAPI) get_peers() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("get_peers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn MultiplayerAPI.set_default_interface(interface_name string) {
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("set_default_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(interface_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn MultiplayerAPI.get_default_interface() string {
	mut result := StringName{}
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("get_default_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2737447660)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn MultiplayerAPI.create_default_interface() MultiplayerAPI {
	mut result := MultiplayerAPI{}
	classname := StringName.new("MultiplayerAPI")
	fnname := StringName.new("create_default_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3294156723)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
