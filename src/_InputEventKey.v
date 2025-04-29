module gd

pub struct InputEventKey {
	InputEventWithModifiers
}

pub fn (s &InputEventKey) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s InputEventKey) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &InputEventKey) set_pressed(pressed bool) {
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("set_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventKey) set_keycode(keycode Key) {
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("set_keycode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 888074362)
	mut args := unsafe { [1]voidptr{} }
	i64_keycode := i64(keycode)
	args[0] = unsafe{voidptr(&i64_keycode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventKey) get_keycode() Key {
	mut result := i64(Key.key_none)
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("get_keycode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Key(result)}
}

pub fn (s &InputEventKey) set_physical_keycode(physical_keycode Key) {
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("set_physical_keycode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 888074362)
	mut args := unsafe { [1]voidptr{} }
	i64_physical_keycode := i64(physical_keycode)
	args[0] = unsafe{voidptr(&i64_physical_keycode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventKey) get_physical_keycode() Key {
	mut result := i64(Key.key_none)
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("get_physical_keycode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Key(result)}
}

pub fn (s &InputEventKey) set_key_label(key_label Key) {
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("set_key_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 888074362)
	mut args := unsafe { [1]voidptr{} }
	i64_key_label := i64(key_label)
	args[0] = unsafe{voidptr(&i64_key_label)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventKey) get_key_label() Key {
	mut result := i64(Key.key_none)
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("get_key_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Key(result)}
}

pub fn (s &InputEventKey) set_unicode(unicode i64) {
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("set_unicode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&unicode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventKey) get_unicode() i64 {
	mut result := i64(0)
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("get_unicode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEventKey) set_location(location KeyLocation) {
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("set_location")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 634453155)
	mut args := unsafe { [1]voidptr{} }
	i64_location := i64(location)
	args[0] = unsafe{voidptr(&i64_location)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventKey) get_location() KeyLocation {
	mut result := i64(KeyLocation.key_location_unspecified)
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("get_location")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 211810873)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{KeyLocation(result)}
}

pub fn (s &InputEventKey) set_echo(echo bool) {
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("set_echo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&echo)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEventKey) get_keycode_with_modifiers() Key {
	mut result := i64(Key.key_none)
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("get_keycode_with_modifiers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Key(result)}
}

pub fn (s &InputEventKey) get_physical_keycode_with_modifiers() Key {
	mut result := i64(Key.key_none)
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("get_physical_keycode_with_modifiers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Key(result)}
}

pub fn (s &InputEventKey) get_key_label_with_modifiers() Key {
	mut result := i64(Key.key_none)
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("get_key_label_with_modifiers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Key(result)}
}

pub fn (s &InputEventKey) as_text_keycode() string {
	mut result := String{}
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("as_text_keycode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &InputEventKey) as_text_physical_keycode() string {
	mut result := String{}
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("as_text_physical_keycode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &InputEventKey) as_text_key_label() string {
	mut result := String{}
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("as_text_key_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &InputEventKey) as_text_location() string {
	mut result := String{}
	classname := StringName.new("InputEventKey")
	fnname := StringName.new("as_text_location")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
