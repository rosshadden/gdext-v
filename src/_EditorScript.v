module gd

pub struct EditorScript {
	RefCounted
}

pub fn (s &EditorScript) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorScript) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorScriptRun {
mut:
	run_()
}

pub fn (s &EditorScript) gd_run() {
	classname := StringName.new("EditorScript")
	fnname := StringName.new("_run")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorScript) add_root_node(node Node) {
	classname := StringName.new("EditorScript")
	fnname := StringName.new("add_root_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorScript) get_scene() Node {
	mut result := Node{}
	classname := StringName.new("EditorScript")
	fnname := StringName.new("get_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorScript) get_editor_interface() EditorInterface {
	mut result := EditorInterface{}
	classname := StringName.new("EditorScript")
	fnname := StringName.new("get_editor_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1976662476)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
