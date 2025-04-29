module gd

pub struct AudioStreamPlaylist {
	AudioStream
}

pub fn (s &AudioStreamPlaylist) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamPlaylist) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioStreamPlaylist) set_stream_count(stream_count i64) {
	classname := StringName.new("AudioStreamPlaylist")
	fnname := StringName.new("set_stream_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stream_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlaylist) get_stream_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamPlaylist")
	fnname := StringName.new("get_stream_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlaylist) get_bpm() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamPlaylist")
	fnname := StringName.new("get_bpm")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlaylist) set_list_stream(stream_index i64, audio_stream AudioStream) {
	classname := StringName.new("AudioStreamPlaylist")
	fnname := StringName.new("set_list_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 111075094)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&stream_index)}
	args[1] = voidptr(&audio_stream.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlaylist) get_list_stream(stream_index i64) AudioStream {
	mut result := AudioStream{}
	classname := StringName.new("AudioStreamPlaylist")
	fnname := StringName.new("get_list_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2739380747)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stream_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlaylist) set_shuffle(shuffle bool) {
	classname := StringName.new("AudioStreamPlaylist")
	fnname := StringName.new("set_shuffle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shuffle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlaylist) get_shuffle() bool {
	mut result := false
	classname := StringName.new("AudioStreamPlaylist")
	fnname := StringName.new("get_shuffle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlaylist) set_fade_time(dec f64) {
	classname := StringName.new("AudioStreamPlaylist")
	fnname := StringName.new("set_fade_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&dec)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlaylist) get_fade_time() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamPlaylist")
	fnname := StringName.new("get_fade_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlaylist) set_loop(loop bool) {
	classname := StringName.new("AudioStreamPlaylist")
	fnname := StringName.new("set_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&loop)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlaylist) has_loop() bool {
	mut result := false
	classname := StringName.new("AudioStreamPlaylist")
	fnname := StringName.new("has_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
