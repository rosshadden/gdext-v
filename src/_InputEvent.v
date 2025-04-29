module gd

pub struct InputEvent {
	Resource
}

pub fn (s &InputEvent) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s InputEvent) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &InputEvent) set_device(device i64) {
	classname := StringName.new("InputEvent")
	fnname := StringName.new("set_device")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputEvent) get_device() i64 {
	mut result := i64(0)
	classname := StringName.new("InputEvent")
	fnname := StringName.new("get_device")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct InputEvent_is_action_Cfg {
pub:
	exact_match bool
}

pub fn (s &InputEvent) is_action(action string, cfg InputEvent_is_action_Cfg) bool {
	mut result := false
	classname := StringName.new("InputEvent")
	fnname := StringName.new("is_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.exact_match)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct InputEvent_is_action_pressed_Cfg {
pub:
	allow_echo bool
	exact_match bool
}

pub fn (s &InputEvent) is_action_pressed(action string, cfg InputEvent_is_action_pressed_Cfg) bool {
	mut result := false
	classname := StringName.new("InputEvent")
	fnname := StringName.new("is_action_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1631499404)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.allow_echo)}
	args[2] = unsafe{voidptr(&cfg.exact_match)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct InputEvent_is_action_released_Cfg {
pub:
	exact_match bool
}

pub fn (s &InputEvent) is_action_released(action string, cfg InputEvent_is_action_released_Cfg) bool {
	mut result := false
	classname := StringName.new("InputEvent")
	fnname := StringName.new("is_action_released")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.exact_match)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct InputEvent_get_action_strength_Cfg {
pub:
	exact_match bool
}

pub fn (s &InputEvent) get_action_strength(action string, cfg InputEvent_get_action_strength_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("InputEvent")
	fnname := StringName.new("get_action_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 801543509)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.exact_match)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEvent) is_canceled() bool {
	mut result := false
	classname := StringName.new("InputEvent")
	fnname := StringName.new("is_canceled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEvent) is_pressed() bool {
	mut result := false
	classname := StringName.new("InputEvent")
	fnname := StringName.new("is_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEvent) is_released() bool {
	mut result := false
	classname := StringName.new("InputEvent")
	fnname := StringName.new("is_released")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEvent) is_echo() bool {
	mut result := false
	classname := StringName.new("InputEvent")
	fnname := StringName.new("is_echo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEvent) as_text() string {
	mut result := String{}
	classname := StringName.new("InputEvent")
	fnname := StringName.new("as_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct InputEvent_is_match_Cfg {
pub:
	exact_match bool
}

pub fn (s &InputEvent) is_match(event InputEvent, cfg InputEvent_is_match_Cfg) bool {
	mut result := false
	classname := StringName.new("InputEvent")
	fnname := StringName.new("is_match")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1754951977)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&event.ptr)
	args[1] = unsafe{voidptr(&cfg.exact_match)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEvent) is_action_type() bool {
	mut result := false
	classname := StringName.new("InputEvent")
	fnname := StringName.new("is_action_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputEvent) accumulate(with_event InputEvent) bool {
	mut result := false
	classname := StringName.new("InputEvent")
	fnname := StringName.new("accumulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1062211774)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with_event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct InputEvent_xformed_by_Cfg {
pub:
	local_ofs Vector2
}

pub fn (s &InputEvent) xformed_by(xform Transform2D, cfg InputEvent_xformed_by_Cfg) InputEvent {
	mut result := InputEvent{}
	classname := StringName.new("InputEvent")
	fnname := StringName.new("xformed_by")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1282766827)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&xform)}
	args[1] = unsafe{voidptr(&cfg.local_ofs)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
