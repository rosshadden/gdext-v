module gd

pub struct ButtonGroup {
	Resource
}

pub fn (s &ButtonGroup) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ButtonGroup) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ButtonGroup) get_pressed_button() BaseButton {
	mut result := BaseButton{}
	classname := StringName.new("ButtonGroup")
	fnname := StringName.new("get_pressed_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3886434893)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ButtonGroup) get_buttons() Array {
	mut result := Array{}
	classname := StringName.new("ButtonGroup")
	fnname := StringName.new("get_buttons")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ButtonGroup) set_allow_unpress(enabled bool) {
	classname := StringName.new("ButtonGroup")
	fnname := StringName.new("set_allow_unpress")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ButtonGroup) is_allow_unpress() bool {
	mut result := false
	classname := StringName.new("ButtonGroup")
	fnname := StringName.new("is_allow_unpress")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
