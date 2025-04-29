module gd

pub struct DTLSServer {
	RefCounted
}

pub fn (s &DTLSServer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s DTLSServer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &DTLSServer) setup(server_options TLSOptions) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DTLSServer")
	fnname := StringName.new("setup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262296096)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&server_options.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &DTLSServer) take_connection(udp_peer PacketPeerUDP) PacketPeerDTLS {
	mut result := PacketPeerDTLS{}
	classname := StringName.new("DTLSServer")
	fnname := StringName.new("take_connection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3946580474)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&udp_peer.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
