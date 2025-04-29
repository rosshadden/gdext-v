module gd

pub struct PacketPeerStream {
	PacketPeer
}

pub fn (s &PacketPeerStream) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PacketPeerStream) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PacketPeerStream) set_stream_peer(peer StreamPeer) {
	classname := StringName.new("PacketPeerStream")
	fnname := StringName.new("set_stream_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3281897016)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&peer.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PacketPeerStream) get_stream_peer() StreamPeer {
	mut result := StreamPeer{}
	classname := StringName.new("PacketPeerStream")
	fnname := StringName.new("get_stream_peer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2741655269)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PacketPeerStream) set_input_buffer_max_size(max_size_bytes i64) {
	classname := StringName.new("PacketPeerStream")
	fnname := StringName.new("set_input_buffer_max_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_size_bytes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PacketPeerStream) set_output_buffer_max_size(max_size_bytes i64) {
	classname := StringName.new("PacketPeerStream")
	fnname := StringName.new("set_output_buffer_max_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_size_bytes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PacketPeerStream) get_input_buffer_max_size() i64 {
	mut result := i64(0)
	classname := StringName.new("PacketPeerStream")
	fnname := StringName.new("get_input_buffer_max_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PacketPeerStream) get_output_buffer_max_size() i64 {
	mut result := i64(0)
	classname := StringName.new("PacketPeerStream")
	fnname := StringName.new("get_output_buffer_max_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
