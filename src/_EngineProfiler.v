module gd

pub struct EngineProfiler {
	RefCounted
}

pub fn (s &EngineProfiler) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EngineProfiler) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEngineProfilerToggle {
mut:
	toggle_(enable bool, options Array)
}

pub fn (s &EngineProfiler) gd_toggle(enable bool, options Array) {
	classname := StringName.new("EngineProfiler")
	fnname := StringName.new("_toggle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1157301103)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	args[1] = unsafe{voidptr(&options)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEngineProfilerAddFrame {
mut:
	add_frame_(data Array)
}

pub fn (s &EngineProfiler) gd_add_frame(data Array) {
	classname := StringName.new("EngineProfiler")
	fnname := StringName.new("_add_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEngineProfilerTick {
mut:
	tick_(frame_time f64, process_time f64, physics_time f64, physics_frame_time f64)
}

pub fn (s &EngineProfiler) gd_tick(frame_time f64, process_time f64, physics_time f64, physics_frame_time f64) {
	classname := StringName.new("EngineProfiler")
	fnname := StringName.new("_tick")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3948312143)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&frame_time)}
	args[1] = unsafe{voidptr(&process_time)}
	args[2] = unsafe{voidptr(&physics_time)}
	args[3] = unsafe{voidptr(&physics_frame_time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
