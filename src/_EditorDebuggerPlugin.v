module gd

pub struct EditorDebuggerPlugin {
	RefCounted
}

pub fn (s &EditorDebuggerPlugin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorDebuggerPlugin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorDebuggerPluginSetupSession {
mut:
	setup_session_(session_id i64)
}

pub fn (s &EditorDebuggerPlugin) gd_setup_session(session_id i64) {
	classname := StringName.new("EditorDebuggerPlugin")
	fnname := StringName.new("_setup_session")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&session_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorDebuggerPluginHasCapture {
mut:
	has_capture_(capture String) bool
}

pub fn (s &EditorDebuggerPlugin) gd_has_capture(capture string) bool {
	mut result := false
	classname := StringName.new("EditorDebuggerPlugin")
	fnname := StringName.new("_has_capture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(capture)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorDebuggerPluginCapture {
mut:
	capture_(message String, data Array, session_id i64) bool
}

pub fn (s &EditorDebuggerPlugin) gd_capture(message string, data Array, session_id i64) bool {
	mut result := false
	classname := StringName.new("EditorDebuggerPlugin")
	fnname := StringName.new("_capture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2607901833)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&data)}
	args[2] = unsafe{voidptr(&session_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorDebuggerPluginGotoScriptLine {
mut:
	goto_script_line_(script Script, line i64)
}

pub fn (s &EditorDebuggerPlugin) gd_goto_script_line(script Script, line i64) {
	classname := StringName.new("EditorDebuggerPlugin")
	fnname := StringName.new("_goto_script_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1208513123)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&script.ptr)
	args[1] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorDebuggerPluginBreakpointsClearedInTree {
mut:
	breakpoints_cleared_in_tree_()
}

pub fn (s &EditorDebuggerPlugin) gd_breakpoints_cleared_in_tree() {
	classname := StringName.new("EditorDebuggerPlugin")
	fnname := StringName.new("_breakpoints_cleared_in_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorDebuggerPluginBreakpointSetInTree {
mut:
	breakpoint_set_in_tree_(script Script, line i64, enabled bool)
}

pub fn (s &EditorDebuggerPlugin) gd_breakpoint_set_in_tree(script Script, line i64, enabled bool) {
	classname := StringName.new("EditorDebuggerPlugin")
	fnname := StringName.new("_breakpoint_set_in_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2338735218)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&script.ptr)
	args[1] = unsafe{voidptr(&line)}
	args[2] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorDebuggerPlugin) get_session(id i64) EditorDebuggerSession {
	mut result := EditorDebuggerSession{}
	classname := StringName.new("EditorDebuggerPlugin")
	fnname := StringName.new("get_session")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3061968499)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorDebuggerPlugin) get_sessions() Array {
	mut result := Array{}
	classname := StringName.new("EditorDebuggerPlugin")
	fnname := StringName.new("get_sessions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
