module gd

pub enum AudioServerSpeakerMode as i64 {
	speaker_mode_stereo = 0
	speaker_surround_31 = 1
	speaker_surround_51 = 2
	speaker_surround_71 = 3
}

pub enum AudioServerPlaybackType as i64 {
	playback_type_default = 0
	playback_type_stream = 1
	playback_type_sample = 2
	playback_type_max = 3
}

pub struct AudioServer {
	Object
}

pub fn AudioServer.get_singleton() AudioServer {
	sn := StringName.new("AudioServer")
	result := AudioServer{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &AudioServer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioServer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioServer) set_bus_count(amount i64) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_bus_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) get_bus_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_bus_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) remove_bus(index i64) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("remove_bus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AudioServer_add_bus_Cfg {
pub:
	at_position i64
}

pub fn (s &AudioServer) add_bus(cfg AudioServer_add_bus_Cfg) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("add_bus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.at_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) move_bus(index i64, to_index i64) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("move_bus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&to_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) set_bus_name(bus_idx i64, name string) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_bus_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) get_bus_name(bus_idx i64) string {
	mut result := String{}
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_bus_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AudioServer) get_bus_index(bus_name string) i64 {
	mut result := i64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_bus_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2458036349)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(bus_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) get_bus_channels(bus_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_bus_channels")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) set_bus_volume_db(bus_idx i64, volume_db f64) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_bus_volume_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&volume_db)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) get_bus_volume_db(bus_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_bus_volume_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) set_bus_volume_linear(bus_idx i64, volume_linear f64) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_bus_volume_linear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&volume_linear)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) get_bus_volume_linear(bus_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_bus_volume_linear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) set_bus_send(bus_idx i64, send string) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_bus_send")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	arg_sn1 := StringName.new(send)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) get_bus_send(bus_idx i64) string {
	mut result := StringName{}
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_bus_send")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AudioServer) set_bus_solo(bus_idx i64, enable bool) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_bus_solo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) is_bus_solo(bus_idx i64) bool {
	mut result := false
	classname := StringName.new("AudioServer")
	fnname := StringName.new("is_bus_solo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) set_bus_mute(bus_idx i64, enable bool) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_bus_mute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) is_bus_mute(bus_idx i64) bool {
	mut result := false
	classname := StringName.new("AudioServer")
	fnname := StringName.new("is_bus_mute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) set_bus_bypass_effects(bus_idx i64, enable bool) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_bus_bypass_effects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) is_bus_bypassing_effects(bus_idx i64) bool {
	mut result := false
	classname := StringName.new("AudioServer")
	fnname := StringName.new("is_bus_bypassing_effects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AudioServer_add_bus_effect_Cfg {
pub:
	at_position i64
}

pub fn (s &AudioServer) add_bus_effect(bus_idx i64, effect AudioEffect, cfg AudioServer_add_bus_effect_Cfg) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("add_bus_effect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4068819785)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = voidptr(&effect.ptr)
	args[2] = unsafe{voidptr(&cfg.at_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) remove_bus_effect(bus_idx i64, effect_idx i64) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("remove_bus_effect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&effect_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) get_bus_effect_count(bus_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_bus_effect_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) get_bus_effect(bus_idx i64, effect_idx i64) AudioEffect {
	mut result := AudioEffect{}
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_bus_effect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 726064442)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&effect_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AudioServer_get_bus_effect_instance_Cfg {
pub:
	channel i64
}

pub fn (s &AudioServer) get_bus_effect_instance(bus_idx i64, effect_idx i64, cfg AudioServer_get_bus_effect_instance_Cfg) AudioEffectInstance {
	mut result := AudioEffectInstance{}
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_bus_effect_instance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1829771234)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&effect_idx)}
	args[2] = unsafe{voidptr(&cfg.channel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) swap_bus_effects(bus_idx i64, effect_idx i64, by_effect_idx i64) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("swap_bus_effects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1649997291)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&effect_idx)}
	args[2] = unsafe{voidptr(&by_effect_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) set_bus_effect_enabled(bus_idx i64, effect_idx i64, enabled bool) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_bus_effect_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&effect_idx)}
	args[2] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) is_bus_effect_enabled(bus_idx i64, effect_idx i64) bool {
	mut result := false
	classname := StringName.new("AudioServer")
	fnname := StringName.new("is_bus_effect_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&effect_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) get_bus_peak_volume_left_db(bus_idx i64, channel i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_bus_peak_volume_left_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&channel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) get_bus_peak_volume_right_db(bus_idx i64, channel i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_bus_peak_volume_right_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bus_idx)}
	args[1] = unsafe{voidptr(&channel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) set_playback_speed_scale(scale f64) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_playback_speed_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) get_playback_speed_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_playback_speed_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) gd_lock() {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("lock")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) unlock() {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("unlock")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) get_speaker_mode() AudioServerSpeakerMode {
	mut result := i64(AudioServerSpeakerMode.speaker_mode_stereo)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_speaker_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2549190337)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioServerSpeakerMode(result)}
}

pub fn (s &AudioServer) get_mix_rate() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_mix_rate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) get_input_mix_rate() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_input_mix_rate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) get_driver_name() string {
	mut result := String{}
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_driver_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AudioServer) get_output_device_list() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_output_device_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) get_output_device() string {
	mut result := String{}
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_output_device")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AudioServer) set_output_device(name string) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_output_device")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) get_time_to_next_mix() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_time_to_next_mix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) get_time_since_last_mix() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_time_since_last_mix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) get_output_latency() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_output_latency")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) get_input_device_list() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_input_device_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) get_input_device() string {
	mut result := String{}
	classname := StringName.new("AudioServer")
	fnname := StringName.new("get_input_device")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AudioServer) set_input_device(name string) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_input_device")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) set_bus_layout(bus_layout AudioBusLayout) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_bus_layout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3319058824)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&bus_layout.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) generate_bus_layout() AudioBusLayout {
	mut result := AudioBusLayout{}
	classname := StringName.new("AudioServer")
	fnname := StringName.new("generate_bus_layout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3769973890)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) set_enable_tagging_used_audio_streams(enable bool) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("set_enable_tagging_used_audio_streams")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioServer) is_stream_registered_as_sample(stream AudioStream) bool {
	mut result := false
	classname := StringName.new("AudioServer")
	fnname := StringName.new("is_stream_registered_as_sample")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 500225754)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&stream.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioServer) register_stream_as_sample(stream AudioStream) {
	classname := StringName.new("AudioServer")
	fnname := StringName.new("register_stream_as_sample")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2210767741)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&stream.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
