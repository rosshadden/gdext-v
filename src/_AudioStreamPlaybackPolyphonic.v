module gd

pub struct AudioStreamPlaybackPolyphonic {
	AudioStreamPlayback
}

pub fn (s &AudioStreamPlaybackPolyphonic) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamPlaybackPolyphonic) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct AudioStreamPlaybackPolyphonic_play_stream_Cfg {
pub:
	from_offset f64
	volume_db f64
	pitch_scale f64
	playback_type AudioServerPlaybackType
	bus string
}

pub fn (s &AudioStreamPlaybackPolyphonic) play_stream(stream AudioStream, cfg AudioStreamPlaybackPolyphonic_play_stream_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamPlaybackPolyphonic")
	fnname := StringName.new("play_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1846744803)
	mut args := unsafe { [6]voidptr{} }
	args[0] = voidptr(&stream.ptr)
	args[1] = unsafe{voidptr(&cfg.from_offset)}
	args[2] = unsafe{voidptr(&cfg.volume_db)}
	args[3] = unsafe{voidptr(&cfg.pitch_scale)}
	i64_playback_type := i64(cfg.playback_type)
	args[4] = unsafe{voidptr(&i64_playback_type)}
	arg_sn5 := StringName.new(cfg.bus)
	args[5] = unsafe{voidptr(&arg_sn5)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn5.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlaybackPolyphonic) set_stream_volume(stream i64, volume_db f64) {
	classname := StringName.new("AudioStreamPlaybackPolyphonic")
	fnname := StringName.new("set_stream_volume")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&stream)}
	args[1] = unsafe{voidptr(&volume_db)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlaybackPolyphonic) set_stream_pitch_scale(stream i64, pitch_scale f64) {
	classname := StringName.new("AudioStreamPlaybackPolyphonic")
	fnname := StringName.new("set_stream_pitch_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&stream)}
	args[1] = unsafe{voidptr(&pitch_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlaybackPolyphonic) is_stream_playing(stream i64) bool {
	mut result := false
	classname := StringName.new("AudioStreamPlaybackPolyphonic")
	fnname := StringName.new("is_stream_playing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stream)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlaybackPolyphonic) stop_stream(stream i64) {
	classname := StringName.new("AudioStreamPlaybackPolyphonic")
	fnname := StringName.new("stop_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stream)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
