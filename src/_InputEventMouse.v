module gd

pub struct InputEventMouse {
	InputEventWithModifiers
}

pub fn (s &InputEventMouse) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s InputEventMouse) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &InputEventMouse) set_button_mask(button_mask MouseButtonMask) {
	classname := StringName.new("InputEventMouse")
	fnname := StringName.new("set_button_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3950145251)
	mut args := unsafe { [1]voidptr{} }
	i64_button_mask := i64(button_mask)
	args[0] = unsafe{voidptr(&i64_button_mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMouse) get_button_mask() MouseButtonMask {
	mut result := i64(MouseButtonMask.mouse_button_mask_left)
	classname := StringName.new("InputEventMouse")
	fnname := StringName.new("get_button_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2512161324)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MouseButtonMask(result)}
}

pub fn (s &InputEventMouse) set_position(position Vector2) {
	classname := StringName.new("InputEventMouse")
	fnname := StringName.new("set_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMouse) get_position() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("InputEventMouse")
	fnname := StringName.new("get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventMouse) set_global_position(global_position Vector2) {
	classname := StringName.new("InputEventMouse")
	fnname := StringName.new("set_global_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&global_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventMouse) get_global_position() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("InputEventMouse")
	fnname := StringName.new("get_global_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
