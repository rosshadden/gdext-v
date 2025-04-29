module gd

pub struct AudioStreamGeneratorPlayback {
	AudioStreamPlaybackResampled
}

pub fn (s &AudioStreamGeneratorPlayback) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamGeneratorPlayback) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioStreamGeneratorPlayback) push_frame(frame Vector2) bool {
	mut result := false
	classname := StringName.new("AudioStreamGeneratorPlayback")
	fnname := StringName.new("push_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975407249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&frame)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamGeneratorPlayback) can_push_buffer(amount i64) bool {
	mut result := false
	classname := StringName.new("AudioStreamGeneratorPlayback")
	fnname := StringName.new("can_push_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamGeneratorPlayback) push_buffer(frames PackedVector2Array) bool {
	mut result := false
	classname := StringName.new("AudioStreamGeneratorPlayback")
	fnname := StringName.new("push_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1361156557)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&frames)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamGeneratorPlayback) get_frames_available() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamGeneratorPlayback")
	fnname := StringName.new("get_frames_available")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamGeneratorPlayback) get_skips() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamGeneratorPlayback")
	fnname := StringName.new("get_skips")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamGeneratorPlayback) clear_buffer() {
	classname := StringName.new("AudioStreamGeneratorPlayback")
	fnname := StringName.new("clear_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
