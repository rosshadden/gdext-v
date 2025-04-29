module gd

pub struct PacketPeerExtension {
	PacketPeer
}

pub fn (s &PacketPeerExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PacketPeerExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IPacketPeerExtensionGetPacket {
mut:
	get_packet_(r_buffer &&u8 , r_buffer_size &i32) GDError
}

pub fn (s &PacketPeerExtension) gd_get_packet(r_buffer &&u8 , r_buffer_size &i32) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PacketPeerExtension")
	fnname := StringName.new("_get_packet")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3099858825)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&r_buffer)}
	args[1] = unsafe{voidptr(&r_buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IPacketPeerExtensionPutPacket {
mut:
	put_packet_(p_buffer &u8, p_buffer_size i64) GDError
}

pub fn (s &PacketPeerExtension) gd_put_packet(p_buffer &u8, p_buffer_size i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PacketPeerExtension")
	fnname := StringName.new("_put_packet")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3099858825)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&p_buffer)}
	args[1] = unsafe{voidptr(&p_buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IPacketPeerExtensionGetAvailablePacketCount {
mut:
	get_available_packet_count_() i64
}

pub fn (s &PacketPeerExtension) gd_get_available_packet_count() i64 {
	mut result := i64(0)
	classname := StringName.new("PacketPeerExtension")
	fnname := StringName.new("_get_available_packet_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPacketPeerExtensionGetMaxPacketSize {
mut:
	get_max_packet_size_() i64
}

pub fn (s &PacketPeerExtension) gd_get_max_packet_size() i64 {
	mut result := i64(0)
	classname := StringName.new("PacketPeerExtension")
	fnname := StringName.new("_get_max_packet_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
