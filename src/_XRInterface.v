module gd

pub enum XRInterfaceCapabilities as i64 {
	xr_none = 0
	xr_mono = 1
	xr_stereo = 2
	xr_quad = 4
	xr_vr = 8
	xr_ar = 16
	xr_external = 32
}

pub enum XRInterfaceTrackingStatus as i64 {
	xr_normal_tracking = 0
	xr_excessive_motion = 1
	xr_insufficient_features = 2
	xr_unknown_tracking = 3
	xr_not_tracking = 4
}

pub enum XRInterfacePlayAreaMode as i64 {
	xr_play_area_unknown = 0
	xr_play_area_3dof = 1
	xr_play_area_sitting = 2
	xr_play_area_roomscale = 3
	xr_play_area_stage = 4
	xr_play_area_custom = 2147483647
}

pub enum XRInterfaceEnvironmentBlendMode as i64 {
	xr_env_blend_mode_opaque = 0
	xr_env_blend_mode_additive = 1
	xr_env_blend_mode_alpha_blend = 2
}

pub struct XRInterface {
	RefCounted
}

pub fn (s &XRInterface) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRInterface) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRInterface) get_name() string {
	mut result := StringName{}
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XRInterface) get_capabilities() i64 {
	mut result := i64(0)
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_capabilities")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) is_primary() bool {
	mut result := false
	classname := StringName.new("XRInterface")
	fnname := StringName.new("is_primary")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) set_primary(primary bool) {
	classname := StringName.new("XRInterface")
	fnname := StringName.new("set_primary")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&primary)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRInterface) is_initialized() bool {
	mut result := false
	classname := StringName.new("XRInterface")
	fnname := StringName.new("is_initialized")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) initialize() bool {
	mut result := false
	classname := StringName.new("XRInterface")
	fnname := StringName.new("initialize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) uninitialize() {
	classname := StringName.new("XRInterface")
	fnname := StringName.new("uninitialize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRInterface) get_system_info() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_system_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) get_tracking_status() XRInterfaceTrackingStatus {
	mut result := i64(XRInterfaceTrackingStatus.xr_normal_tracking)
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_tracking_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 167423259)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRInterfaceTrackingStatus(result)}
}

pub fn (s &XRInterface) get_render_target_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_render_target_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) get_view_count() i64 {
	mut result := i64(0)
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_view_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) trigger_haptic_pulse(action_name string, tracker_name string, frequency f64, amplitude f64, duration_sec f64, delay_sec f64) {
	classname := StringName.new("XRInterface")
	fnname := StringName.new("trigger_haptic_pulse")
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

pub fn (s &XRInterface) supports_play_area_mode(mode XRInterfacePlayAreaMode) bool {
	mut result := false
	classname := StringName.new("XRInterface")
	fnname := StringName.new("supports_play_area_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3429955281)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) get_play_area_mode() XRInterfacePlayAreaMode {
	mut result := i64(XRInterfacePlayAreaMode.xr_play_area_unknown)
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_play_area_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1615132885)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRInterfacePlayAreaMode(result)}
}

pub fn (s &XRInterface) set_play_area_mode(mode XRInterfacePlayAreaMode) bool {
	mut result := false
	classname := StringName.new("XRInterface")
	fnname := StringName.new("set_play_area_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3429955281)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) get_play_area() PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_play_area")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) get_anchor_detection_is_enabled() bool {
	mut result := false
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_anchor_detection_is_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) set_anchor_detection_is_enabled(enable bool) {
	classname := StringName.new("XRInterface")
	fnname := StringName.new("set_anchor_detection_is_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRInterface) get_camera_feed_id() i64 {
	mut result := i64(0)
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_camera_feed_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) is_passthrough_supported() bool {
	mut result := false
	classname := StringName.new("XRInterface")
	fnname := StringName.new("is_passthrough_supported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) is_passthrough_enabled() bool {
	mut result := false
	classname := StringName.new("XRInterface")
	fnname := StringName.new("is_passthrough_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) start_passthrough() bool {
	mut result := false
	classname := StringName.new("XRInterface")
	fnname := StringName.new("start_passthrough")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) stop_passthrough() {
	classname := StringName.new("XRInterface")
	fnname := StringName.new("stop_passthrough")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRInterface) get_transform_for_view(view i64, cam_transform Transform3D) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_transform_for_view")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 518934792)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&view)}
	args[1] = unsafe{voidptr(&cam_transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) get_projection_for_view(view i64, aspect f64, near f64, far f64) Projection {
	mut result := Projection{}
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_projection_for_view")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3766090294)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&view)}
	args[1] = unsafe{voidptr(&aspect)}
	args[2] = unsafe{voidptr(&near)}
	args[3] = unsafe{voidptr(&far)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) get_supported_environment_blend_modes() Array {
	mut result := Array{}
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_supported_environment_blend_modes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) set_environment_blend_mode(mode XRInterfaceEnvironmentBlendMode) bool {
	mut result := false
	classname := StringName.new("XRInterface")
	fnname := StringName.new("set_environment_blend_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 551152418)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRInterface) get_environment_blend_mode() XRInterfaceEnvironmentBlendMode {
	mut result := i64(XRInterfaceEnvironmentBlendMode.xr_env_blend_mode_opaque)
	classname := StringName.new("XRInterface")
	fnname := StringName.new("get_environment_blend_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1984334071)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRInterfaceEnvironmentBlendMode(result)}
}
