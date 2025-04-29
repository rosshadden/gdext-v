module gd

pub enum OSRenderingDriver as i64 {
	rendering_driver_vulkan = 0
	rendering_driver_opengl3 = 1
	rendering_driver_d3d12 = 2
	rendering_driver_metal = 3
}

pub enum OSSystemDir as i64 {
	system_dir_desktop = 0
	system_dir_dcim = 1
	system_dir_documents = 2
	system_dir_downloads = 3
	system_dir_movies = 4
	system_dir_music = 5
	system_dir_pictures = 6
	system_dir_ringtones = 7
}

pub enum OSStdHandleType as i64 {
	std_handle_invalid = 0
	std_handle_console = 1
	std_handle_file = 2
	std_handle_pipe = 3
	std_handle_unknown = 4
}

pub struct OS {
	Object
}

pub fn OS.get_singleton() OS {
	sn := StringName.new("OS")
	result := OS{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &OS) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OS) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OS) get_entropy(size i64) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_entropy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 47165747)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_system_ca_certificates() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_system_ca_certificates")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_connected_midi_inputs() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_connected_midi_inputs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) open_midi_inputs() {
	classname := StringName.new("OS")
	fnname := StringName.new("open_midi_inputs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OS) close_midi_inputs() {
	classname := StringName.new("OS")
	fnname := StringName.new("close_midi_inputs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct OS_alert_Cfg {
pub:
	title string
}

pub fn (s &OS) alert(text string, cfg OS_alert_Cfg) {
	classname := StringName.new("OS")
	fnname := StringName.new("alert")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1783970740)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(cfg.title)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OS) crash(message string) {
	classname := StringName.new("OS")
	fnname := StringName.new("crash")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OS) set_low_processor_usage_mode(enable bool) {
	classname := StringName.new("OS")
	fnname := StringName.new("set_low_processor_usage_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OS) is_in_low_processor_usage_mode() bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("is_in_low_processor_usage_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) set_low_processor_usage_mode_sleep_usec(usec i64) {
	classname := StringName.new("OS")
	fnname := StringName.new("set_low_processor_usage_mode_sleep_usec")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&usec)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OS) get_low_processor_usage_mode_sleep_usec() i64 {
	mut result := i64(0)
	classname := StringName.new("OS")
	fnname := StringName.new("get_low_processor_usage_mode_sleep_usec")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) set_delta_smoothing(delta_smoothing_enabled bool) {
	classname := StringName.new("OS")
	fnname := StringName.new("set_delta_smoothing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delta_smoothing_enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OS) is_delta_smoothing_enabled() bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("is_delta_smoothing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_processor_count() i64 {
	mut result := i64(0)
	classname := StringName.new("OS")
	fnname := StringName.new("get_processor_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_processor_name() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_processor_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_system_fonts() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_system_fonts")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct OS_get_system_font_path_Cfg {
pub:
	weight i64
	stretch i64
	italic bool
}

pub fn (s &OS) get_system_font_path(font_name string, cfg OS_get_system_font_path_Cfg) string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_system_font_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 626580860)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(font_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.weight)}
	args[2] = unsafe{voidptr(&cfg.stretch)}
	args[3] = unsafe{voidptr(&cfg.italic)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct OS_get_system_font_path_for_text_Cfg {
pub:
	locale string
	script string
	weight i64
	stretch i64
	italic bool
}

pub fn (s &OS) get_system_font_path_for_text(font_name string, text string, cfg OS_get_system_font_path_for_text_Cfg) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_system_font_path_for_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 197317981)
	mut args := unsafe { [7]voidptr{} }
	arg_sn0 := String.new(font_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(text)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := String.new(cfg.locale)
	args[2] = unsafe{voidptr(&arg_sn2)}
	arg_sn3 := String.new(cfg.script)
	args[3] = unsafe{voidptr(&arg_sn3)}
	args[4] = unsafe{voidptr(&cfg.weight)}
	args[5] = unsafe{voidptr(&cfg.stretch)}
	args[6] = unsafe{voidptr(&cfg.italic)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn2.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_executable_path() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_executable_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct OS_read_string_from_stdin_Cfg {
pub:
	buffer_size i64
}

pub fn (s &OS) read_string_from_stdin(cfg OS_read_string_from_stdin_Cfg) string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("read_string_from_stdin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 723587915)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct OS_read_buffer_from_stdin_Cfg {
pub:
	buffer_size i64
}

pub fn (s &OS) read_buffer_from_stdin(cfg OS_read_buffer_from_stdin_Cfg) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("OS")
	fnname := StringName.new("read_buffer_from_stdin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3249455752)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.buffer_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_stdin_type() OSStdHandleType {
	mut result := i64(OSStdHandleType.std_handle_invalid)
	classname := StringName.new("OS")
	fnname := StringName.new("get_stdin_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1704816237)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OSStdHandleType(result)}
}

pub fn (s &OS) get_stdout_type() OSStdHandleType {
	mut result := i64(OSStdHandleType.std_handle_invalid)
	classname := StringName.new("OS")
	fnname := StringName.new("get_stdout_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1704816237)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OSStdHandleType(result)}
}

pub fn (s &OS) get_stderr_type() OSStdHandleType {
	mut result := i64(OSStdHandleType.std_handle_invalid)
	classname := StringName.new("OS")
	fnname := StringName.new("get_stderr_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1704816237)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OSStdHandleType(result)}
}

@[params]
pub struct OS_execute_Cfg {
pub:
	output Array
	read_stderr bool
	open_console bool
}

pub fn (s &OS) execute(path string, arguments PackedStringArray, cfg OS_execute_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("OS")
	fnname := StringName.new("execute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1488299882)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&arguments)}
	args[2] = unsafe{voidptr(&cfg.output)}
	args[3] = unsafe{voidptr(&cfg.read_stderr)}
	args[4] = unsafe{voidptr(&cfg.open_console)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct OS_execute_with_pipe_Cfg {
pub:
	blocking bool
}

pub fn (s &OS) execute_with_pipe(path string, arguments PackedStringArray, cfg OS_execute_with_pipe_Cfg) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("OS")
	fnname := StringName.new("execute_with_pipe")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2851312030)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&arguments)}
	args[2] = unsafe{voidptr(&cfg.blocking)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct OS_create_process_Cfg {
pub:
	open_console bool
}

pub fn (s &OS) create_process(path string, arguments PackedStringArray, cfg OS_create_process_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("OS")
	fnname := StringName.new("create_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2903767230)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&arguments)}
	args[2] = unsafe{voidptr(&cfg.open_console)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) create_instance(arguments PackedStringArray) i64 {
	mut result := i64(0)
	classname := StringName.new("OS")
	fnname := StringName.new("create_instance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1080601263)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&arguments)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) kill(pid i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("OS")
	fnname := StringName.new("kill")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &OS) shell_open(uri string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("OS")
	fnname := StringName.new("shell_open")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(uri)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct OS_shell_show_in_file_manager_Cfg {
pub:
	open_folder bool
}

pub fn (s &OS) shell_show_in_file_manager(file_or_dir_path string, cfg OS_shell_show_in_file_manager_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("OS")
	fnname := StringName.new("shell_show_in_file_manager")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3565188097)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(file_or_dir_path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.open_folder)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &OS) is_process_running(pid i64) bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("is_process_running")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_process_exit_code(pid i64) i64 {
	mut result := i64(0)
	classname := StringName.new("OS")
	fnname := StringName.new("get_process_exit_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_process_id() i64 {
	mut result := i64(0)
	classname := StringName.new("OS")
	fnname := StringName.new("get_process_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) has_environment(variable string) bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("has_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(variable)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_environment(variable string) string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(variable)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) set_environment(variable string, value string) {
	classname := StringName.new("OS")
	fnname := StringName.new("set_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3605043004)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(variable)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(value)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OS) unset_environment(variable string) {
	classname := StringName.new("OS")
	fnname := StringName.new("unset_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3089850668)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(variable)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OS) get_name() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_distribution_name() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_distribution_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_version() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_version_alias() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_version_alias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_cmdline_args() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_cmdline_args")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_cmdline_user_args() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_cmdline_user_args")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_video_adapter_driver_info() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_video_adapter_driver_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct OS_set_restart_on_exit_Cfg {
pub:
	arguments PackedStringArray
}

pub fn (s &OS) set_restart_on_exit(restart bool, cfg OS_set_restart_on_exit_Cfg) {
	classname := StringName.new("OS")
	fnname := StringName.new("set_restart_on_exit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3331453935)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&restart)}
	args[1] = unsafe{voidptr(&cfg.arguments)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OS) is_restart_on_exit_set() bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("is_restart_on_exit_set")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_restart_on_exit_arguments() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_restart_on_exit_arguments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) delay_usec(usec i64) {
	classname := StringName.new("OS")
	fnname := StringName.new("delay_usec")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 998575451)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&usec)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OS) delay_msec(msec i64) {
	classname := StringName.new("OS")
	fnname := StringName.new("delay_msec")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 998575451)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&msec)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OS) get_locale() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_locale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_locale_language() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_locale_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_model_name() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_model_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) is_userfs_persistent() bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("is_userfs_persistent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) is_stdout_verbose() bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("is_stdout_verbose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) is_debug_build() bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("is_debug_build")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_static_memory_usage() i64 {
	mut result := i64(0)
	classname := StringName.new("OS")
	fnname := StringName.new("get_static_memory_usage")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_static_memory_peak_usage() i64 {
	mut result := i64(0)
	classname := StringName.new("OS")
	fnname := StringName.new("get_static_memory_peak_usage")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_memory_info() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_memory_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) move_to_trash(path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("OS")
	fnname := StringName.new("move_to_trash")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2113323047)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &OS) get_user_data_dir() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_user_data_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct OS_get_system_dir_Cfg {
pub:
	shared_storage bool
}

pub fn (s &OS) get_system_dir(dir OSSystemDir, cfg OS_get_system_dir_Cfg) string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_system_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3073895123)
	mut args := unsafe { [2]voidptr{} }
	i64_dir := i64(dir)
	args[0] = unsafe{voidptr(&i64_dir)}
	args[1] = unsafe{voidptr(&cfg.shared_storage)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_config_dir() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_config_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_data_dir() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_data_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_cache_dir() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_cache_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_temp_dir() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_temp_dir")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_unique_id() string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_unique_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) get_keycode_string(code Key) string {
	mut result := String{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_keycode_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2261993717)
	mut args := unsafe { [1]voidptr{} }
	i64_code := i64(code)
	args[0] = unsafe{voidptr(&i64_code)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OS) is_keycode_unicode(code i64) bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("is_keycode_unicode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&code)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) find_keycode_from_string(gd_string string) Key {
	mut result := i64(Key.key_none)
	classname := StringName.new("OS")
	fnname := StringName.new("find_keycode_from_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1084858572)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{Key(result)}
}

pub fn (s &OS) set_use_file_access_save_and_swap(enabled bool) {
	classname := StringName.new("OS")
	fnname := StringName.new("set_use_file_access_save_and_swap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OS) set_thread_name(name string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("OS")
	fnname := StringName.new("set_thread_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &OS) get_thread_caller_id() i64 {
	mut result := i64(0)
	classname := StringName.new("OS")
	fnname := StringName.new("get_thread_caller_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_main_thread_id() i64 {
	mut result := i64(0)
	classname := StringName.new("OS")
	fnname := StringName.new("get_main_thread_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) has_feature(tag_name string) bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("has_feature")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(tag_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) is_sandboxed() bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("is_sandboxed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) request_permission(name string) bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("request_permission")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) request_permissions() bool {
	mut result := false
	classname := StringName.new("OS")
	fnname := StringName.new("request_permissions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) get_granted_permissions() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("OS")
	fnname := StringName.new("get_granted_permissions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OS) revoke_granted_permissions() {
	classname := StringName.new("OS")
	fnname := StringName.new("revoke_granted_permissions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
