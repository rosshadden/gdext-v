module gd

pub struct StreamPeerGZIP {
	StreamPeer
}

pub fn (s &StreamPeerGZIP) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s StreamPeerGZIP) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct StreamPeerGZIP_start_compression_Cfg {
pub:
	use_deflate bool
	buffer_size i64
}

pub fn (s &StreamPeerGZIP) start_compression(cfg StreamPeerGZIP_start_compression_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeerGZIP")
	fnname := StringName.new("start_compression")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 781582770)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.use_deflate)}
	args[1] = unsafe{voidptr(&cfg.buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct StreamPeerGZIP_start_decompression_Cfg {
pub:
	use_deflate bool
	buffer_size i64
}

pub fn (s &StreamPeerGZIP) start_decompression(cfg StreamPeerGZIP_start_decompression_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeerGZIP")
	fnname := StringName.new("start_decompression")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 781582770)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.use_deflate)}
	args[1] = unsafe{voidptr(&cfg.buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &StreamPeerGZIP) finish() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeerGZIP")
	fnname := StringName.new("finish")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &StreamPeerGZIP) clear() {
	classname := StringName.new("StreamPeerGZIP")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
