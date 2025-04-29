module gd

pub struct EditorScriptPicker {
	EditorResourcePicker
}

pub fn (s &EditorScriptPicker) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorScriptPicker) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &EditorScriptPicker) set_script_owner(owner_node Node) {
	classname := StringName.new("EditorScriptPicker")
	fnname := StringName.new("set_script_owner")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&owner_node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorScriptPicker) get_script_owner() Node {
	mut result := Node{}
	classname := StringName.new("EditorScriptPicker")
	fnname := StringName.new("get_script_owner")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
