module gd

pub struct AudioStreamOggVorbis {
	AudioStream
}

pub fn (s &AudioStreamOggVorbis) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamOggVorbis) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn AudioStreamOggVorbis.load_from_buffer(stream_data PackedByteArray) AudioStreamOggVorbis {
	mut result := AudioStreamOggVorbis{}
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("load_from_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 354904730)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stream_data)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn AudioStreamOggVorbis.load_from_file(path string) AudioStreamOggVorbis {
	mut result := AudioStreamOggVorbis{}
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("load_from_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 797568536)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamOggVorbis) set_packet_sequence(packet_sequence OggPacketSequence) {
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("set_packet_sequence")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 438882457)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&packet_sequence.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamOggVorbis) get_packet_sequence() OggPacketSequence {
	mut result := OggPacketSequence{}
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("get_packet_sequence")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2801636033)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamOggVorbis) set_loop(enable bool) {
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("set_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamOggVorbis) has_loop() bool {
	mut result := false
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("has_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamOggVorbis) set_loop_offset(seconds f64) {
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("set_loop_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&seconds)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamOggVorbis) get_loop_offset() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("get_loop_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamOggVorbis) set_bpm(bpm f64) {
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("set_bpm")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bpm)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamOggVorbis) get_bpm() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("get_bpm")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamOggVorbis) set_beat_count(count i64) {
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("set_beat_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamOggVorbis) get_beat_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("get_beat_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamOggVorbis) set_bar_beats(count i64) {
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("set_bar_beats")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamOggVorbis) get_bar_beats() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamOggVorbis")
	fnname := StringName.new("get_bar_beats")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
