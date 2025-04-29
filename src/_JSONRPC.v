module gd

pub enum JSONRPCErrorCode as i64 {
	parse_error = -32700
	invalid_request = -32600
	method_not_found = -32601
	invalid_params = -32602
	internal_error = -32603
}

pub struct JSONRPC {
	Object
}

pub fn (s &JSONRPC) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s JSONRPC) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &JSONRPC) set_method(name string, callback Callable) {
	classname := StringName.new("JSONRPC")
	fnname := StringName.new("set_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2137474292)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct JSONRPC_process_action_Cfg {
pub:
	recurse bool
}

pub fn (s &JSONRPC) process_action(action Variant, cfg JSONRPC_process_action_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("JSONRPC")
	fnname := StringName.new("process_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2963479484)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&action)}
	args[1] = unsafe{voidptr(&cfg.recurse)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JSONRPC) process_string(action string) string {
	mut result := String{}
	classname := StringName.new("JSONRPC")
	fnname := StringName.new("process_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &JSONRPC) make_request(method string, params Variant, id Variant) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("JSONRPC")
	fnname := StringName.new("make_request")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3423508980)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&params)}
	args[2] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JSONRPC) make_response(gd_result Variant, id Variant) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("JSONRPC")
	fnname := StringName.new("make_response")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 5053918)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_result)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JSONRPC) make_notification(method string, params Variant) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("JSONRPC")
	fnname := StringName.new("make_notification")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2949127017)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&params)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct JSONRPC_make_response_error_Cfg {
pub:
	id Variant
}

pub fn (s &JSONRPC) make_response_error(code i64, message string, cfg JSONRPC_make_response_error_Cfg) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("JSONRPC")
	fnname := StringName.new("make_response_error")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 928596297)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&code)}
	arg_sn1 := String.new(message)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
