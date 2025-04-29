module gd

pub struct AudioStreamPlayback {
	RefCounted
}

pub fn (s &AudioStreamPlayback) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamPlayback) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IAudioStreamPlaybackStart {
mut:
	start_(from_pos f64)
}

pub fn (s &AudioStreamPlayback) gd_start(from_pos f64) {
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("_start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&from_pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IAudioStreamPlaybackStop {
mut:
	stop_()
}

pub fn (s &AudioStreamPlayback) gd_stop() {
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("_stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IAudioStreamPlaybackIsPlaying {
mut:
	is_playing_() bool
}

pub fn (s &AudioStreamPlayback) gd_is_playing() bool {
	mut result := false
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("_is_playing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAudioStreamPlaybackGetLoopCount {
mut:
	get_loop_count_() i64
}

pub fn (s &AudioStreamPlayback) gd_get_loop_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("_get_loop_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAudioStreamPlaybackGetPlaybackPosition {
mut:
	get_playback_position_() f64
}

pub fn (s &AudioStreamPlayback) gd_get_playback_position() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("_get_playback_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAudioStreamPlaybackSeek {
mut:
	seek_(position f64)
}

pub fn (s &AudioStreamPlayback) gd_seek(position f64) {
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("_seek")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IAudioStreamPlaybackMix {
mut:
	mix_(buffer &AudioFrame, rate_scale f64, frames i64) i64
}

pub fn (s &AudioStreamPlayback) gd_mix(buffer &AudioFrame, rate_scale f64, frames i64) i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("_mix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 925936155)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&buffer)}
	args[1] = unsafe{voidptr(&rate_scale)}
	args[2] = unsafe{voidptr(&frames)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAudioStreamPlaybackTagUsedStreams {
mut:
	tag_used_streams_()
}

pub fn (s &AudioStreamPlayback) gd_tag_used_streams() {
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("_tag_used_streams")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IAudioStreamPlaybackSetParameter {
mut:
	set_parameter_(name StringName, value Variant)
}

pub fn (s &AudioStreamPlayback) gd_set_parameter(name string, value Variant) {
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("_set_parameter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface IAudioStreamPlaybackGetParameter {
mut:
	get_parameter_(name StringName) Variant
}

pub fn (s &AudioStreamPlayback) gd_get_parameter(name string) Variant {
	mut result := Variant{}
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("_get_parameter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayback) set_sample_playback(playback_sample AudioSamplePlayback) {
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("set_sample_playback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3195455091)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&playback_sample.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayback) get_sample_playback() AudioSamplePlayback {
	mut result := AudioSamplePlayback{}
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("get_sample_playback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3482738536)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayback) mix_audio(rate_scale f64, frames i64) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("mix_audio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341291446)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&rate_scale)}
	args[1] = unsafe{voidptr(&frames)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AudioStreamPlayback_start_Cfg {
pub:
	from_pos f64
}

pub fn (s &AudioStreamPlayback) start(cfg AudioStreamPlayback_start_Cfg) {
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1958160172)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.from_pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AudioStreamPlayback_seek_Cfg {
pub:
	time f64
}

pub fn (s &AudioStreamPlayback) seek(cfg AudioStreamPlayback_seek_Cfg) {
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("seek")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1958160172)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayback) stop() {
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayback) get_loop_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("get_loop_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayback) get_playback_position() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("get_playback_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayback) is_playing() bool {
	mut result := false
	classname := StringName.new("AudioStreamPlayback")
	fnname := StringName.new("is_playing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
