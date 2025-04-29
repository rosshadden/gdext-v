module gd

pub struct ScriptEditor {
	PanelContainer
}

pub fn (s &ScriptEditor) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ScriptEditor) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ScriptEditor) get_current_editor() ScriptEditorBase {
	mut result := ScriptEditorBase{}
	classname := StringName.new("ScriptEditor")
	fnname := StringName.new("get_current_editor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1906266726)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScriptEditor) get_open_script_editors() Array {
	mut result := Array{}
	classname := StringName.new("ScriptEditor")
	fnname := StringName.new("get_open_script_editors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScriptEditor) get_breakpoints() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ScriptEditor")
	fnname := StringName.new("get_breakpoints")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScriptEditor) register_syntax_highlighter(syntax_highlighter EditorSyntaxHighlighter) {
	classname := StringName.new("ScriptEditor")
	fnname := StringName.new("register_syntax_highlighter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1092774468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&syntax_highlighter.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScriptEditor) unregister_syntax_highlighter(syntax_highlighter EditorSyntaxHighlighter) {
	classname := StringName.new("ScriptEditor")
	fnname := StringName.new("unregister_syntax_highlighter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1092774468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&syntax_highlighter.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScriptEditor) goto_line(line_number i64) {
	classname := StringName.new("ScriptEditor")
	fnname := StringName.new("goto_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScriptEditor) get_current_script() Script {
	mut result := Script{}
	classname := StringName.new("ScriptEditor")
	fnname := StringName.new("get_current_script")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2146468882)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScriptEditor) get_open_scripts() Array {
	mut result := Array{}
	classname := StringName.new("ScriptEditor")
	fnname := StringName.new("get_open_scripts")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScriptEditor) open_script_create_dialog(base_name string, base_path string) {
	classname := StringName.new("ScriptEditor")
	fnname := StringName.new("open_script_create_dialog")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(base_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(base_path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScriptEditor) goto_help(topic string) {
	classname := StringName.new("ScriptEditor")
	fnname := StringName.new("goto_help")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(topic)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScriptEditor) update_docs_from_script(script Script) {
	classname := StringName.new("ScriptEditor")
	fnname := StringName.new("update_docs_from_script")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3657522847)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&script.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
