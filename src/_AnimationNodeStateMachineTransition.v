module gd

pub enum AnimationNodeStateMachineTransitionSwitchMode as i64 {
	switch_mode_immediate = 0
	switch_mode_sync = 1
	switch_mode_at_end = 2
}

pub enum AnimationNodeStateMachineTransitionAdvanceMode as i64 {
	advance_mode_disabled = 0
	advance_mode_enabled = 1
	advance_mode_auto = 2
}

pub struct AnimationNodeStateMachineTransition {
	Resource
}

pub fn (s &AnimationNodeStateMachineTransition) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationNodeStateMachineTransition) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AnimationNodeStateMachineTransition) set_switch_mode(mode AnimationNodeStateMachineTransitionSwitchMode) {
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("set_switch_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074906633)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeStateMachineTransition) get_switch_mode() AnimationNodeStateMachineTransitionSwitchMode {
	mut result := i64(AnimationNodeStateMachineTransitionSwitchMode.switch_mode_immediate)
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("get_switch_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138562085)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationNodeStateMachineTransitionSwitchMode(result)}
}

pub fn (s &AnimationNodeStateMachineTransition) set_advance_mode(mode AnimationNodeStateMachineTransitionAdvanceMode) {
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("set_advance_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1210869868)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeStateMachineTransition) get_advance_mode() AnimationNodeStateMachineTransitionAdvanceMode {
	mut result := i64(AnimationNodeStateMachineTransitionAdvanceMode.advance_mode_disabled)
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("get_advance_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 61101689)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationNodeStateMachineTransitionAdvanceMode(result)}
}

pub fn (s &AnimationNodeStateMachineTransition) set_advance_condition(name string) {
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("set_advance_condition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeStateMachineTransition) get_advance_condition() string {
	mut result := StringName{}
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("get_advance_condition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationNodeStateMachineTransition) set_xfade_time(secs f64) {
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("set_xfade_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&secs)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeStateMachineTransition) get_xfade_time() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("get_xfade_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeStateMachineTransition) set_xfade_curve(curve Curve) {
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("set_xfade_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeStateMachineTransition) get_xfade_curve() Curve {
	mut result := Curve{}
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("get_xfade_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeStateMachineTransition) set_break_loop_at_end(enable bool) {
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("set_break_loop_at_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeStateMachineTransition) is_loop_broken_at_end() bool {
	mut result := false
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("is_loop_broken_at_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeStateMachineTransition) set_reset(reset bool) {
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("set_reset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&reset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeStateMachineTransition) is_reset() bool {
	mut result := false
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("is_reset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeStateMachineTransition) set_priority(priority i64) {
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("set_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeStateMachineTransition) get_priority() i64 {
	mut result := i64(0)
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("get_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeStateMachineTransition) set_advance_expression(text string) {
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("set_advance_expression")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeStateMachineTransition) get_advance_expression() string {
	mut result := String{}
	classname := StringName.new("AnimationNodeStateMachineTransition")
	fnname := StringName.new("get_advance_expression")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
