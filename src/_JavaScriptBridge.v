module gd

pub struct JavaScriptBridge {
	Object
}

pub fn JavaScriptBridge.get_singleton() JavaScriptBridge {
	sn := StringName.new("JavaScriptBridge")
	result := JavaScriptBridge{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &JavaScriptBridge) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s JavaScriptBridge) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct JavaScriptBridge_eval_Cfg {
pub:
	use_global_execution_context bool
}

pub fn (s &JavaScriptBridge) eval(code string, cfg JavaScriptBridge_eval_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("JavaScriptBridge")
	fnname := StringName.new("eval")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 218087648)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(code)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.use_global_execution_context)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JavaScriptBridge) get_interface(gd_interface string) JavaScriptObject {
	mut result := JavaScriptObject{}
	classname := StringName.new("JavaScriptBridge")
	fnname := StringName.new("get_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1355533281)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_interface)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JavaScriptBridge) create_callback(callable Callable) JavaScriptObject {
	mut result := JavaScriptObject{}
	classname := StringName.new("JavaScriptBridge")
	fnname := StringName.new("create_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 422818440)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JavaScriptBridge) is_js_buffer(javascript_object JavaScriptObject) bool {
	mut result := false
	classname := StringName.new("JavaScriptBridge")
	fnname := StringName.new("is_js_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 821968997)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&javascript_object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JavaScriptBridge) js_buffer_to_packed_byte_array(javascript_buffer JavaScriptObject) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("JavaScriptBridge")
	fnname := StringName.new("js_buffer_to_packed_byte_array")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 64409880)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&javascript_buffer.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JavaScriptBridge) create_object(object string) Variant {
	mut result := Variant{}
	classname := StringName.new("JavaScriptBridge")
	fnname := StringName.new("create_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093893586)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(object)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct JavaScriptBridge_download_buffer_Cfg {
pub:
	mime string
}

pub fn (s &JavaScriptBridge) download_buffer(buffer PackedByteArray, name string, cfg JavaScriptBridge_download_buffer_Cfg) {
	classname := StringName.new("JavaScriptBridge")
	fnname := StringName.new("download_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3352272093)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&buffer)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := String.new(cfg.mime)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &JavaScriptBridge) pwa_needs_update() bool {
	mut result := false
	classname := StringName.new("JavaScriptBridge")
	fnname := StringName.new("pwa_needs_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JavaScriptBridge) pwa_update() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("JavaScriptBridge")
	fnname := StringName.new("pwa_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &JavaScriptBridge) force_fs_sync() {
	classname := StringName.new("JavaScriptBridge")
	fnname := StringName.new("force_fs_sync")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
