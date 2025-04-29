module gd

pub struct AudioStreamMP3 {
	AudioStream
}

pub fn (s &AudioStreamMP3) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamMP3) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn AudioStreamMP3.load_from_buffer(stream_data PackedByteArray) AudioStreamMP3 {
	mut result := AudioStreamMP3{}
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("load_from_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1674970313)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stream_data)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn AudioStreamMP3.load_from_file(path string) AudioStreamMP3 {
	mut result := AudioStreamMP3{}
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("load_from_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4238362998)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamMP3) set_data(data PackedByteArray) {
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("set_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamMP3) get_data() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("get_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamMP3) set_loop(enable bool) {
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("set_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamMP3) has_loop() bool {
	mut result := false
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("has_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamMP3) set_loop_offset(seconds f64) {
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("set_loop_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&seconds)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamMP3) get_loop_offset() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("get_loop_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamMP3) set_bpm(bpm f64) {
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("set_bpm")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bpm)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamMP3) get_bpm() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("get_bpm")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamMP3) set_beat_count(count i64) {
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("set_beat_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamMP3) get_beat_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("get_beat_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamMP3) set_bar_beats(count i64) {
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("set_bar_beats")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamMP3) get_bar_beats() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamMP3")
	fnname := StringName.new("get_bar_beats")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
