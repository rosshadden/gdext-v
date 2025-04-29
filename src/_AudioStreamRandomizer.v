module gd

pub enum AudioStreamRandomizerPlaybackMode as i64 {
	playback_random_no_repeats = 0
	playback_random = 1
	playback_sequential = 2
}

pub struct AudioStreamRandomizer {
	AudioStream
}

pub fn (s &AudioStreamRandomizer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamRandomizer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct AudioStreamRandomizer_add_stream_Cfg {
pub:
	weight f64
}

pub fn (s &AudioStreamRandomizer) add_stream(index i64, stream AudioStream, cfg AudioStreamRandomizer_add_stream_Cfg) {
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("add_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892018854)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = voidptr(&stream.ptr)
	args[2] = unsafe{voidptr(&cfg.weight)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamRandomizer) move_stream(index_from i64, index_to i64) {
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("move_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index_from)}
	args[1] = unsafe{voidptr(&index_to)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamRandomizer) remove_stream(index i64) {
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("remove_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamRandomizer) set_stream(index i64, stream AudioStream) {
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("set_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 111075094)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = voidptr(&stream.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamRandomizer) get_stream(index i64) AudioStream {
	mut result := AudioStream{}
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("get_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2739380747)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamRandomizer) set_stream_probability_weight(index i64, weight f64) {
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("set_stream_probability_weight")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&weight)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamRandomizer) get_stream_probability_weight(index i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("get_stream_probability_weight")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamRandomizer) set_streams_count(count i64) {
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("set_streams_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamRandomizer) get_streams_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("get_streams_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamRandomizer) set_random_pitch(scale f64) {
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("set_random_pitch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamRandomizer) get_random_pitch() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("get_random_pitch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamRandomizer) set_random_volume_offset_db(db_offset f64) {
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("set_random_volume_offset_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&db_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamRandomizer) get_random_volume_offset_db() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("get_random_volume_offset_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamRandomizer) set_playback_mode(mode AudioStreamRandomizerPlaybackMode) {
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("set_playback_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3950967023)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamRandomizer) get_playback_mode() AudioStreamRandomizerPlaybackMode {
	mut result := i64(AudioStreamRandomizerPlaybackMode.playback_random_no_repeats)
	classname := StringName.new("AudioStreamRandomizer")
	fnname := StringName.new("get_playback_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3943055077)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioStreamRandomizerPlaybackMode(result)}
}
