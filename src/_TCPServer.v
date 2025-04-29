module gd

pub struct TCPServer {
	RefCounted
}

pub fn (s &TCPServer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TCPServer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct TCPServer_listen_Cfg {
pub:
	bind_address string
}

pub fn (s &TCPServer) listen(port i64, cfg TCPServer_listen_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("TCPServer")
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

pub fn (s &TCPServer) is_connection_available() bool {
	mut result := false
	classname := StringName.new("TCPServer")
	fnname := StringName.new("is_connection_available")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TCPServer) is_listening() bool {
	mut result := false
	classname := StringName.new("TCPServer")
	fnname := StringName.new("is_listening")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TCPServer) get_local_port() i64 {
	mut result := i64(0)
	classname := StringName.new("TCPServer")
	fnname := StringName.new("get_local_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TCPServer) take_connection() StreamPeerTCP {
	mut result := StreamPeerTCP{}
	classname := StringName.new("TCPServer")
	fnname := StringName.new("take_connection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 30545006)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TCPServer) stop() {
	classname := StringName.new("TCPServer")
	fnname := StringName.new("stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
