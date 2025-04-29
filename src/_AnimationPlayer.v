module gd

pub enum AnimationPlayerAnimationProcessCallback as i64 {
	animation_process_physics = 0
	animation_process_idle = 1
	animation_process_manual = 2
}

pub enum AnimationPlayerAnimationMethodCallMode as i64 {
	animation_method_call_deferred = 0
	animation_method_call_immediate = 1
}

pub struct AnimationPlayer {
	AnimationMixer
}

pub fn (s &AnimationPlayer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationPlayer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AnimationPlayer) animation_set_next(animation_from string, animation_to string) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("animation_set_next")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(animation_from)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(animation_to)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) animation_get_next(animation_from string) string {
	mut result := StringName{}
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("animation_get_next")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(animation_from)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationPlayer) set_blend_time(animation_from string, animation_to string, sec f64) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_blend_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3231131886)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(animation_from)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(animation_to)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&sec)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_blend_time(animation_from string, animation_to string) f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_blend_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1958752504)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(animation_from)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(animation_to)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationPlayer) set_default_blend_time(sec f64) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_default_blend_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&sec)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_default_blend_time() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_default_blend_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationPlayer) set_auto_capture(auto_capture bool) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_auto_capture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&auto_capture)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) is_auto_capture() bool {
	mut result := false
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("is_auto_capture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationPlayer) set_auto_capture_duration(auto_capture_duration f64) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_auto_capture_duration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&auto_capture_duration)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_auto_capture_duration() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_auto_capture_duration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationPlayer) set_auto_capture_transition_type(auto_capture_transition_type TweenTransitionType) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_auto_capture_transition_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1058637742)
	mut args := unsafe { [1]voidptr{} }
	i64_auto_capture_transition_type := i64(auto_capture_transition_type)
	args[0] = unsafe{voidptr(&i64_auto_capture_transition_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_auto_capture_transition_type() TweenTransitionType {
	mut result := i64(TweenTransitionType.trans_linear)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_auto_capture_transition_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3842314528)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TweenTransitionType(result)}
}

pub fn (s &AnimationPlayer) set_auto_capture_ease_type(auto_capture_ease_type TweenEaseType) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_auto_capture_ease_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1208105857)
	mut args := unsafe { [1]voidptr{} }
	i64_auto_capture_ease_type := i64(auto_capture_ease_type)
	args[0] = unsafe{voidptr(&i64_auto_capture_ease_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_auto_capture_ease_type() TweenEaseType {
	mut result := i64(TweenEaseType.ease_in)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_auto_capture_ease_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 631880200)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TweenEaseType(result)}
}

@[params]
pub struct AnimationPlayer_play_Cfg {
pub:
	name string
	custom_blend f64
	custom_speed f64
	from_end bool
}

pub fn (s &AnimationPlayer) play(cfg AnimationPlayer_play_Cfg) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("play")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3118260607)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(cfg.name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.custom_blend)}
	args[2] = unsafe{voidptr(&cfg.custom_speed)}
	args[3] = unsafe{voidptr(&cfg.from_end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AnimationPlayer_play_section_with_markers_Cfg {
pub:
	name string
	start_marker string
	end_marker string
	custom_blend f64
	custom_speed f64
	from_end bool
}

pub fn (s &AnimationPlayer) play_section_with_markers(cfg AnimationPlayer_play_section_with_markers_Cfg) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("play_section_with_markers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1421431412)
	mut args := unsafe { [6]voidptr{} }
	arg_sn0 := StringName.new(cfg.name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.start_marker)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := StringName.new(cfg.end_marker)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.custom_blend)}
	args[4] = unsafe{voidptr(&cfg.custom_speed)}
	args[5] = unsafe{voidptr(&cfg.from_end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AnimationPlayer_play_section_Cfg {
pub:
	name string
	start_time f64
	end_time f64
	custom_blend f64
	custom_speed f64
	from_end bool
}

pub fn (s &AnimationPlayer) play_section(cfg AnimationPlayer_play_section_Cfg) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("play_section")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 284774635)
	mut args := unsafe { [6]voidptr{} }
	arg_sn0 := StringName.new(cfg.name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.start_time)}
	args[2] = unsafe{voidptr(&cfg.end_time)}
	args[3] = unsafe{voidptr(&cfg.custom_blend)}
	args[4] = unsafe{voidptr(&cfg.custom_speed)}
	args[5] = unsafe{voidptr(&cfg.from_end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AnimationPlayer_play_backwards_Cfg {
pub:
	name string
	custom_blend f64
}

pub fn (s &AnimationPlayer) play_backwards(cfg AnimationPlayer_play_backwards_Cfg) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("play_backwards")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787282401)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(cfg.name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.custom_blend)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AnimationPlayer_play_section_with_markers_backwards_Cfg {
pub:
	name string
	start_marker string
	end_marker string
	custom_blend f64
}

pub fn (s &AnimationPlayer) play_section_with_markers_backwards(cfg AnimationPlayer_play_section_with_markers_backwards_Cfg) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("play_section_with_markers_backwards")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 910195100)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(cfg.name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.start_marker)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := StringName.new(cfg.end_marker)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.custom_blend)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AnimationPlayer_play_section_backwards_Cfg {
pub:
	name string
	start_time f64
	end_time f64
	custom_blend f64
}

