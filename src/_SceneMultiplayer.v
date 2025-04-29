module gd

pub struct SceneMultiplayer {
	MultiplayerAPI
}

pub fn (s &SceneMultiplayer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SceneMultiplayer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SceneMultiplayer) set_root_path(path NodePath) {
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("set_root_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneMultiplayer) get_root_path() NodePath {
	mut result := NodePath{}
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("get_root_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneMultiplayer) clear() {
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneMultiplayer) disconnect_peer(id i64) {
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("disconnect_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneMultiplayer) get_authenticating_peers() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("get_authenticating_peers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneMultiplayer) send_auth(id i64, data PackedByteArray) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("send_auth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 506032537)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &SceneMultiplayer) complete_auth(id i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("complete_auth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &SceneMultiplayer) set_auth_callback(callback Callable) {
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("set_auth_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneMultiplayer) get_auth_callback() Callable {
	mut result := Callable{}
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("get_auth_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1307783378)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneMultiplayer) set_auth_timeout(timeout f64) {
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("set_auth_timeout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&timeout)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneMultiplayer) get_auth_timeout() f64 {
	mut result := f64(0)
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("get_auth_timeout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneMultiplayer) set_refuse_new_connections(refuse bool) {
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("set_refuse_new_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&refuse)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneMultiplayer) is_refusing_new_connections() bool {
	mut result := false
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("is_refusing_new_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneMultiplayer) set_allow_object_decoding(enable bool) {
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("set_allow_object_decoding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneMultiplayer) is_object_decoding_allowed() bool {
	mut result := false
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("is_object_decoding_allowed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneMultiplayer) set_server_relay_enabled(enabled bool) {
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("set_server_relay_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneMultiplayer) is_server_relay_enabled() bool {
	mut result := false
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("is_server_relay_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct SceneMultiplayer_send_bytes_Cfg {
pub:
	id i64
	mode MultiplayerPeerTransferMode
	channel i64
}

pub fn (s &SceneMultiplayer) send_bytes(bytes PackedByteArray, cfg SceneMultiplayer_send_bytes_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("send_bytes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1307428718)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&bytes)}
	args[1] = unsafe{voidptr(&cfg.id)}
	i64_mode := i64(cfg.mode)
	args[2] = unsafe{voidptr(&i64_mode)}
	args[3] = unsafe{voidptr(&cfg.channel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &SceneMultiplayer) get_max_sync_packet_size() i64 {
	mut result := i64(0)
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("get_max_sync_packet_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneMultiplayer) set_max_sync_packet_size(size i64) {
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("set_max_sync_packet_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneMultiplayer) get_max_delta_packet_size() i64 {
	mut result := i64(0)
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("get_max_delta_packet_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneMultiplayer) set_max_delta_packet_size(size i64) {
	classname := StringName.new("SceneMultiplayer")
	fnname := StringName.new("set_max_delta_packet_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
