module gd

pub enum EditorExportPlatformExportMessageType as i64 {
	export_message_none = 0
	export_message_info = 1
	export_message_warning = 2
	export_message_error = 3
}

pub enum EditorExportPlatformDebugFlags as i64 {
	debug_flag_dumb_client = 1
	debug_flag_remote_debug = 2
	debug_flag_remote_debug_localhost = 4
	debug_flag_view_collisions = 8
	debug_flag_view_navigation = 16
}

pub struct EditorExportPlatform {
	RefCounted
}

pub fn (s &EditorExportPlatform) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorExportPlatform) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &EditorExportPlatform) get_os_name() string {
	mut result := String{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("get_os_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPlatform) create_preset() EditorExportPreset {
	mut result := EditorExportPreset{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("create_preset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2572397818)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPlatform) find_export_template(template_file_name string) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("find_export_template")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2248993622)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(template_file_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPlatform) get_current_presets() Array {
	mut result := Array{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("get_current_presets")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct EditorExportPlatform_save_pack_Cfg {
pub:
	embed bool
}

pub fn (s &EditorExportPlatform) save_pack(preset EditorExportPreset, debug bool, path string, cfg EditorExportPlatform_save_pack_Cfg) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("save_pack")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3420080977)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.embed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPlatform) save_zip(preset EditorExportPreset, debug bool, path string) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("save_zip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1485052307)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPlatform) save_pack_patch(preset EditorExportPreset, debug bool, path string) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("save_pack_patch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1485052307)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPlatform) save_zip_patch(preset EditorExportPreset, debug bool, path string) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("save_zip_patch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1485052307)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPlatform) gen_export_flags(flags EditorExportPlatformDebugFlags) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("gen_export_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2976483270)
	mut args := unsafe { [1]voidptr{} }
	i64_flags := i64(flags)
	args[0] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct EditorExportPlatform_export_project_files_Cfg {
pub:
	shared_cb Callable
}

pub fn (s &EditorExportPlatform) export_project_files(preset EditorExportPreset, debug bool, save_cb Callable, cfg EditorExportPlatform_export_project_files_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("export_project_files")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1063735070)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	args[2] = unsafe{voidptr(&save_cb)}
	args[3] = unsafe{voidptr(&cfg.shared_cb)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct EditorExportPlatform_export_project_Cfg {
pub:
	flags EditorExportPlatformDebugFlags
}

pub fn (s &EditorExportPlatform) export_project(preset EditorExportPreset, debug bool, path string, cfg EditorExportPlatform_export_project_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("export_project")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3879521245)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_flags := i64(cfg.flags)
	args[3] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct EditorExportPlatform_export_pack_Cfg {
pub:
	flags EditorExportPlatformDebugFlags
}

pub fn (s &EditorExportPlatform) export_pack(preset EditorExportPreset, debug bool, path string, cfg EditorExportPlatform_export_pack_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("export_pack")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3879521245)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_flags := i64(cfg.flags)
	args[3] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct EditorExportPlatform_export_zip_Cfg {
pub:
	flags EditorExportPlatformDebugFlags
}

pub fn (s &EditorExportPlatform) export_zip(preset EditorExportPreset, debug bool, path string, cfg EditorExportPlatform_export_zip_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("export_zip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3879521245)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_flags := i64(cfg.flags)
	args[3] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct EditorExportPlatform_export_pack_patch_Cfg {
pub:
	patches PackedStringArray
	flags EditorExportPlatformDebugFlags
}

pub fn (s &EditorExportPlatform) export_pack_patch(preset EditorExportPreset, debug bool, path string, cfg EditorExportPlatform_export_pack_patch_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("export_pack_patch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 608021658)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.patches)}
	i64_flags := i64(cfg.flags)
	args[4] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct EditorExportPlatform_export_zip_patch_Cfg {
pub:
	patches PackedStringArray
	flags EditorExportPlatformDebugFlags
}

pub fn (s &EditorExportPlatform) export_zip_patch(preset EditorExportPreset, debug bool, path string, cfg EditorExportPlatform_export_zip_patch_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("export_zip_patch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 608021658)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.patches)}
	i64_flags := i64(cfg.flags)
	args[4] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &EditorExportPlatform) clear_messages() {
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("clear_messages")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlatform) add_message(gd_type EditorExportPlatformExportMessageType, category string, message string) {
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("add_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 782767225)
	mut args := unsafe { [3]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	arg_sn1 := String.new(category)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := String.new(message)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorExportPlatform) get_message_count() i64 {
	mut result := i64(0)
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("get_message_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPlatform) get_message_type(index i64) EditorExportPlatformExportMessageType {
	mut result := i64(EditorExportPlatformExportMessageType.export_message_none)
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("get_message_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2667287293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{EditorExportPlatformExportMessageType(result)}
}

pub fn (s &EditorExportPlatform) get_message_category(index i64) string {
	mut result := String{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("get_message_category")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPlatform) get_message_text(index i64) string {
	mut result := String{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("get_message_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorExportPlatform) get_worst_message_type() EditorExportPlatformExportMessageType {
	mut result := i64(EditorExportPlatformExportMessageType.export_message_none)
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("get_worst_message_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2580557466)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{EditorExportPlatformExportMessageType(result)}
}

@[params]
pub struct EditorExportPlatform_ssh_run_on_remote_Cfg {
pub:
	output Array
	port_fwd i64
}

pub fn (s &EditorExportPlatform) ssh_run_on_remote(host string, port string, ssh_arg PackedStringArray, cmd_args string, cfg EditorExportPlatform_ssh_run_on_remote_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("ssh_run_on_remote")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3163734797)
	mut args := unsafe { [6]voidptr{} }
	arg_sn0 := String.new(host)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(port)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&ssh_arg)}
	arg_sn3 := String.new(cmd_args)
	args[3] = unsafe{voidptr(&arg_sn3)}
	args[4] = unsafe{voidptr(&cfg.output)}
	args[5] = unsafe{voidptr(&cfg.port_fwd)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct EditorExportPlatform_ssh_run_on_remote_no_wait_Cfg {
pub:
	port_fwd i64
}

pub fn (s &EditorExportPlatform) ssh_run_on_remote_no_wait(host string, port string, ssh_args PackedStringArray, cmd_args string, cfg EditorExportPlatform_ssh_run_on_remote_no_wait_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("ssh_run_on_remote_no_wait")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3606362233)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := String.new(host)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(port)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&ssh_args)}
	arg_sn3 := String.new(cmd_args)
	args[3] = unsafe{voidptr(&arg_sn3)}
	args[4] = unsafe{voidptr(&cfg.port_fwd)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorExportPlatform) ssh_push_to_remote(host string, port string, scp_args PackedStringArray, src_file string, dst_file string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("ssh_push_to_remote")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 218756989)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := String.new(host)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(port)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&scp_args)}
	arg_sn3 := String.new(src_file)
	args[3] = unsafe{voidptr(&arg_sn3)}
	arg_sn4 := String.new(dst_file)
	args[4] = unsafe{voidptr(&arg_sn4)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn3.deinit()
	arg_sn4.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &EditorExportPlatform) get_internal_export_files(preset EditorExportPreset, debug bool) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("get_internal_export_files")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 89550086)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	args[1] = unsafe{voidptr(&debug)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn EditorExportPlatform.get_forced_export_files(preset EditorExportPreset) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorExportPlatform")
	fnname := StringName.new("get_forced_export_files")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3424652832)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&preset.ptr)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
