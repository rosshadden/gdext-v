module gd

pub struct InputEventJoypadMotion {
	InputEvent
}

pub fn (s &InputEventJoypadMotion) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s InputEventJoypadMotion) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &InputEventJoypadMotion) set_axis(axis JoyAxis) {
	classname := StringName.new("InputEventJoypadMotion")
	fnname := StringName.new("set_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1332685170)
	mut args := unsafe { [1]voidptr{} }
	i64_axis := i64(axis)
	args[0] = unsafe{voidptr(&i64_axis)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventJoypadMotion) get_axis() JoyAxis {
	mut result := i64(JoyAxis.joy_axis_invalid)
	classname := StringName.new("InputEventJoypadMotion")
	fnname := StringName.new("get_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4019121683)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{JoyAxis(result)}
}

pub fn (s &InputEventJoypadMotion) set_axis_value(axis_value f64) {
	classname := StringName.new("InputEventJoypadMotion")
	fnname := StringName.new("set_axis_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&axis_value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventJoypadMotion) get_axis_value() f64 {
	mut result := f64(0)
	classname := StringName.new("InputEventJoypadMotion")
	fnname := StringName.new("get_axis_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
