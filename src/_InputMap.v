module gd

pub struct InputMap {
	Object
}

pub fn InputMap.get_singleton() InputMap {
	sn := StringName.new("InputMap")
	result := InputMap{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &InputMap) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s InputMap) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &InputMap) has_action(action string) bool {
	mut result := false
	classname := StringName.new("InputMap")
	fnname := StringName.new("has_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputMap) get_actions() Array {
	mut result := Array{}
	classname := StringName.new("InputMap")
	fnname := StringName.new("get_actions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct InputMap_add_action_Cfg {
pub:
	deadzone f64
}

pub fn (s &InputMap) add_action(action string, cfg InputMap_add_action_Cfg) {
	classname := StringName.new("InputMap")
	fnname := StringName.new("add_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1195233573)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.deadzone)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputMap) erase_action(action string) {
	classname := StringName.new("InputMap")
	fnname := StringName.new("erase_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputMap) get_action_description(action string) string {
	mut result := String{}
	classname := StringName.new("InputMap")
	fnname := StringName.new("get_action_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 957595536)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &InputMap) action_set_deadzone(action string, deadzone f64) {
	classname := StringName.new("InputMap")
	fnname := StringName.new("action_set_deadzone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4135858297)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&deadzone)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputMap) action_get_deadzone(action string) f64 {
	mut result := f64(0)
	classname := StringName.new("InputMap")
	fnname := StringName.new("action_get_deadzone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1391627649)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputMap) action_add_event(action string, event InputEvent) {
	classname := StringName.new("InputMap")
	fnname := StringName.new("action_add_event")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 518302593)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputMap) action_has_event(action string, event InputEvent) bool {
	mut result := false
	classname := StringName.new("InputMap")
	fnname := StringName.new("action_has_event")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1185871985)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputMap) action_erase_event(action string, event InputEvent) {
	classname := StringName.new("InputMap")
	fnname := StringName.new("action_erase_event")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 518302593)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputMap) action_erase_events(action string) {
	classname := StringName.new("InputMap")
	fnname := StringName.new("action_erase_events")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &InputMap) action_get_events(action string) Array {
	mut result := Array{}
	classname := StringName.new("InputMap")
	fnname := StringName.new("action_get_events")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 689397652)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct InputMap_event_is_action_Cfg {
pub:
	exact_match bool
}

pub fn (s &InputMap) event_is_action(event InputEvent, action string, cfg InputMap_event_is_action_Cfg) bool {
	mut result := false
	classname := StringName.new("InputMap")
	fnname := StringName.new("event_is_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3193353650)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&event.ptr)
	arg_sn1 := StringName.new(action)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.exact_match)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InputMap) load_from_project_settings() {
	classname := StringName.new("InputMap")
	fnname := StringName.new("load_from_project_settings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
