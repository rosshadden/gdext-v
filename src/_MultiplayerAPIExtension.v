module gd

pub struct MultiplayerAPIExtension {
	MultiplayerAPI
}

pub fn (s &MultiplayerAPIExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MultiplayerAPIExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IMultiplayerAPIExtensionPoll {
mut:
	poll_() GDError
}

pub fn (s &MultiplayerAPIExtension) gd_poll() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MultiplayerAPIExtension")
	fnname := StringName.new("_poll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IMultiplayerAPIExtensionSetMultiplayerPeer {
mut:
	set_multiplayer_peer_(multiplayer_peer MultiplayerPeer)
}

pub fn (s &MultiplayerAPIExtension) gd_set_multiplayer_peer(multiplayer_peer MultiplayerPeer) {
	classname := StringName.new("MultiplayerAPIExtension")
	fnname := StringName.new("_set_multiplayer_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3694835298)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&multiplayer_peer.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IMultiplayerAPIExtensionGetMultiplayerPeer {
mut:
	get_multiplayer_peer_() MultiplayerPeer
}

pub fn (s &MultiplayerAPIExtension) gd_get_multiplayer_peer() MultiplayerPeer {
	mut result := MultiplayerPeer{}
	classname := StringName.new("MultiplayerAPIExtension")
	fnname := StringName.new("_get_multiplayer_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3223692825)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerAPIExtensionGetUniqueId {
mut:
	get_unique_id_() i64
}

pub fn (s &MultiplayerAPIExtension) gd_get_unique_id() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiplayerAPIExtension")
	fnname := StringName.new("_get_unique_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerAPIExtensionGetPeerIds {
mut:
	get_peer_ids_() PackedInt32Array
}

pub fn (s &MultiplayerAPIExtension) gd_get_peer_ids() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("MultiplayerAPIExtension")
	fnname := StringName.new("_get_peer_ids")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerAPIExtensionRpc {
mut:
	rpc_(peer i64, object Object, method StringName, gd_args Array) GDError
}

pub fn (s &MultiplayerAPIExtension) gd_rpc(peer i64, object Object, method string, gd_args Array) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MultiplayerAPIExtension")
	fnname := StringName.new("_rpc")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3673574758)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&peer)}
	args[1] = voidptr(&object.ptr)
	arg_sn2 := StringName.new(method)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&gd_args)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IMultiplayerAPIExtensionGetRemoteSenderId {
mut:
	get_remote_sender_id_() i64
}

pub fn (s &MultiplayerAPIExtension) gd_get_remote_sender_id() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiplayerAPIExtension")
	fnname := StringName.new("_get_remote_sender_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IMultiplayerAPIExtensionObjectConfigurationAdd {
mut:
	object_configuration_add_(object Object, configuration Variant) GDError
}

pub fn (s &MultiplayerAPIExtension) gd_object_configuration_add(object Object, configuration Variant) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MultiplayerAPIExtension")
	fnname := StringName.new("_object_configuration_add")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171879464)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&object.ptr)
	args[1] = unsafe{voidptr(&configuration)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IMultiplayerAPIExtensionObjectConfigurationRemove {
mut:
	object_configuration_remove_(object Object, configuration Variant) GDError
}

pub fn (s &MultiplayerAPIExtension) gd_object_configuration_remove(object Object, configuration Variant) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MultiplayerAPIExtension")
	fnname := StringName.new("_object_configuration_remove")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171879464)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&object.ptr)
	args[1] = unsafe{voidptr(&configuration)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}
