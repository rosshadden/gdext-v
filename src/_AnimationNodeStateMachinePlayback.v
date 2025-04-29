module gd

pub struct AnimationNodeStateMachinePlayback {
	Resource
}

pub fn (s &AnimationNodeStateMachinePlayback) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationNodeStateMachinePlayback) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct AnimationNodeStateMachinePlayback_travel_Cfg {
pub:
	reset_on_teleport bool
}

pub fn (s &AnimationNodeStateMachinePlayback) travel(to_node string, cfg AnimationNodeStateMachinePlayback_travel_Cfg) {
	classname := StringName.new("AnimationNodeStateMachinePlayback")
	fnname := StringName.new("travel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3823612587)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(to_node)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.reset_on_teleport)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AnimationNodeStateMachinePlayback_start_Cfg {
pub:
	reset bool
}

pub fn (s &AnimationNodeStateMachinePlayback) start(node string, cfg AnimationNodeStateMachinePlayback_start_Cfg) {
	classname := StringName.new("AnimationNodeStateMachinePlayback")
	fnname := StringName.new("start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3823612587)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(node)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.reset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeStateMachinePlayback) next() {
	classname := StringName.new("AnimationNodeStateMachinePlayback")
	fnname := StringName.new("next")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeStateMachinePlayback) stop() {
	classname := StringName.new("AnimationNodeStateMachinePlayback")
	fnname := StringName.new("stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeStateMachinePlayback) is_playing() bool {
	mut result := false
	classname := StringName.new("AnimationNodeStateMachinePlayback")
	fnname := StringName.new("is_playing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeStateMachinePlayback) get_current_node() string {
	mut result := StringName{}
	classname := StringName.new("AnimationNodeStateMachinePlayback")
	fnname := StringName.new("get_current_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationNodeStateMachinePlayback) get_current_play_position() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeStateMachinePlayback")
	fnname := StringName.new("get_current_play_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeStateMachinePlayback) get_current_length() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeStateMachinePlayback")
	fnname := StringName.new("get_current_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeStateMachinePlayback) get_fading_from_node() string {
	mut result := StringName{}
	classname := StringName.new("AnimationNodeStateMachinePlayback")
	fnname := StringName.new("get_fading_from_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationNodeStateMachinePlayback) get_travel_path() Array {
	mut result := Array{}
	classname := StringName.new("AnimationNodeStateMachinePlayback")
	fnname := StringName.new("get_travel_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
