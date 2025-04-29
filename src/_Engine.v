module gd

pub struct Engine {
	Object
}

pub fn Engine.get_singleton() Engine {
	sn := StringName.new("Engine")
	result := Engine{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &Engine) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Engine) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Engine) set_physics_ticks_per_second(physics_ticks_per_second i64) {
	classname := StringName.new("Engine")
	fnname := StringName.new("set_physics_ticks_per_second")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&physics_ticks_per_second)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Engine) get_physics_ticks_per_second() i64 {
	mut result := i64(0)
	classname := StringName.new("Engine")
	fnname := StringName.new("get_physics_ticks_per_second")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) set_max_physics_steps_per_frame(max_physics_steps i64) {
	classname := StringName.new("Engine")
	fnname := StringName.new("set_max_physics_steps_per_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_physics_steps)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Engine) get_max_physics_steps_per_frame() i64 {
	mut result := i64(0)
	classname := StringName.new("Engine")
	fnname := StringName.new("get_max_physics_steps_per_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) set_physics_jitter_fix(physics_jitter_fix f64) {
	classname := StringName.new("Engine")
	fnname := StringName.new("set_physics_jitter_fix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&physics_jitter_fix)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Engine) get_physics_jitter_fix() f64 {
	mut result := f64(0)
	classname := StringName.new("Engine")
	fnname := StringName.new("get_physics_jitter_fix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_physics_interpolation_fraction() f64 {
	mut result := f64(0)
	classname := StringName.new("Engine")
	fnname := StringName.new("get_physics_interpolation_fraction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) set_max_fps(max_fps i64) {
	classname := StringName.new("Engine")
	fnname := StringName.new("set_max_fps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_fps)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Engine) get_max_fps() i64 {
	mut result := i64(0)
	classname := StringName.new("Engine")
	fnname := StringName.new("get_max_fps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) set_time_scale(time_scale f64) {
	classname := StringName.new("Engine")
	fnname := StringName.new("set_time_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Engine) get_time_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("Engine")
	fnname := StringName.new("get_time_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_frames_drawn() i64 {
	mut result := i64(0)
	classname := StringName.new("Engine")
	fnname := StringName.new("get_frames_drawn")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_frames_per_second() f64 {
	mut result := f64(0)
	classname := StringName.new("Engine")
	fnname := StringName.new("get_frames_per_second")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_physics_frames() i64 {
	mut result := i64(0)
	classname := StringName.new("Engine")
	fnname := StringName.new("get_physics_frames")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_process_frames() i64 {
	mut result := i64(0)
	classname := StringName.new("Engine")
	fnname := StringName.new("get_process_frames")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_main_loop() MainLoop {
	mut result := MainLoop{}
	classname := StringName.new("Engine")
	fnname := StringName.new("get_main_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1016888095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_version_info() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Engine")
	fnname := StringName.new("get_version_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_author_info() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Engine")
	fnname := StringName.new("get_author_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_copyright_info() Array {
	mut result := Array{}
	classname := StringName.new("Engine")
	fnname := StringName.new("get_copyright_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_donor_info() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Engine")
	fnname := StringName.new("get_donor_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_license_info() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Engine")
	fnname := StringName.new("get_license_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_license_text() string {
	mut result := String{}
	classname := StringName.new("Engine")
	fnname := StringName.new("get_license_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Engine) get_architecture_name() string {
	mut result := String{}
	classname := StringName.new("Engine")
	fnname := StringName.new("get_architecture_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Engine) is_in_physics_frame() bool {
	mut result := false
	classname := StringName.new("Engine")
	fnname := StringName.new("is_in_physics_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) has_singleton(name string) bool {
	mut result := false
	classname := StringName.new("Engine")
	fnname := StringName.new("has_singleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_singleton(name string) Object {
	mut result := Object{}
	classname := StringName.new("Engine")
	fnname := StringName.new("get_singleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1371597918)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) register_singleton(name string, instance Object) {
	classname := StringName.new("Engine")
	fnname := StringName.new("register_singleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 965313290)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&instance.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Engine) unregister_singleton(name string) {
	classname := StringName.new("Engine")
	fnname := StringName.new("unregister_singleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Engine) get_singleton_list() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("Engine")
	fnname := StringName.new("get_singleton_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) register_script_language(language ScriptLanguage) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("Engine")
	fnname := StringName.new("register_script_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1850254898)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&language.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &Engine) unregister_script_language(language ScriptLanguage) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("Engine")
	fnname := StringName.new("unregister_script_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1850254898)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&language.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &Engine) get_script_language_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Engine")
	fnname := StringName.new("get_script_language_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_script_language(index i64) ScriptLanguage {
	mut result := ScriptLanguage{}
	classname := StringName.new("Engine")
	fnname := StringName.new("get_script_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2151255799)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) is_editor_hint() bool {
	mut result := false
	classname := StringName.new("Engine")
	fnname := StringName.new("is_editor_hint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) is_embedded_in_editor() bool {
	mut result := false
	classname := StringName.new("Engine")
	fnname := StringName.new("is_embedded_in_editor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) get_write_movie_path() string {
	mut result := String{}
	classname := StringName.new("Engine")
	fnname := StringName.new("get_write_movie_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Engine) set_print_to_stdout(enabled bool) {
	classname := StringName.new("Engine")
	fnname := StringName.new("set_print_to_stdout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Engine) is_printing_to_stdout() bool {
	mut result := false
	classname := StringName.new("Engine")
	fnname := StringName.new("is_printing_to_stdout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Engine) set_print_error_messages(enabled bool) {
	classname := StringName.new("Engine")
	fnname := StringName.new("set_print_error_messages")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Engine) is_printing_error_messages() bool {
	mut result := false
	classname := StringName.new("Engine")
	fnname := StringName.new("is_printing_error_messages")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
