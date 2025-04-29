module gd

pub struct AudioStreamPlayer2D {
	Node2D
}

pub fn (s &AudioStreamPlayer2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamPlayer2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioStreamPlayer2D) set_stream(stream AudioStream) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2210767741)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&stream.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) get_stream() AudioStream {
	mut result := AudioStream{}
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 160907539)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) set_volume_db(volume_db f64) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_volume_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&volume_db)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) get_volume_db() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_volume_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) set_volume_linear(volume_linear f64) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_volume_linear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&volume_linear)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) get_volume_linear() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_volume_linear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) set_pitch_scale(pitch_scale f64) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_pitch_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pitch_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) get_pitch_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_pitch_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AudioStreamPlayer2D_play_Cfg {
pub:
	from_position f64
}

pub fn (s &AudioStreamPlayer2D) play(cfg AudioStreamPlayer2D_play_Cfg) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("play")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1958160172)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.from_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) seek(to_position f64) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("seek")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&to_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) stop() {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) is_playing() bool {
	mut result := false
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("is_playing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) get_playback_position() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_playback_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) set_bus(bus string) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_bus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(bus)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) get_bus() string {
	mut result := StringName{}
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_bus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AudioStreamPlayer2D) set_autoplay(enable bool) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_autoplay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) is_autoplay_enabled() bool {
	mut result := false
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("is_autoplay_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) set_playing(enable bool) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_playing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) set_max_distance(pixels f64) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_max_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pixels)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) get_max_distance() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_max_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) set_attenuation(curve f64) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_attenuation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&curve)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) get_attenuation() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_attenuation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) set_area_mask(mask i64) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_area_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) get_area_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_area_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) set_stream_paused(pause bool) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_stream_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pause)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) get_stream_paused() bool {
	mut result := false
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_stream_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) set_max_polyphony(max_polyphony i64) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_max_polyphony")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_polyphony)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) get_max_polyphony() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_max_polyphony")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) set_panning_strength(panning_strength f64) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_panning_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&panning_strength)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) get_panning_strength() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_panning_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) has_stream_playback() bool {
	mut result := false
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("has_stream_playback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) get_stream_playback() AudioStreamPlayback {
	mut result := AudioStreamPlayback{}
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_stream_playback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 210135309)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlayer2D) set_playback_type(playback_type AudioServerPlaybackType) {
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("set_playback_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 725473817)
	mut args := unsafe { [1]voidptr{} }
	i64_playback_type := i64(playback_type)
	args[0] = unsafe{voidptr(&i64_playback_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamPlayer2D) get_playback_type() AudioServerPlaybackType {
	mut result := i64(AudioServerPlaybackType.playback_type_default)
	classname := StringName.new("AudioStreamPlayer2D")
	fnname := StringName.new("get_playback_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4011264623)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioServerPlaybackType(result)}
}
