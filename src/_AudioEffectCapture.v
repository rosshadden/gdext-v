module gd

pub struct AudioEffectCapture {
	AudioEffect
}

pub fn (s &AudioEffectCapture) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffectCapture) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioEffectCapture) can_get_buffer(frames i64) bool {
	mut result := false
	classname := StringName.new("AudioEffectCapture")
	fnname := StringName.new("can_get_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&frames)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectCapture) get_buffer(frames i64) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("AudioEffectCapture")
	fnname := StringName.new("get_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2649534757)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&frames)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectCapture) clear_buffer() {
	classname := StringName.new("AudioEffectCapture")
	fnname := StringName.new("clear_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectCapture) set_buffer_length(buffer_length_seconds f64) {
	classname := StringName.new("AudioEffectCapture")
	fnname := StringName.new("set_buffer_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer_length_seconds)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectCapture) get_buffer_length() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectCapture")
	fnname := StringName.new("get_buffer_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectCapture) get_frames_available() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioEffectCapture")
	fnname := StringName.new("get_frames_available")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectCapture) get_discarded_frames() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioEffectCapture")
	fnname := StringName.new("get_discarded_frames")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectCapture) get_buffer_length_frames() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioEffectCapture")
	fnname := StringName.new("get_buffer_length_frames")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectCapture) get_pushed_frames() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioEffectCapture")
	fnname := StringName.new("get_pushed_frames")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
