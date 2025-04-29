module gd

pub struct ColorPickerButton {
	Button
}

pub fn (s &ColorPickerButton) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ColorPickerButton) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ColorPickerButton) set_pick_color(color Color) {
	classname := StringName.new("ColorPickerButton")
	fnname := StringName.new("set_pick_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ColorPickerButton) get_pick_color() Color {
	mut result := Color{}
	classname := StringName.new("ColorPickerButton")
	fnname := StringName.new("get_pick_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ColorPickerButton) get_picker() ColorPicker {
	mut result := ColorPicker{}
	classname := StringName.new("ColorPickerButton")
	fnname := StringName.new("get_picker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 331835996)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ColorPickerButton) get_popup() PopupPanel {
	mut result := PopupPanel{}
	classname := StringName.new("ColorPickerButton")
	fnname := StringName.new("get_popup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1322440207)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ColorPickerButton) set_edit_alpha(show bool) {
	classname := StringName.new("ColorPickerButton")
	fnname := StringName.new("set_edit_alpha")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&show)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ColorPickerButton) is_editing_alpha() bool {
	mut result := false
	classname := StringName.new("ColorPickerButton")
	fnname := StringName.new("is_editing_alpha")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
