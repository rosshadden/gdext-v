module gd

pub struct InputEventShortcut {
	InputEvent
}

pub fn (s &InputEventShortcut) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s InputEventShortcut) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &InputEventShortcut) set_shortcut(shortcut Shortcut) {
	classname := StringName.new("InputEventShortcut")
	fnname := StringName.new("set_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 857163497)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&shortcut.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventShortcut) get_shortcut() Shortcut {
	mut result := Shortcut{}
	classname := StringName.new("InputEventShortcut")
	fnname := StringName.new("get_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3766804753)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
