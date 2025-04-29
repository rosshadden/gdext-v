module gd

pub struct AnimationNodeTransition {
	AnimationNodeSync
}

pub fn (s &AnimationNodeTransition) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationNodeTransition) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AnimationNodeTransition) set_input_count(input_count i64) {
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("set_input_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&input_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeTransition) set_input_as_auto_advance(input i64, enable bool) {
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("set_input_as_auto_advance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&input)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeTransition) is_input_set_as_auto_advance(input i64) bool {
	mut result := false
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("is_input_set_as_auto_advance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&input)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeTransition) set_input_break_loop_at_end(input i64, enable bool) {
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("set_input_break_loop_at_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&input)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeTransition) is_input_loop_broken_at_end(input i64) bool {
	mut result := false
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("is_input_loop_broken_at_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&input)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeTransition) set_input_reset(input i64, enable bool) {
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("set_input_reset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&input)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeTransition) is_input_reset(input i64) bool {
	mut result := false
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("is_input_reset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&input)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeTransition) set_xfade_time(time f64) {
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("set_xfade_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeTransition) get_xfade_time() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("get_xfade_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeTransition) set_xfade_curve(curve Curve) {
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("set_xfade_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeTransition) get_xfade_curve() Curve {
	mut result := Curve{}
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("get_xfade_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeTransition) set_allow_transition_to_self(enable bool) {
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("set_allow_transition_to_self")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeTransition) is_allow_transition_to_self() bool {
	mut result := false
	classname := StringName.new("AnimationNodeTransition")
	fnname := StringName.new("is_allow_transition_to_self")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
