module gd

pub struct StreamPeerExtension {
	StreamPeer
}

pub fn (s &StreamPeerExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s StreamPeerExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IStreamPeerExtensionGetData {
mut:
	get_data_(r_buffer &u8, r_bytes i64, r_received &i32) GDError
}

pub fn (s &StreamPeerExtension) gd_get_data(r_buffer &u8, r_bytes i64, r_received &i32) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeerExtension")
	fnname := StringName.new("_get_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 298948178)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&r_buffer)}
	args[1] = unsafe{voidptr(&r_bytes)}
	args[2] = unsafe{voidptr(&r_received)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IStreamPeerExtensionGetPartialData {
mut:
	get_partial_data_(r_buffer &u8, r_bytes i64, r_received &i32) GDError
}

pub fn (s &StreamPeerExtension) gd_get_partial_data(r_buffer &u8, r_bytes i64, r_received &i32) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeerExtension")
	fnname := StringName.new("_get_partial_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 298948178)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&r_buffer)}
	args[1] = unsafe{voidptr(&r_bytes)}
	args[2] = unsafe{voidptr(&r_received)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IStreamPeerExtensionPutData {
mut:
	put_data_(p_data &u8, p_bytes i64, r_sent &i32) GDError
}

pub fn (s &StreamPeerExtension) gd_put_data(p_data &u8, p_bytes i64, r_sent &i32) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeerExtension")
	fnname := StringName.new("_put_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 298948178)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&p_data)}
	args[1] = unsafe{voidptr(&p_bytes)}
	args[2] = unsafe{voidptr(&r_sent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IStreamPeerExtensionPutPartialData {
mut:
	put_partial_data_(p_data &u8, p_bytes i64, r_sent &i32) GDError
}

pub fn (s &StreamPeerExtension) gd_put_partial_data(p_data &u8, p_bytes i64, r_sent &i32) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeerExtension")
	fnname := StringName.new("_put_partial_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 298948178)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&p_data)}
	args[1] = unsafe{voidptr(&p_bytes)}
	args[2] = unsafe{voidptr(&r_sent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IStreamPeerExtensionGetAvailableBytes {
mut:
	get_available_bytes_() i64
}

pub fn (s &StreamPeerExtension) gd_get_available_bytes() i64 {
	mut result := i64(0)
	classname := StringName.new("StreamPeerExtension")
	fnname := StringName.new("_get_available_bytes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
