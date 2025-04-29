module gd

pub enum AudioStreamInteractiveTransitionFromTime as i64 {
	transition_from_time_immediate = 0
	transition_from_time_next_beat = 1
	transition_from_time_next_bar = 2
	transition_from_time_end = 3
}

pub enum AudioStreamInteractiveTransitionToTime as i64 {
	transition_to_time_same_position = 0
	transition_to_time_start = 1
}

pub enum AudioStreamInteractiveFadeMode as i64 {
	fade_disabled = 0
	fade_in = 1
	fade_out = 2
	fade_cross = 3
	fade_automatic = 4
}

pub enum AudioStreamInteractiveAutoAdvanceMode as i64 {
	auto_advance_disabled = 0
	auto_advance_enabled = 1
	auto_advance_return_to_hold = 2
}

pub struct AudioStreamInteractive {
	AudioStream
}

pub fn (s &AudioStreamInteractive) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamInteractive) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioStreamInteractive) set_clip_count(clip_count i64) {
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("set_clip_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&clip_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamInteractive) get_clip_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("get_clip_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamInteractive) set_initial_clip(clip_index i64) {
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("set_initial_clip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&clip_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamInteractive) get_initial_clip() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("get_initial_clip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamInteractive) set_clip_name(clip_index i64, name string) {
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("set_clip_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&clip_index)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamInteractive) get_clip_name(clip_index i64) string {
	mut result := StringName{}
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("get_clip_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&clip_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AudioStreamInteractive) set_clip_stream(clip_index i64, stream AudioStream) {
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("set_clip_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 111075094)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&clip_index)}
	args[1] = voidptr(&stream.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamInteractive) get_clip_stream(clip_index i64) AudioStream {
	mut result := AudioStream{}
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("get_clip_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2739380747)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&clip_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamInteractive) set_clip_auto_advance(clip_index i64, mode AudioStreamInteractiveAutoAdvanceMode) {
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("set_clip_auto_advance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 57217598)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&clip_index)}
	i64_mode := i64(mode)
	args[1] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamInteractive) get_clip_auto_advance(clip_index i64) AudioStreamInteractiveAutoAdvanceMode {
	mut result := i64(AudioStreamInteractiveAutoAdvanceMode.auto_advance_disabled)
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("get_clip_auto_advance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1778634807)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&clip_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioStreamInteractiveAutoAdvanceMode(result)}
}

pub fn (s &AudioStreamInteractive) set_clip_auto_advance_next_clip(clip_index i64, auto_advance_next_clip i64) {
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("set_clip_auto_advance_next_clip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&clip_index)}
	args[1] = unsafe{voidptr(&auto_advance_next_clip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamInteractive) get_clip_auto_advance_next_clip(clip_index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("get_clip_auto_advance_next_clip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&clip_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AudioStreamInteractive_add_transition_Cfg {
pub:
	use_filler_clip bool
	filler_clip i64
	hold_previous bool
}

pub fn (s &AudioStreamInteractive) add_transition(from_clip i64, to_clip i64, from_time AudioStreamInteractiveTransitionFromTime, to_time AudioStreamInteractiveTransitionToTime, fade_mode AudioStreamInteractiveFadeMode, fade_beats f64, cfg AudioStreamInteractive_add_transition_Cfg) {
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("add_transition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1630280552)
	mut args := unsafe { [9]voidptr{} }
	args[0] = unsafe{voidptr(&from_clip)}
	args[1] = unsafe{voidptr(&to_clip)}
	i64_from_time := i64(from_time)
	args[2] = unsafe{voidptr(&i64_from_time)}
	i64_to_time := i64(to_time)
	args[3] = unsafe{voidptr(&i64_to_time)}
	i64_fade_mode := i64(fade_mode)
	args[4] = unsafe{voidptr(&i64_fade_mode)}
	args[5] = unsafe{voidptr(&fade_beats)}
	args[6] = unsafe{voidptr(&cfg.use_filler_clip)}
	args[7] = unsafe{voidptr(&cfg.filler_clip)}
	args[8] = unsafe{voidptr(&cfg.hold_previous)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamInteractive) has_transition(from_clip i64, to_clip i64) bool {
	mut result := false
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("has_transition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_clip)}
	args[1] = unsafe{voidptr(&to_clip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamInteractive) erase_transition(from_clip i64, to_clip i64) {
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("erase_transition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_clip)}
	args[1] = unsafe{voidptr(&to_clip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamInteractive) get_transition_list() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("get_transition_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamInteractive) get_transition_from_time(from_clip i64, to_clip i64) AudioStreamInteractiveTransitionFromTime {
	mut result := i64(AudioStreamInteractiveTransitionFromTime.transition_from_time_immediate)
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("get_transition_from_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3453338158)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_clip)}
	args[1] = unsafe{voidptr(&to_clip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioStreamInteractiveTransitionFromTime(result)}
}

pub fn (s &AudioStreamInteractive) get_transition_to_time(from_clip i64, to_clip i64) AudioStreamInteractiveTransitionToTime {
	mut result := i64(AudioStreamInteractiveTransitionToTime.transition_to_time_same_position)
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("get_transition_to_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1369651373)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_clip)}
	args[1] = unsafe{voidptr(&to_clip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioStreamInteractiveTransitionToTime(result)}
}

pub fn (s &AudioStreamInteractive) get_transition_fade_mode(from_clip i64, to_clip i64) AudioStreamInteractiveFadeMode {
	mut result := i64(AudioStreamInteractiveFadeMode.fade_disabled)
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("get_transition_fade_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4065396087)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_clip)}
	args[1] = unsafe{voidptr(&to_clip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioStreamInteractiveFadeMode(result)}
}

pub fn (s &AudioStreamInteractive) get_transition_fade_beats(from_clip i64, to_clip i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("get_transition_fade_beats")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_clip)}
	args[1] = unsafe{voidptr(&to_clip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamInteractive) is_transition_using_filler_clip(from_clip i64, to_clip i64) bool {
	mut result := false
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("is_transition_using_filler_clip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_clip)}
	args[1] = unsafe{voidptr(&to_clip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamInteractive) get_transition_filler_clip(from_clip i64, to_clip i64) i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("get_transition_filler_clip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_clip)}
	args[1] = unsafe{voidptr(&to_clip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamInteractive) is_transition_holding_previous(from_clip i64, to_clip i64) bool {
	mut result := false
	classname := StringName.new("AudioStreamInteractive")
	fnname := StringName.new("is_transition_holding_previous")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_clip)}
	args[1] = unsafe{voidptr(&to_clip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
