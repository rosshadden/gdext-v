module gd

pub struct ScriptEditorBase {
	VBoxContainer
}

pub fn (s &ScriptEditorBase) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ScriptEditorBase) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ScriptEditorBase) get_base_editor() Control {
	mut result := Control{}
	classname := StringName.new("ScriptEditorBase")
	fnname := StringName.new("get_base_editor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScriptEditorBase) add_syntax_highlighter(highlighter EditorSyntaxHighlighter) {
	classname := StringName.new("ScriptEditorBase")
	fnname := StringName.new("add_syntax_highlighter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1092774468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&highlighter.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
