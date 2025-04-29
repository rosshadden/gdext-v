module gd

pub struct XRInterfaceExtension {
	XRInterface
}

pub fn (s &XRInterfaceExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRInterfaceExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IXRInterfaceExtensionGetName {
mut:
	get_name_() StringName
}

pub fn (s &XRInterfaceExtension) gd_get_name() string {
	mut result := StringName{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IXRInterfaceExtensionGetCapabilities {
mut:
	get_capabilities_() i64
}

pub fn (s &XRInterfaceExtension) gd_get_capabilities() i64 {
	mut result := i64(0)
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_capabilities")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionIsInitialized {
mut:
	is_initialized_() bool
}

pub fn (s &XRInterfaceExtension) gd_is_initialized() bool {
	mut result := false
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_is_initialized")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionInitialize {
mut:
	initialize_() bool
}

pub fn (s &XRInterfaceExtension) gd_initialize() bool {
	mut result := false
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_initialize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionUninitialize {
mut:
	uninitialize_()
}

pub fn (s &XRInterfaceExtension) gd_uninitialize() {
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_uninitialize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IXRInterfaceExtensionGetSystemInfo {
mut:
	get_system_info_() Dictionary
}

pub fn (s &XRInterfaceExtension) gd_get_system_info() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_system_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionSupportsPlayAreaMode {
mut:
	supports_play_area_mode_(mode XRInterfacePlayAreaMode) bool
}

pub fn (s &XRInterfaceExtension) gd_supports_play_area_mode(mode XRInterfacePlayAreaMode) bool {
	mut result := false
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_supports_play_area_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2693703033)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetPlayAreaMode {
mut:
	get_play_area_mode_() XRInterfacePlayAreaMode
}

pub fn (s &XRInterfaceExtension) gd_get_play_area_mode() XRInterfacePlayAreaMode {
	mut result := i64(XRInterfacePlayAreaMode.xr_play_area_unknown)
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_play_area_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1615132885)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRInterfacePlayAreaMode(result)}
}

pub interface IXRInterfaceExtensionSetPlayAreaMode {
mut:
	set_play_area_mode_(mode XRInterfacePlayAreaMode) bool
}

pub fn (s &XRInterfaceExtension) gd_set_play_area_mode(mode XRInterfacePlayAreaMode) bool {
	mut result := false
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_set_play_area_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2693703033)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetPlayArea {
mut:
	get_play_area_() PackedVector3Array
}

pub fn (s &XRInterfaceExtension) gd_get_play_area() PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_play_area")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetRenderTargetSize {
mut:
	get_render_target_size_() Vector2
}

pub fn (s &XRInterfaceExtension) gd_get_render_target_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_render_target_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetViewCount {
mut:
	get_view_count_() i64
}

pub fn (s &XRInterfaceExtension) gd_get_view_count() i64 {
	mut result := i64(0)
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_view_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetCameraTransform {
mut:
	get_camera_transform_() Transform3D
}

pub fn (s &XRInterfaceExtension) gd_get_camera_transform() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_camera_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4183770049)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetTransformForView {
mut:
	get_transform_for_view_(view i64, cam_transform Transform3D) Transform3D
}

pub fn (s &XRInterfaceExtension) gd_get_transform_for_view(view i64, cam_transform Transform3D) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_transform_for_view")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 518934792)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&view)}
	args[1] = unsafe{voidptr(&cam_transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetProjectionForView {
mut:
	get_projection_for_view_(view i64, aspect f64, z_near f64, z_far f64) PackedFloat64Array
}

pub fn (s &XRInterfaceExtension) gd_get_projection_for_view(view i64, aspect f64, z_near f64, z_far f64) PackedFloat64Array {
	mut result := PackedFloat64Array{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_projection_for_view")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4067457445)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&view)}
	args[1] = unsafe{voidptr(&aspect)}
	args[2] = unsafe{voidptr(&z_near)}
	args[3] = unsafe{voidptr(&z_far)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetVrsTexture {
mut:
	get_vrs_texture_() RID
}

pub fn (s &XRInterfaceExtension) gd_get_vrs_texture() RID {
	mut result := RID{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_vrs_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionProcess {
mut:
	process_()
}

pub fn (s &XRInterfaceExtension) gd_process() {
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IXRInterfaceExtensionPreRender {
mut:
	pre_render_()
}

pub fn (s &XRInterfaceExtension) gd_pre_render() {
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_pre_render")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IXRInterfaceExtensionPreDrawViewport {
mut:
	pre_draw_viewport_(render_target RID) bool
}

pub fn (s &XRInterfaceExtension) gd_pre_draw_viewport(render_target RID) bool {
	mut result := false
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_pre_draw_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&render_target)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionPostDrawViewport {
mut:
	post_draw_viewport_(render_target RID, screen_rect Rect2)
}

pub fn (s &XRInterfaceExtension) gd_post_draw_viewport(render_target RID, screen_rect Rect2) {
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_post_draw_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1378122625)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&render_target)}
	args[1] = unsafe{voidptr(&screen_rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IXRInterfaceExtensionEndFrame {
mut:
	end_frame_()
}

pub fn (s &XRInterfaceExtension) gd_end_frame() {
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_end_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IXRInterfaceExtensionGetSuggestedTrackerNames {
mut:
	get_suggested_tracker_names_() PackedStringArray
}

pub fn (s &XRInterfaceExtension) gd_get_suggested_tracker_names() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_suggested_tracker_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetSuggestedPoseNames {
mut:
	get_suggested_pose_names_(tracker_name StringName) PackedStringArray
}

pub fn (s &XRInterfaceExtension) gd_get_suggested_pose_names(tracker_name string) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_suggested_pose_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1761182771)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(tracker_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetTrackingStatus {
mut:
	get_tracking_status_() XRInterfaceTrackingStatus
}

pub fn (s &XRInterfaceExtension) gd_get_tracking_status() XRInterfaceTrackingStatus {
	mut result := i64(XRInterfaceTrackingStatus.xr_normal_tracking)
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_tracking_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 167423259)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRInterfaceTrackingStatus(result)}
}

pub interface IXRInterfaceExtensionTriggerHapticPulse {
mut:
	trigger_haptic_pulse_(action_name String, tracker_name StringName, frequency f64, amplitude f64, duration_sec f64, delay_sec f64)
}

pub fn (s &XRInterfaceExtension) gd_trigger_haptic_pulse(action_name string, tracker_name string, frequency f64, amplitude f64, duration_sec f64, delay_sec f64) {
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_trigger_haptic_pulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3752640163)
	mut args := unsafe { [6]voidptr{} }
	arg_sn0 := String.new(action_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(tracker_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&frequency)}
	args[3] = unsafe{voidptr(&amplitude)}
	args[4] = unsafe{voidptr(&duration_sec)}
	args[5] = unsafe{voidptr(&delay_sec)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface IXRInterfaceExtensionGetAnchorDetectionIsEnabled {
mut:
	get_anchor_detection_is_enabled_() bool
}

pub fn (s &XRInterfaceExtension) gd_get_anchor_detection_is_enabled() bool {
	mut result := false
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_anchor_detection_is_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionSetAnchorDetectionIsEnabled {
mut:
	set_anchor_detection_is_enabled_(enabled bool)
}

pub fn (s &XRInterfaceExtension) gd_set_anchor_detection_is_enabled(enabled bool) {
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_set_anchor_detection_is_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IXRInterfaceExtensionGetCameraFeedId {
mut:
	get_camera_feed_id_() i64
}

pub fn (s &XRInterfaceExtension) gd_get_camera_feed_id() i64 {
	mut result := i64(0)
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_camera_feed_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetColorTexture {
mut:
	get_color_texture_() RID
}

pub fn (s &XRInterfaceExtension) gd_get_color_texture() RID {
	mut result := RID{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_color_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetDepthTexture {
mut:
	get_depth_texture_() RID
}

pub fn (s &XRInterfaceExtension) gd_get_depth_texture() RID {
	mut result := RID{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_depth_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IXRInterfaceExtensionGetVelocityTexture {
mut:
	get_velocity_texture_() RID
}

pub fn (s &XRInterfaceExtension) gd_get_velocity_texture() RID {
	mut result := RID{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("_get_velocity_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterfaceExtension) get_color_texture() RID {
	mut result := RID{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("get_color_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterfaceExtension) get_depth_texture() RID {
	mut result := RID{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("get_depth_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterfaceExtension) get_velocity_texture() RID {
	mut result := RID{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("get_velocity_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterfaceExtension) add_blit(render_target RID, src_rect Rect2, dst_rect Rect2i, use_layer bool, layer i64, apply_lens_distortion bool, eye_center Vector2, k1 f64, k2 f64, upscale f64, aspect_ratio f64) {
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("add_blit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 258596971)
	mut args := unsafe { [11]voidptr{} }
	args[0] = unsafe{voidptr(&render_target)}
	args[1] = unsafe{voidptr(&src_rect)}
	args[2] = unsafe{voidptr(&dst_rect)}
	args[3] = unsafe{voidptr(&use_layer)}
	args[4] = unsafe{voidptr(&layer)}
	args[5] = unsafe{voidptr(&apply_lens_distortion)}
	args[6] = unsafe{voidptr(&eye_center)}
	args[7] = unsafe{voidptr(&k1)}
	args[8] = unsafe{voidptr(&k2)}
	args[9] = unsafe{voidptr(&upscale)}
	args[10] = unsafe{voidptr(&aspect_ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRInterfaceExtension) get_render_target_texture(render_target RID) RID {
	mut result := RID{}
	classname := StringName.new("XRInterfaceExtension")
	fnname := StringName.new("get_render_target_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 41030802)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&render_target)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
