module gd

pub struct WorkerThreadPool {
	Object
}

pub fn WorkerThreadPool.get_singleton() WorkerThreadPool {
	sn := StringName.new("WorkerThreadPool")
	result := WorkerThreadPool{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &WorkerThreadPool) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s WorkerThreadPool) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct WorkerThreadPool_add_task_Cfg {
pub:
	high_priority bool
	description string
}

pub fn (s &WorkerThreadPool) add_task(action Callable, cfg WorkerThreadPool_add_task_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("WorkerThreadPool")
	fnname := StringName.new("add_task")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3745067146)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&action)}
	args[1] = unsafe{voidptr(&cfg.high_priority)}
	arg_sn2 := String.new(cfg.description)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WorkerThreadPool) is_task_completed(task_id i64) bool {
	mut result := false
	classname := StringName.new("WorkerThreadPool")
	fnname := StringName.new("is_task_completed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&task_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WorkerThreadPool) wait_for_task_completion(task_id i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("WorkerThreadPool")
	fnname := StringName.new("wait_for_task_completion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&task_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct WorkerThreadPool_add_group_task_Cfg {
pub:
	tasks_needed i64
	high_priority bool
	description string
}

pub fn (s &WorkerThreadPool) add_group_task(action Callable, elements i64, cfg WorkerThreadPool_add_group_task_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("WorkerThreadPool")
	fnname := StringName.new("add_group_task")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1801953219)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&action)}
	args[1] = unsafe{voidptr(&elements)}
	args[2] = unsafe{voidptr(&cfg.tasks_needed)}
	args[3] = unsafe{voidptr(&cfg.high_priority)}
	arg_sn4 := String.new(cfg.description)
	args[4] = unsafe{voidptr(&arg_sn4)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn4.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WorkerThreadPool) is_group_task_completed(group_id i64) bool {
	mut result := false
	classname := StringName.new("WorkerThreadPool")
	fnname := StringName.new("is_group_task_completed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&group_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WorkerThreadPool) get_group_processed_element_count(group_id i64) i64 {
	mut result := i64(0)
	classname := StringName.new("WorkerThreadPool")
	fnname := StringName.new("get_group_processed_element_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&group_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WorkerThreadPool) wait_for_group_task_completion(group_id i64) {
	classname := StringName.new("WorkerThreadPool")
	fnname := StringName.new("wait_for_group_task_completion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&group_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