pub fn (s &AnimationPlayer) play_section_backwards(cfg AnimationPlayer_play_section_backwards_Cfg) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("play_section_backwards")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 831955981)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(cfg.name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.start_time)}
	args[2] = unsafe{voidptr(&cfg.end_time)}
	args[3] = unsafe{voidptr(&cfg.custom_blend)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AnimationPlayer_play_with_capture_Cfg {
pub:
	name string
	duration f64
	custom_blend f64
	custom_speed f64
	from_end bool
	trans_type TweenTransitionType
	ease_type TweenEaseType
}

pub fn (s &AnimationPlayer) play_with_capture(cfg AnimationPlayer_play_with_capture_Cfg) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("play_with_capture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1572969103)
	mut args := unsafe { [7]voidptr{} }
	arg_sn0 := StringName.new(cfg.name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.duration)}
	args[2] = unsafe{voidptr(&cfg.custom_blend)}
	args[3] = unsafe{voidptr(&cfg.custom_speed)}
	args[4] = unsafe{voidptr(&cfg.from_end)}
	i64_trans_type := i64(cfg.trans_type)
	args[5] = unsafe{voidptr(&i64_trans_type)}
	i64_ease_type := i64(cfg.ease_type)
	args[6] = unsafe{voidptr(&i64_ease_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) pause() {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("pause")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AnimationPlayer_stop_Cfg {
pub:
	keep_state bool
}

pub fn (s &AnimationPlayer) stop(cfg AnimationPlayer_stop_Cfg) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.keep_state)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) is_playing() bool {
	mut result := false
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("is_playing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationPlayer) set_current_animation(animation string) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_current_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(animation)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_current_animation() string {
	mut result := String{}
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_current_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationPlayer) set_assigned_animation(animation string) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_assigned_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(animation)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_assigned_animation() string {
	mut result := String{}
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_assigned_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationPlayer) queue(name string) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("queue")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_queue() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_queue")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationPlayer) clear_queue() {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("clear_queue")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) set_speed_scale(speed f64) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_speed_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&speed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_speed_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_speed_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationPlayer) get_playing_speed() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_playing_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationPlayer) set_autoplay(name string) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_autoplay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_autoplay() string {
	mut result := String{}
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_autoplay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationPlayer) set_movie_quit_on_finish_enabled(enabled bool) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_movie_quit_on_finish_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) is_movie_quit_on_finish_enabled() bool {
	mut result := false
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("is_movie_quit_on_finish_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationPlayer) get_current_animation_position() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_current_animation_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationPlayer) get_current_animation_length() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_current_animation_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AnimationPlayer_set_section_with_markers_Cfg {
pub:
	start_marker string
	end_marker string
}

pub fn (s &AnimationPlayer) set_section_with_markers(cfg AnimationPlayer_set_section_with_markers_Cfg) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_section_with_markers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 794792241)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(cfg.start_marker)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.end_marker)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AnimationPlayer_set_section_Cfg {
pub:
	start_time f64
	end_time f64
}

pub fn (s &AnimationPlayer) set_section(cfg AnimationPlayer_set_section_Cfg) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_section")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3749779719)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.start_time)}
	args[1] = unsafe{voidptr(&cfg.end_time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) reset_section() {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("reset_section")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_section_start_time() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_section_start_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationPlayer) get_section_end_time() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_section_end_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationPlayer) has_section() bool {
	mut result := false
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("has_section")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AnimationPlayer_seek_Cfg {
pub:
	update bool
	update_only bool
}

pub fn (s &AnimationPlayer) seek(seconds f64, cfg AnimationPlayer_seek_Cfg) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("seek")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1807872683)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&seconds)}
	args[1] = unsafe{voidptr(&cfg.update)}
	args[2] = unsafe{voidptr(&cfg.update_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) set_process_callback(mode AnimationPlayerAnimationProcessCallback) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_process_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1663839457)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_process_callback() AnimationPlayerAnimationProcessCallback {
	mut result := i64(AnimationPlayerAnimationProcessCallback.animation_process_physics)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_process_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4207496604)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationPlayerAnimationProcessCallback(result)}
}

pub fn (s &AnimationPlayer) set_method_call_mode(mode AnimationPlayerAnimationMethodCallMode) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_method_call_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3413514846)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_method_call_mode() AnimationPlayerAnimationMethodCallMode {
	mut result := i64(AnimationPlayerAnimationMethodCallMode.animation_method_call_deferred)
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_method_call_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3583380054)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationPlayerAnimationMethodCallMode(result)}
}

pub fn (s &AnimationPlayer) set_root(path NodePath) {
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("set_root")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationPlayer) get_root() NodePath {
	mut result := NodePath{}
	classname := StringName.new("AnimationPlayer")
	fnname := StringName.new("get_root")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
