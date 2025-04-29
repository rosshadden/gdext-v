module gd

pub struct InputEventJoypadButton {
	InputEvent
}

pub fn (s &InputEventJoypadButton) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s InputEventJoypadButton) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &InputEventJoypadButton) set_button_index(button_index JoyButton) {
	classname := StringName.new("InputEventJoypadButton")
	fnname := StringName.new("set_button_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1466368136)
	mut args := unsafe { [1]voidptr{} }
	i64_button_index := i64(button_index)
	args[0] = unsafe{voidptr(&i64_button_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventJoypadButton) get_button_index() JoyButton {
	mut result := i64(JoyButton.joy_button_invalid)
	classname := StringName.new("InputEventJoypadButton")
	fnname := StringName.new("get_button_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 595588182)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{JoyButton(result)}
}

pub fn (s &InputEventJoypadButton) set_pressure(pressure f64) {
	classname := StringName.new("InputEventJoypadButton")
	fnname := StringName.new("set_pressure")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressure)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventJoypadButton) get_pressure() f64 {
	mut result := f64(0)
	classname := StringName.new("InputEventJoypadButton")
	fnname := StringName.new("get_pressure")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventJoypadButton) set_pressed(pressed bool) {
	classname := StringName.new("InputEventJoypadButton")
	fnname := StringName.new("set_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
