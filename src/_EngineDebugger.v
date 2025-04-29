module gd

pub struct EngineDebugger {
	Object
}

pub fn EngineDebugger.get_singleton() EngineDebugger {
	sn := StringName.new("EngineDebugger")
	result := EngineDebugger{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &EngineDebugger) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EngineDebugger) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &EngineDebugger) is_active() bool {
	mut result := false
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("is_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EngineDebugger) register_profiler(name string, profiler EngineProfiler) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("register_profiler")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3651669560)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&profiler.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EngineDebugger) unregister_profiler(name string) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("unregister_profiler")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EngineDebugger) is_profiling(name string) bool {
	mut result := false
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("is_profiling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041966384)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EngineDebugger) has_profiler(name string) bool {
	mut result := false
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("has_profiler")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041966384)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EngineDebugger) profiler_add_frame_data(name string, data Array) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("profiler_add_frame_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1895267858)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EngineDebugger_profiler_enable_Cfg {
pub:
	arguments Array
}

pub fn (s &EngineDebugger) profiler_enable(name string, enable bool, cfg EngineDebugger_profiler_enable_Cfg) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("profiler_enable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3192561009)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&enable)}
	args[2] = unsafe{voidptr(&cfg.arguments)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EngineDebugger) register_message_capture(name string, callable Callable) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("register_message_capture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1874754934)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EngineDebugger) unregister_message_capture(name string) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("unregister_message_capture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EngineDebugger) has_capture(name string) bool {
	mut result := false
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("has_capture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041966384)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EngineDebugger) line_poll() {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("line_poll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EngineDebugger) send_message(message string, data Array) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("send_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1209351045)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EngineDebugger_debug_Cfg {
pub:
	can_continue bool
	is_error_breakpoint bool
}

pub fn (s &EngineDebugger) debug(cfg EngineDebugger_debug_Cfg) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("debug")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2751962654)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.can_continue)}
	args[1] = unsafe{voidptr(&cfg.is_error_breakpoint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EngineDebugger_script_debug_Cfg {
pub:
	can_continue bool
	is_error_breakpoint bool
}

pub fn (s &EngineDebugger) script_debug(language ScriptLanguage, cfg EngineDebugger_script_debug_Cfg) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("script_debug")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2442343672)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&language.ptr)
	args[1] = unsafe{voidptr(&cfg.can_continue)}
	args[2] = unsafe{voidptr(&cfg.is_error_breakpoint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EngineDebugger) set_lines_left(lines i64) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("set_lines_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&lines)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EngineDebugger) get_lines_left() i64 {
	mut result := i64(0)
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("get_lines_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EngineDebugger) set_depth(depth i64) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("set_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&depth)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EngineDebugger) get_depth() i64 {
	mut result := i64(0)
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("get_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EngineDebugger) is_breakpoint(line i64, source string) bool {
	mut result := false
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("is_breakpoint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 921227809)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	arg_sn1 := StringName.new(source)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EngineDebugger) is_skipping_breakpoints() bool {
	mut result := false
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("is_skipping_breakpoints")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EngineDebugger) insert_breakpoint(line i64, source string) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("insert_breakpoint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	arg_sn1 := StringName.new(source)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EngineDebugger) remove_breakpoint(line i64, source string) {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("remove_breakpoint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	arg_sn1 := StringName.new(source)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EngineDebugger) clear_breakpoints() {
	classname := StringName.new("EngineDebugger")
	fnname := StringName.new("clear_breakpoints")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
