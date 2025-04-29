module gd

pub struct InputEventMouseButton {
	InputEventMouse
}

pub fn (s &InputEventMouseButton) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s InputEventMouseButton) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &InputEventMouseButton) set_factor(factor f64) {
	classname := StringName.new("InputEventMouseButton")
	fnname := StringName.new("set_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&factor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMouseButton) get_factor() f64 {
	mut result := f64(0)
	classname := StringName.new("InputEventMouseButton")
	fnname := StringName.new("get_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventMouseButton) set_button_index(button_index MouseButton) {
	classname := StringName.new("InputEventMouseButton")
	fnname := StringName.new("set_button_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3624991109)
	mut args := unsafe { [1]voidptr{} }
	i64_button_index := i64(button_index)
	args[0] = unsafe{voidptr(&i64_button_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMouseButton) get_button_index() MouseButton {
	mut result := i64(MouseButton.mouse_button_none)
	classname := StringName.new("InputEventMouseButton")
	fnname := StringName.new("get_button_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1132662608)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MouseButton(result)}
}

pub fn (s &InputEventMouseButton) set_pressed(pressed bool) {
	classname := StringName.new("InputEventMouseButton")
	fnname := StringName.new("set_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMouseButton) set_canceled(canceled bool) {
	classname := StringName.new("InputEventMouseButton")
	fnname := StringName.new("set_canceled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&canceled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMouseButton) set_double_click(double_click bool) {
	classname := StringName.new("InputEventMouseButton")
	fnname := StringName.new("set_double_click")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&double_click)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMouseButton) is_double_click() bool {
	mut result := false
	classname := StringName.new("InputEventMouseButton")
	fnname := StringName.new("is_double_click")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
