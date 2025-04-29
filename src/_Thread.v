module gd

pub enum ThreadPriority as i64 {
	priority_low = 0
	priority_normal = 1
	priority_high = 2
}

pub struct Thread {
	RefCounted
}

pub fn (s &Thread) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Thread) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct Thread_start_Cfg {
pub:
	priority ThreadPriority
}

pub fn (s &Thread) start(callable Callable, cfg Thread_start_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("Thread")
	fnname := StringName.new("start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1327203254)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&callable)}
	i64_priority := i64(cfg.priority)
	args[1] = unsafe{voidptr(&i64_priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &Thread) get_id() string {
	mut result := String{}
	classname := StringName.new("Thread")
	fnname := StringName.new("get_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Thread) is_started() bool {
	mut result := false
	classname := StringName.new("Thread")
	fnname := StringName.new("is_started")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Thread) is_alive() bool {
	mut result := false
	classname := StringName.new("Thread")
	fnname := StringName.new("is_alive")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Thread) wait_to_finish() Variant {
	mut result := Variant{}
	classname := StringName.new("Thread")
	fnname := StringName.new("wait_to_finish")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1460262497)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn Thread.set_thread_safety_checks_enabled(enabled bool) {
	classname := StringName.new("Thread")
	fnname := StringName.new("set_thread_safety_checks_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
