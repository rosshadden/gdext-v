module gd

pub struct EditorDebuggerSession {
	RefCounted
}

pub fn (s &EditorDebuggerSession) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorDebuggerSession) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct EditorDebuggerSession_send_message_Cfg {
pub:
	data Array
}

pub fn (s &EditorDebuggerSession) send_message(message string, cfg EditorDebuggerSession_send_message_Cfg) {
	classname := StringName.new("EditorDebuggerSession")
	fnname := StringName.new("send_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 85656714)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorDebuggerSession_toggle_profiler_Cfg {
pub:
	data Array
}

pub fn (s &EditorDebuggerSession) toggle_profiler(profiler string, enable bool, cfg EditorDebuggerSession_toggle_profiler_Cfg) {
	classname := StringName.new("EditorDebuggerSession")
	fnname := StringName.new("toggle_profiler")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1198443697)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(profiler)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&enable)}
	args[2] = unsafe{voidptr(&cfg.data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorDebuggerSession) is_breaked() bool {
	mut result := false
	classname := StringName.new("EditorDebuggerSession")
	fnname := StringName.new("is_breaked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorDebuggerSession) is_debuggable() bool {
	mut result := false
	classname := StringName.new("EditorDebuggerSession")
	fnname := StringName.new("is_debuggable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorDebuggerSession) is_active() bool {
	mut result := false
	classname := StringName.new("EditorDebuggerSession")
	fnname := StringName.new("is_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorDebuggerSession) add_session_tab(control Control) {
	classname := StringName.new("EditorDebuggerSession")
	fnname := StringName.new("add_session_tab")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorDebuggerSession) remove_session_tab(control Control) {
	classname := StringName.new("EditorDebuggerSession")
	fnname := StringName.new("remove_session_tab")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorDebuggerSession) set_breakpoint(path string, line i64, enabled bool) {
	classname := StringName.new("EditorDebuggerSession")
	fnname := StringName.new("set_breakpoint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&line)}
	args[2] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
