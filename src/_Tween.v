module gd

pub enum TweenTweenProcessMode as i64 {
	tween_process_physics = 0
	tween_process_idle = 1
}

pub enum TweenTweenPauseMode as i64 {
	tween_pause_bound = 0
	tween_pause_stop = 1
	tween_pause_process = 2
}

pub enum TweenTransitionType as i64 {
	trans_linear = 0
	trans_sine = 1
	trans_quint = 2
	trans_quart = 3
	trans_quad = 4
	trans_expo = 5
	trans_elastic = 6
	trans_cubic = 7
	trans_circ = 8
	trans_bounce = 9
	trans_back = 10
	trans_spring = 11
}

pub enum TweenEaseType as i64 {
	ease_in = 0
	ease_out = 1
	ease_in_out = 2
	ease_out_in = 3
}

pub struct Tween {
	RefCounted
}

pub fn (s &Tween) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Tween) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Tween) tween_property(object Object, property NodePath, final_val Variant, duration f64) PropertyTweener {
	mut result := PropertyTweener{}
	classname := StringName.new("Tween")
	fnname := StringName.new("tween_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4049770449)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&object.ptr)
	args[1] = unsafe{voidptr(&property)}
	args[2] = unsafe{voidptr(&final_val)}
	args[3] = unsafe{voidptr(&duration)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) tween_interval(time f64) IntervalTweener {
	mut result := IntervalTweener{}
	classname := StringName.new("Tween")
	fnname := StringName.new("tween_interval")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 413360199)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) tween_callback(callback Callable) CallbackTweener {
	mut result := CallbackTweener{}
	classname := StringName.new("Tween")
	fnname := StringName.new("tween_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1540176488)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) tween_method(method Callable, from Variant, to Variant, duration f64) MethodTweener {
	mut result := MethodTweener{}
	classname := StringName.new("Tween")
	fnname := StringName.new("tween_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2337877153)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&method)}
	args[1] = unsafe{voidptr(&from)}
	args[2] = unsafe{voidptr(&to)}
	args[3] = unsafe{voidptr(&duration)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) tween_subtween(subtween Tween) SubtweenTweener {
	mut result := SubtweenTweener{}
	classname := StringName.new("Tween")
	fnname := StringName.new("tween_subtween")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1567358477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&subtween.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) custom_step(delta f64) bool {
	mut result := false
	classname := StringName.new("Tween")
	fnname := StringName.new("custom_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 330693286)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) stop() {
	classname := StringName.new("Tween")
	fnname := StringName.new("stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tween) pause() {
	classname := StringName.new("Tween")
	fnname := StringName.new("pause")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tween) play() {
	classname := StringName.new("Tween")
	fnname := StringName.new("play")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tween) kill() {
	classname := StringName.new("Tween")
	fnname := StringName.new("kill")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Tween) get_total_elapsed_time() f64 {
	mut result := f64(0)
	classname := StringName.new("Tween")
	fnname := StringName.new("get_total_elapsed_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) is_running() bool {
	mut result := false
	classname := StringName.new("Tween")
	fnname := StringName.new("is_running")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) is_valid() bool {
	mut result := false
	classname := StringName.new("Tween")
	fnname := StringName.new("is_valid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) bind_node(node Node) Tween {
	mut result := Tween{}
	classname := StringName.new("Tween")
	fnname := StringName.new("bind_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2946786331)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) set_process_mode(mode TweenTweenProcessMode) Tween {
	mut result := Tween{}
	classname := StringName.new("Tween")
	fnname := StringName.new("set_process_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 855258840)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) set_pause_mode(mode TweenTweenPauseMode) Tween {
	mut result := Tween{}
	classname := StringName.new("Tween")
	fnname := StringName.new("set_pause_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3363368837)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Tween_set_ignore_time_scale_Cfg {
pub:
	ignore bool
}

pub fn (s &Tween) set_ignore_time_scale(cfg Tween_set_ignore_time_scale_Cfg) Tween {
	mut result := Tween{}
	classname := StringName.new("Tween")
	fnname := StringName.new("set_ignore_time_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1942052223)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.ignore)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Tween_set_parallel_Cfg {
pub:
	parallel bool
}

pub fn (s &Tween) set_parallel(cfg Tween_set_parallel_Cfg) Tween {
	mut result := Tween{}
	classname := StringName.new("Tween")
	fnname := StringName.new("set_parallel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1942052223)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.parallel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Tween_set_loops_Cfg {
pub:
	loops i64
}

pub fn (s &Tween) set_loops(cfg Tween_set_loops_Cfg) Tween {
	mut result := Tween{}
	classname := StringName.new("Tween")
	fnname := StringName.new("set_loops")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2670836414)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.loops)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) get_loops_left() i64 {
	mut result := i64(0)
	classname := StringName.new("Tween")
	fnname := StringName.new("get_loops_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) set_speed_scale(speed f64) Tween {
	mut result := Tween{}
	classname := StringName.new("Tween")
	fnname := StringName.new("set_speed_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3961971106)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&speed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) set_trans(trans TweenTransitionType) Tween {
	mut result := Tween{}
	classname := StringName.new("Tween")
	fnname := StringName.new("set_trans")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3965963875)
	mut args := unsafe { [1]voidptr{} }
	i64_trans := i64(trans)
	args[0] = unsafe{voidptr(&i64_trans)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) set_ease(ease TweenEaseType) Tween {
	mut result := Tween{}
	classname := StringName.new("Tween")
	fnname := StringName.new("set_ease")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1208117252)
	mut args := unsafe { [1]voidptr{} }
	i64_ease := i64(ease)
	args[0] = unsafe{voidptr(&i64_ease)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) parallel() Tween {
	mut result := Tween{}
	classname := StringName.new("Tween")
	fnname := StringName.new("parallel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3426978995)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Tween) chain() Tween {
	mut result := Tween{}
	classname := StringName.new("Tween")
	fnname := StringName.new("chain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3426978995)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn Tween.interpolate_value(initial_value Variant, delta_value Variant, elapsed_time f64, duration f64, trans_type TweenTransitionType, ease_type TweenEaseType) Variant {
	mut result := Variant{}
	classname := StringName.new("Tween")
	fnname := StringName.new("interpolate_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3452526450)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&initial_value)}
	args[1] = unsafe{voidptr(&delta_value)}
	args[2] = unsafe{voidptr(&elapsed_time)}
	args[3] = unsafe{voidptr(&duration)}
	i64_trans_type := i64(trans_type)
	args[4] = unsafe{voidptr(&i64_trans_type)}
	i64_ease_type := i64(ease_type)
	args[5] = unsafe{voidptr(&i64_ease_type)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
