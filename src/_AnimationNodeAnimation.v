module gd

pub enum AnimationNodeAnimationPlayMode as i64 {
	play_mode_forward = 0
	play_mode_backward = 1
}

pub struct AnimationNodeAnimation {
	AnimationRootNode
}

pub fn (s &AnimationNodeAnimation) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationNodeAnimation) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AnimationNodeAnimation) set_animation(name string) {
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("set_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeAnimation) get_animation() string {
	mut result := StringName{}
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("get_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationNodeAnimation) set_play_mode(mode AnimationNodeAnimationPlayMode) {
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("set_play_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3347718873)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeAnimation) get_play_mode() AnimationNodeAnimationPlayMode {
	mut result := i64(AnimationNodeAnimationPlayMode.play_mode_forward)
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("get_play_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2061244637)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationNodeAnimationPlayMode(result)}
}

pub fn (s &AnimationNodeAnimation) set_advance_on_start(advance_on_start bool) {
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("set_advance_on_start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&advance_on_start)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeAnimation) is_advance_on_start() bool {
	mut result := false
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("is_advance_on_start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeAnimation) set_use_custom_timeline(use_custom_timeline bool) {
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("set_use_custom_timeline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_custom_timeline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeAnimation) is_using_custom_timeline() bool {
	mut result := false
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("is_using_custom_timeline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeAnimation) set_timeline_length(timeline_length f64) {
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("set_timeline_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&timeline_length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeAnimation) get_timeline_length() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("get_timeline_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeAnimation) set_stretch_time_scale(stretch_time_scale bool) {
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("set_stretch_time_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stretch_time_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeAnimation) is_stretching_time_scale() bool {
	mut result := false
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("is_stretching_time_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeAnimation) set_start_offset(start_offset f64) {
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("set_start_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&start_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeAnimation) get_start_offset() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("get_start_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeAnimation) set_loop_mode(loop_mode AnimationLoopMode) {
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("set_loop_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3155355575)
	mut args := unsafe { [1]voidptr{} }
	i64_loop_mode := i64(loop_mode)
	args[0] = unsafe{voidptr(&i64_loop_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeAnimation) get_loop_mode() AnimationLoopMode {
	mut result := i64(AnimationLoopMode.loop_none)
	classname := StringName.new("AnimationNodeAnimation")
	fnname := StringName.new("get_loop_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1988889481)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationLoopMode(result)}
}
