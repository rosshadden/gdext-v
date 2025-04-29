module gd

pub enum AnimationNodeOneShotOneShotRequest as i64 {
	one_shot_request_none = 0
	one_shot_request_fire = 1
	one_shot_request_abort = 2
	one_shot_request_fade_out = 3
}

pub enum AnimationNodeOneShotMixMode as i64 {
	mix_mode_blend = 0
	mix_mode_add = 1
}

pub struct AnimationNodeOneShot {
	AnimationNodeSync
}

pub fn (s &AnimationNodeOneShot) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationNodeOneShot) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AnimationNodeOneShot) set_fadein_time(time f64) {
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("set_fadein_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeOneShot) get_fadein_time() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("get_fadein_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeOneShot) set_fadein_curve(curve Curve) {
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("set_fadein_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeOneShot) get_fadein_curve() Curve {
	mut result := Curve{}
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("get_fadein_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeOneShot) set_fadeout_time(time f64) {
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("set_fadeout_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeOneShot) get_fadeout_time() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("get_fadeout_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeOneShot) set_fadeout_curve(curve Curve) {
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("set_fadeout_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeOneShot) get_fadeout_curve() Curve {
	mut result := Curve{}
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("get_fadeout_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeOneShot) set_break_loop_at_end(enable bool) {
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("set_break_loop_at_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeOneShot) is_loop_broken_at_end() bool {
	mut result := false
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("is_loop_broken_at_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeOneShot) set_autorestart(active bool) {
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("set_autorestart")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&active)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeOneShot) has_autorestart() bool {
	mut result := false
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("has_autorestart")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeOneShot) set_autorestart_delay(time f64) {
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("set_autorestart_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeOneShot) get_autorestart_delay() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("get_autorestart_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeOneShot) set_autorestart_random_delay(time f64) {
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("set_autorestart_random_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeOneShot) get_autorestart_random_delay() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("get_autorestart_random_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeOneShot) set_mix_mode(mode AnimationNodeOneShotMixMode) {
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("set_mix_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1018899799)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeOneShot) get_mix_mode() AnimationNodeOneShotMixMode {
	mut result := i64(AnimationNodeOneShotMixMode.mix_mode_blend)
	classname := StringName.new("AnimationNodeOneShot")
	fnname := StringName.new("get_mix_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3076550526)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationNodeOneShotMixMode(result)}
}
