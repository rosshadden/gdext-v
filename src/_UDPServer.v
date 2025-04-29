module gd

pub struct UDPServer {
	RefCounted
}

pub fn (s &UDPServer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s UDPServer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct UDPServer_listen_Cfg {
pub:
	bind_address string
}

pub fn (s &UDPServer) listen(port i64, cfg UDPServer_listen_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("UDPServer")
	fnname := StringName.new("listen")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3167955072)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	arg_sn1 := String.new(cfg.bind_address)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &UDPServer) poll() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("UDPServer")
	fnname := StringName.new("poll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &UDPServer) is_connection_available() bool {
	mut result := false
	classname := StringName.new("UDPServer")
	fnname := StringName.new("is_connection_available")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UDPServer) get_local_port() i64 {
	mut result := i64(0)
	classname := StringName.new("UDPServer")
	fnname := StringName.new("get_local_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UDPServer) is_listening() bool {
	mut result := false
	classname := StringName.new("UDPServer")
	fnname := StringName.new("is_listening")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UDPServer) take_connection() PacketPeerUDP {
	mut result := PacketPeerUDP{}
	classname := StringName.new("UDPServer")
	fnname := StringName.new("take_connection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 808734560)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UDPServer) stop() {
	classname := StringName.new("UDPServer")
	fnname := StringName.new("stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UDPServer) set_max_pending_connections(max_pending_connections i64) {
	classname := StringName.new("UDPServer")
	fnname := StringName.new("set_max_pending_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_pending_connections)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UDPServer) get_max_pending_connections() i64 {
	mut result := i64(0)
	classname := StringName.new("UDPServer")
	fnname := StringName.new("get_max_pending_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
