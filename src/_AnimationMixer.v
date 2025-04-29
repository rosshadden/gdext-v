module gd

pub enum AnimationMixerAnimationCallbackModeProcess as i64 {
	animation_callback_mode_process_physics = 0
	animation_callback_mode_process_idle = 1
	animation_callback_mode_process_manual = 2
}

pub enum AnimationMixerAnimationCallbackModeMethod as i64 {
	animation_callback_mode_method_deferred = 0
	animation_callback_mode_method_immediate = 1
}

pub enum AnimationMixerAnimationCallbackModeDiscrete as i64 {
	animation_callback_mode_discrete_dominant = 0
	animation_callback_mode_discrete_recessive = 1
	animation_callback_mode_discrete_force_continuous = 2
}

pub struct AnimationMixer {
	Node
}

pub fn (s &AnimationMixer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationMixer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IAnimationMixerPostProcessKeyValue {
mut:
	post_process_key_value_(animation Animation, track i64, value Variant, object_id i64, object_sub_idx i64) Variant
}

pub fn (s &AnimationMixer) gd_post_process_key_value(animation Animation, track i64, value Variant, object_id i64, object_sub_idx i64) Variant {
	mut result := Variant{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("_post_process_key_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2716908335)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&animation.ptr)
	args[1] = unsafe{voidptr(&track)}
	args[2] = unsafe{voidptr(&value)}
	args[3] = unsafe{voidptr(&object_id)}
	args[4] = unsafe{voidptr(&object_sub_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) add_animation_library(name string, library AnimationLibrary) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("add_animation_library")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 618909818)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&library.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &AnimationMixer) remove_animation_library(name string) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("remove_animation_library")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) rename_animation_library(name string, newname string) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("rename_animation_library")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(newname)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) has_animation_library(name string) bool {
	mut result := false
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("has_animation_library")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) get_animation_library(name string) AnimationLibrary {
	mut result := AnimationLibrary{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_animation_library")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 147342321)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) get_animation_library_list() Array {
	mut result := Array{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_animation_library_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) has_animation(name string) bool {
	mut result := false
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("has_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) get_animation(name string) Animation {
	mut result := Animation{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2933122410)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) get_animation_list() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_animation_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) set_active(active bool) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("set_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&active)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) is_active() bool {
	mut result := false
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("is_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) set_deterministic(deterministic bool) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("set_deterministic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&deterministic)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) is_deterministic() bool {
	mut result := false
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("is_deterministic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) set_root_node(path NodePath) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("set_root_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) get_root_node() NodePath {
	mut result := NodePath{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_root_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) set_callback_mode_process(mode AnimationMixerAnimationCallbackModeProcess) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("set_callback_mode_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2153733086)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) get_callback_mode_process() AnimationMixerAnimationCallbackModeProcess {
	mut result := i64(AnimationMixerAnimationCallbackModeProcess.animation_callback_mode_process_physics)
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_callback_mode_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1394468472)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationMixerAnimationCallbackModeProcess(result)}
}

pub fn (s &AnimationMixer) set_callback_mode_method(mode AnimationMixerAnimationCallbackModeMethod) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("set_callback_mode_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 742218271)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) get_callback_mode_method() AnimationMixerAnimationCallbackModeMethod {
	mut result := i64(AnimationMixerAnimationCallbackModeMethod.animation_callback_mode_method_deferred)
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_callback_mode_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 489449656)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationMixerAnimationCallbackModeMethod(result)}
}

pub fn (s &AnimationMixer) set_callback_mode_discrete(mode AnimationMixerAnimationCallbackModeDiscrete) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("set_callback_mode_discrete")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1998944670)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) get_callback_mode_discrete() AnimationMixerAnimationCallbackModeDiscrete {
	mut result := i64(AnimationMixerAnimationCallbackModeDiscrete.animation_callback_mode_discrete_dominant)
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_callback_mode_discrete")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3493168860)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationMixerAnimationCallbackModeDiscrete(result)}
}

pub fn (s &AnimationMixer) set_audio_max_polyphony(max_polyphony i64) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("set_audio_max_polyphony")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_polyphony)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) get_audio_max_polyphony() i64 {
	mut result := i64(0)
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_audio_max_polyphony")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) set_root_motion_track(path NodePath) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("set_root_motion_track")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) get_root_motion_track() NodePath {
	mut result := NodePath{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_root_motion_track")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) set_root_motion_local(enabled bool) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("set_root_motion_local")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) is_root_motion_local() bool {
	mut result := false
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("is_root_motion_local")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) get_root_motion_position() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_root_motion_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) get_root_motion_rotation() Quaternion {
	mut result := Quaternion{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_root_motion_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) get_root_motion_scale() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_root_motion_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) get_root_motion_position_accumulator() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_root_motion_position_accumulator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) get_root_motion_rotation_accumulator() Quaternion {
	mut result := Quaternion{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_root_motion_rotation_accumulator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) get_root_motion_scale_accumulator() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("get_root_motion_scale_accumulator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) clear_caches() {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("clear_caches")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) advance(delta f64) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("advance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AnimationMixer_capture_Cfg {
pub:
	trans_type TweenTransitionType
	ease_type TweenEaseType
}

pub fn (s &AnimationMixer) capture(name string, duration f64, cfg AnimationMixer_capture_Cfg) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("capture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1333632127)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&duration)}
	i64_trans_type := i64(cfg.trans_type)
	args[2] = unsafe{voidptr(&i64_trans_type)}
	i64_ease_type := i64(cfg.ease_type)
	args[3] = unsafe{voidptr(&i64_ease_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) set_reset_on_save_enabled(enabled bool) {
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("set_reset_on_save_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationMixer) is_reset_on_save_enabled() bool {
	mut result := false
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("is_reset_on_save_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationMixer) find_animation(animation Animation) string {
	mut result := StringName{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("find_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1559484580)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&animation.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationMixer) find_animation_library(animation Animation) string {
	mut result := StringName{}
	classname := StringName.new("AnimationMixer")
	fnname := StringName.new("find_animation_library")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1559484580)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&animation.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
