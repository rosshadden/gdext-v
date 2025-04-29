module gd

pub enum StreamPeerTLSStatus as i64 {
	status_disconnected = 0
	status_handshaking = 1
	status_connected = 2
	status_error = 3
	status_error_hostname_mismatch = 4
}

pub struct StreamPeerTLS {
	StreamPeer
}

pub fn (s &StreamPeerTLS) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s StreamPeerTLS) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &StreamPeerTLS) poll() {
	classname := StringName.new("StreamPeerTLS")
	fnname := StringName.new("poll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StreamPeerTLS) accept_stream(stream StreamPeer, server_options TLSOptions) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeerTLS")
	fnname := StringName.new("accept_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4292689651)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&stream.ptr)
	args[1] = voidptr(&server_options.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct StreamPeerTLS_connect_to_stream_Cfg {
pub:
	client_options TLSOptions
}

pub fn (s &StreamPeerTLS) connect_to_stream(stream StreamPeer, common_name string, cfg StreamPeerTLS_connect_to_stream_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("StreamPeerTLS")
	fnname := StringName.new("connect_to_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 57169517)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&stream.ptr)
	arg_sn1 := String.new(common_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = voidptr(&cfg.client_options.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &StreamPeerTLS) get_status() StreamPeerTLSStatus {
	mut result := i64(StreamPeerTLSStatus.status_disconnected)
	classname := StringName.new("StreamPeerTLS")
	fnname := StringName.new("get_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1128380576)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{StreamPeerTLSStatus(result)}
}

pub fn (s &StreamPeerTLS) get_stream() StreamPeer {
	mut result := StreamPeer{}
	classname := StringName.new("StreamPeerTLS")
	fnname := StringName.new("get_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2741655269)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StreamPeerTLS) disconnect_from_stream() {
	classname := StringName.new("StreamPeerTLS")
	fnname := StringName.new("disconnect_from_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
