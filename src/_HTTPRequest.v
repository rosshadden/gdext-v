module gd

pub enum HTTPRequestResult as i64 {
	result_success = 0
	result_chunked_body_size_mismatch = 1
	result_cant_connect = 2
	result_cant_resolve = 3
	result_connection_error = 4
	result_tls_handshake_error = 5
	result_no_response = 6
	result_body_size_limit_exceeded = 7
	result_body_decompress_failed = 8
	result_request_failed = 9
	result_download_file_cant_open = 10
	result_download_file_write_error = 11
	result_redirect_limit_reached = 12
	result_timeout = 13
}

pub struct HTTPRequest {
	Node
}

pub fn (s &HTTPRequest) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s HTTPRequest) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct HTTPRequest_request_Cfg {
pub:
	custom_headers PackedStringArray
	method HTTPClientMethod
	request_data string
}

pub fn (s &HTTPRequest) request(url string, cfg HTTPRequest_request_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("request")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3215244323)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(url)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.custom_headers)}
	i64_method := i64(cfg.method)
	args[2] = unsafe{voidptr(&i64_method)}
	arg_sn3 := String.new(cfg.request_data)
	args[3] = unsafe{voidptr(&arg_sn3)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct HTTPRequest_request_raw_Cfg {
pub:
	custom_headers PackedStringArray
	method HTTPClientMethod
	request_data_raw PackedByteArray
}

pub fn (s &HTTPRequest) request_raw(url string, cfg HTTPRequest_request_raw_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("request_raw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2714829993)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(url)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.custom_headers)}
	i64_method := i64(cfg.method)
	args[2] = unsafe{voidptr(&i64_method)}
	args[3] = unsafe{voidptr(&cfg.request_data_raw)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &HTTPRequest) cancel_request() {
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("cancel_request")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HTTPRequest) set_tls_options(client_options TLSOptions) {
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("set_tls_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2210231844)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&client_options.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HTTPRequest) get_http_client_status() HTTPClientStatus {
	mut result := i64(HTTPClientStatus.status_disconnected)
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("get_http_client_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1426656811)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{HTTPClientStatus(result)}
}

pub fn (s &HTTPRequest) set_use_threads(enable bool) {
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("set_use_threads")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HTTPRequest) is_using_threads() bool {
	mut result := false
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("is_using_threads")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HTTPRequest) set_accept_gzip(enable bool) {
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("set_accept_gzip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HTTPRequest) is_accepting_gzip() bool {
	mut result := false
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("is_accepting_gzip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HTTPRequest) set_body_size_limit(bytes i64) {
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("set_body_size_limit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bytes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HTTPRequest) get_body_size_limit() i64 {
	mut result := i64(0)
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("get_body_size_limit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HTTPRequest) set_max_redirects(amount i64) {
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("set_max_redirects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HTTPRequest) get_max_redirects() i64 {
	mut result := i64(0)
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("get_max_redirects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HTTPRequest) set_download_file(path string) {
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("set_download_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HTTPRequest) get_download_file() string {
	mut result := String{}
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("get_download_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &HTTPRequest) get_downloaded_bytes() i64 {
	mut result := i64(0)
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("get_downloaded_bytes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HTTPRequest) get_body_size() i64 {
	mut result := i64(0)
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("get_body_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HTTPRequest) set_timeout(timeout f64) {
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("set_timeout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&timeout)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HTTPRequest) get_timeout() f64 {
	mut result := f64(0)
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("get_timeout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HTTPRequest) set_download_chunk_size(chunk_size i64) {
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("set_download_chunk_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&chunk_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HTTPRequest) get_download_chunk_size() i64 {
	mut result := i64(0)
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("get_download_chunk_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &HTTPRequest) set_http_proxy(host string, port i64) {
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("set_http_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(host)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &HTTPRequest) set_https_proxy(host string, port i64) {
	classname := StringName.new("HTTPRequest")
	fnname := StringName.new("set_https_proxy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(host)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
