module gd

pub struct VideoStreamPlayback {
	Resource
}

pub fn (s &VideoStreamPlayback) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VideoStreamPlayback) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IVideoStreamPlaybackStop {
mut:
	stop_()
}

pub fn (s &VideoStreamPlayback) gd_stop() {
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IVideoStreamPlaybackPlay {
mut:
	play_()
}

pub fn (s &VideoStreamPlayback) gd_play() {
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_play")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IVideoStreamPlaybackIsPlaying {
mut:
	is_playing_() bool
}

pub fn (s &VideoStreamPlayback) gd_is_playing() bool {
	mut result := false
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_is_playing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVideoStreamPlaybackSetPaused {
mut:
	set_paused_(paused bool)
}

pub fn (s &VideoStreamPlayback) gd_set_paused(paused bool) {
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_set_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&paused)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IVideoStreamPlaybackIsPaused {
mut:
	is_paused_() bool
}

pub fn (s &VideoStreamPlayback) gd_is_paused() bool {
	mut result := false
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_is_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVideoStreamPlaybackGetLength {
mut:
	get_length_() f64
}

pub fn (s &VideoStreamPlayback) gd_get_length() f64 {
	mut result := f64(0)
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_get_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVideoStreamPlaybackGetPlaybackPosition {
mut:
	get_playback_position_() f64
}

pub fn (s &VideoStreamPlayback) gd_get_playback_position() f64 {
	mut result := f64(0)
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_get_playback_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVideoStreamPlaybackSeek {
mut:
	seek_(time f64)
}

pub fn (s &VideoStreamPlayback) gd_seek(time f64) {
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_seek")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IVideoStreamPlaybackSetAudioTrack {
mut:
	set_audio_track_(idx i64)
}

pub fn (s &VideoStreamPlayback) gd_set_audio_track(idx i64) {
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_set_audio_track")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IVideoStreamPlaybackGetTexture {
mut:
	get_texture_() Texture2D
}

pub fn (s &VideoStreamPlayback) gd_get_texture() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_get_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVideoStreamPlaybackUpdate {
mut:
	update_(delta f64)
}

pub fn (s &VideoStreamPlayback) gd_update(delta f64) {
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IVideoStreamPlaybackGetChannels {
mut:
	get_channels_() i64
}

pub fn (s &VideoStreamPlayback) gd_get_channels() i64 {
	mut result := i64(0)
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_get_channels")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVideoStreamPlaybackGetMixRate {
mut:
	get_mix_rate_() i64
}

pub fn (s &VideoStreamPlayback) gd_get_mix_rate() i64 {
	mut result := i64(0)
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("_get_mix_rate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct VideoStreamPlayback_mix_audio_Cfg {
pub:
	buffer PackedFloat32Array
	offset i64
}

pub fn (s &VideoStreamPlayback) mix_audio(num_frames i64, cfg VideoStreamPlayback_mix_audio_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("VideoStreamPlayback")
	fnname := StringName.new("mix_audio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 93876830)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&num_frames)}
	args[1] = unsafe{voidptr(&cfg.buffer)}
	args[2] = unsafe{voidptr(&cfg.offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
