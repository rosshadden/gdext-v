module gd

pub struct InputEventWithModifiers {
	InputEventFromWindow
}

pub fn (s &InputEventWithModifiers) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s InputEventWithModifiers) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &InputEventWithModifiers) set_command_or_control_autoremap(enable bool) {
	classname := StringName.new("InputEventWithModifiers")
	fnname := StringName.new("set_command_or_control_autoremap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventWithModifiers) is_command_or_control_autoremap() bool {
	mut result := false
	classname := StringName.new("InputEventWithModifiers")
	fnname := StringName.new("is_command_or_control_autoremap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventWithModifiers) is_command_or_control_pressed() bool {
	mut result := false
	classname := StringName.new("InputEventWithModifiers")
	fnname := StringName.new("is_command_or_control_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventWithModifiers) set_alt_pressed(pressed bool) {
	classname := StringName.new("InputEventWithModifiers")
	fnname := StringName.new("set_alt_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventWithModifiers) is_alt_pressed() bool {
	mut result := false
	classname := StringName.new("InputEventWithModifiers")
	fnname := StringName.new("is_alt_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventWithModifiers) set_shift_pressed(pressed bool) {
	classname := StringName.new("InputEventWithModifiers")
	fnname := StringName.new("set_shift_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventWithModifiers) is_shift_pressed() bool {
	mut result := false
	classname := StringName.new("InputEventWithModifiers")
	fnname := StringName.new("is_shift_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventWithModifiers) set_ctrl_pressed(pressed bool) {
	classname := StringName.new("InputEventWithModifiers")
	fnname := StringName.new("set_ctrl_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventWithModifiers) is_ctrl_pressed() bool {
	mut result := false
	classname := StringName.new("InputEventWithModifiers")
	fnname := StringName.new("is_ctrl_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventWithModifiers) set_meta_pressed(pressed bool) {
	classname := StringName.new("InputEventWithModifiers")
	fnname := StringName.new("set_meta_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventWithModifiers) is_meta_pressed() bool {
	mut result := false
	classname := StringName.new("InputEventWithModifiers")
	fnname := StringName.new("is_meta_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventWithModifiers) get_modifiers_mask() KeyModifierMask {
	mut result := i64(KeyModifierMask.key_code_mask)
	classname := StringName.new("InputEventWithModifiers")
	fnname := StringName.new("get_modifiers_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1258259499)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{KeyModifierMask(result)}
}
