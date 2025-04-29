module gd

pub enum TimerTimerProcessCallback as i64 {
	timer_process_physics = 0
	timer_process_idle = 1
}

pub struct Timer {
	Node
}

pub fn (s &Timer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Timer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Timer) set_wait_time(time_sec f64) {
	classname := StringName.new("Timer")
	fnname := StringName.new("set_wait_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time_sec)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Timer) get_wait_time() f64 {
	mut result := f64(0)
	classname := StringName.new("Timer")
	fnname := StringName.new("get_wait_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Timer) set_one_shot(enable bool) {
	classname := StringName.new("Timer")
	fnname := StringName.new("set_one_shot")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Timer) is_one_shot() bool {
	mut result := false
	classname := StringName.new("Timer")
	fnname := StringName.new("is_one_shot")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Timer) set_autostart(enable bool) {
	classname := StringName.new("Timer")
	fnname := StringName.new("set_autostart")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Timer) has_autostart() bool {
	mut result := false
	classname := StringName.new("Timer")
	fnname := StringName.new("has_autostart")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Timer_start_Cfg {
pub:
	time_sec f64
}

pub fn (s &Timer) start(cfg Timer_start_Cfg) {
	classname := StringName.new("Timer")
	fnname := StringName.new("start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1392008558)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.time_sec)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Timer) stop() {
	classname := StringName.new("Timer")
	fnname := StringName.new("stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Timer) set_paused(paused bool) {
	classname := StringName.new("Timer")
	fnname := StringName.new("set_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&paused)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Timer) is_paused() bool {
	mut result := false
	classname := StringName.new("Timer")
	fnname := StringName.new("is_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Timer) set_ignore_time_scale(ignore bool) {
	classname := StringName.new("Timer")
	fnname := StringName.new("set_ignore_time_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ignore)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Timer) is_ignoring_time_scale() bool {
	mut result := false
	classname := StringName.new("Timer")
	fnname := StringName.new("is_ignoring_time_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Timer) is_stopped() bool {
	mut result := false
	classname := StringName.new("Timer")
	fnname := StringName.new("is_stopped")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Timer) get_time_left() f64 {
	mut result := f64(0)
	classname := StringName.new("Timer")
	fnname := StringName.new("get_time_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Timer) set_timer_process_callback(callback TimerTimerProcessCallback) {
	classname := StringName.new("Timer")
	fnname := StringName.new("set_timer_process_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3469495063)
	mut args := unsafe { [1]voidptr{} }
	i64_callback := i64(callback)
	args[0] = unsafe{voidptr(&i64_callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Timer) get_timer_process_callback() TimerTimerProcessCallback {
	mut result := i64(TimerTimerProcessCallback.timer_process_physics)
	classname := StringName.new("Timer")
	fnname := StringName.new("get_timer_process_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2672570227)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TimerTimerProcessCallback(result)}
}
