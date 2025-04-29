module gd

pub enum OpenXRAPIExtensionOpenXRAlphaBlendModeSupport as i64 {
	openxr_alpha_blend_mode_support_none = 0
	openxr_alpha_blend_mode_support_real = 1
	openxr_alpha_blend_mode_support_emulating = 2
}

pub struct OpenXRAPIExtension {
	RefCounted
}

pub fn (s &OpenXRAPIExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRAPIExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRAPIExtension) get_instance() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_instance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) get_system_id() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_system_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) get_session() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_session")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) transform_from_pose(pose voidptr) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("transform_from_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2963875352)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) xr_result(gd_result i64, format string, gd_args Array) bool {
	mut result := false
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("xr_result")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3886436197)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&gd_result)}
	arg_sn1 := String.new(format)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&gd_args)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn OpenXRAPIExtension.openxr_is_enabled(check_run_in_editor bool) bool {
	mut result := false
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("openxr_is_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2703660260)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&check_run_in_editor)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) get_instance_proc_addr(name string) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_instance_proc_addr")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1597066294)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) get_error_string(gd_result i64) string {
	mut result := String{}
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_error_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_result)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OpenXRAPIExtension) get_swapchain_format_name(swapchain_format i64) string {
	mut result := String{}
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_swapchain_format_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&swapchain_format)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OpenXRAPIExtension) set_object_name(object_type i64, object_handle i64, object_name string) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("set_object_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285447957)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&object_type)}
	args[1] = unsafe{voidptr(&object_handle)}
	arg_sn2 := String.new(object_name)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) begin_debug_label_region(label_name string) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("begin_debug_label_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(label_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) end_debug_label_region() {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("end_debug_label_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) insert_debug_label(label_name string) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("insert_debug_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(label_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) is_initialized() bool {
	mut result := false
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("is_initialized")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) is_running() bool {
	mut result := false
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("is_running")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) set_custom_play_space(space voidptr) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("set_custom_play_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) get_play_space() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_play_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) get_predicted_display_time() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_predicted_display_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) get_next_frame_time() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_next_frame_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) can_render() bool {
	mut result := false
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("can_render")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) find_action(name string, action_set RID) RID {
	mut result := RID{}
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("find_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4106179378)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&action_set)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) action_get_handle(action RID) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("action_get_handle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3917799429)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&action)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) get_hand_tracker(hand_index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_hand_tracker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&hand_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) register_composition_layer_provider(extension OpenXRExtensionWrapper) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("register_composition_layer_provider")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1477360496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&extension.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) unregister_composition_layer_provider(extension OpenXRExtensionWrapper) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("unregister_composition_layer_provider")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1477360496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&extension.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) register_projection_views_extension(extension OpenXRExtensionWrapper) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("register_projection_views_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1477360496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&extension.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) unregister_projection_views_extension(extension OpenXRExtensionWrapper) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("unregister_projection_views_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1477360496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&extension.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) register_frame_info_extension(extension OpenXRExtensionWrapper) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("register_frame_info_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1477360496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&extension.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) unregister_frame_info_extension(extension OpenXRExtensionWrapper) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("unregister_frame_info_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1477360496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&extension.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) get_render_state_z_near() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_render_state_z_near")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) get_render_state_z_far() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_render_state_z_far")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) set_velocity_texture(render_target RID) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("set_velocity_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&render_target)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) set_velocity_depth_texture(render_target RID) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("set_velocity_depth_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&render_target)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) set_velocity_target_size(target_size Vector2i) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("set_velocity_target_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&target_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) get_supported_swapchain_formats() PackedInt64Array {
	mut result := PackedInt64Array{}
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_supported_swapchain_formats")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3851388692)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) openxr_swapchain_create(create_flags i64, usage_flags i64, swapchain_format i64, width i64, height i64, sample_count i64, array_size i64) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("openxr_swapchain_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2162228999)
	mut args := unsafe { [7]voidptr{} }
	args[0] = unsafe{voidptr(&create_flags)}
	args[1] = unsafe{voidptr(&usage_flags)}
	args[2] = unsafe{voidptr(&swapchain_format)}
	args[3] = unsafe{voidptr(&width)}
	args[4] = unsafe{voidptr(&height)}
	args[5] = unsafe{voidptr(&sample_count)}
	args[6] = unsafe{voidptr(&array_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) openxr_swapchain_free(swapchain i64) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("openxr_swapchain_free")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&swapchain)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) openxr_swapchain_get_swapchain(swapchain i64) i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("openxr_swapchain_get_swapchain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&swapchain)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) openxr_swapchain_acquire(swapchain i64) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("openxr_swapchain_acquire")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&swapchain)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) openxr_swapchain_get_image(swapchain i64) RID {
	mut result := RID{}
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("openxr_swapchain_get_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 937000113)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&swapchain)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) openxr_swapchain_release(swapchain i64) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("openxr_swapchain_release")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&swapchain)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) get_projection_layer() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("get_projection_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAPIExtension) set_render_region(render_region Rect2i) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("set_render_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1763793166)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&render_region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) set_emulate_environment_blend_mode_alpha_blend(enabled bool) {
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("set_emulate_environment_blend_mode_alpha_blend")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAPIExtension) is_environment_blend_mode_alpha_supported() OpenXRAPIExtensionOpenXRAlphaBlendModeSupport {
	mut result := i64(OpenXRAPIExtensionOpenXRAlphaBlendModeSupport.openxr_alpha_blend_mode_support_none)
	classname := StringName.new("OpenXRAPIExtension")
	fnname := StringName.new("is_environment_blend_mode_alpha_supported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1579290861)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRAPIExtensionOpenXRAlphaBlendModeSupport(result)}
}
