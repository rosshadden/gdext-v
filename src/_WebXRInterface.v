module gd

pub enum WebXRInterfaceTargetRayMode as i64 {
	target_ray_mode_unknown = 0
	target_ray_mode_gaze = 1
	target_ray_mode_tracked_pointer = 2
	target_ray_mode_screen = 3
}

pub struct WebXRInterface {
	XRInterface
}

pub fn (s &WebXRInterface) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s WebXRInterface) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &WebXRInterface) is_session_supported(session_mode string) {
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("is_session_supported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(session_mode)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebXRInterface) set_session_mode(session_mode string) {
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("set_session_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(session_mode)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebXRInterface) get_session_mode() string {
	mut result := String{}
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("get_session_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebXRInterface) set_required_features(required_features string) {
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("set_required_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(required_features)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebXRInterface) get_required_features() string {
	mut result := String{}
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("get_required_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebXRInterface) set_optional_features(optional_features string) {
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("set_optional_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(optional_features)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebXRInterface) get_optional_features() string {
	mut result := String{}
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("get_optional_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebXRInterface) get_reference_space_type() string {
	mut result := String{}
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("get_reference_space_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebXRInterface) get_enabled_features() string {
	mut result := String{}
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("get_enabled_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebXRInterface) set_requested_reference_space_types(requested_reference_space_types string) {
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("set_requested_reference_space_types")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(requested_reference_space_types)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebXRInterface) get_requested_reference_space_types() string {
	mut result := String{}
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("get_requested_reference_space_types")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebXRInterface) is_input_source_active(input_source_id i64) bool {
	mut result := false
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("is_input_source_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&input_source_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebXRInterface) get_input_source_tracker(input_source_id i64) XRControllerTracker {
	mut result := XRControllerTracker{}
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("get_input_source_tracker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 399776966)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&input_source_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebXRInterface) get_input_source_target_ray_mode(input_source_id i64) WebXRInterfaceTargetRayMode {
	mut result := i64(WebXRInterfaceTargetRayMode.target_ray_mode_unknown)
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("get_input_source_target_ray_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2852387453)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&input_source_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{WebXRInterfaceTargetRayMode(result)}
}

pub fn (s &WebXRInterface) get_visibility_state() string {
	mut result := String{}
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("get_visibility_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &WebXRInterface) get_display_refresh_rate() f64 {
	mut result := f64(0)
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("get_display_refresh_rate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WebXRInterface) set_display_refresh_rate(refresh_rate f64) {
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("set_display_refresh_rate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&refresh_rate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WebXRInterface) get_available_display_refresh_rates() Array {
	mut result := Array{}
	classname := StringName.new("WebXRInterface")
	fnname := StringName.new("get_available_display_refresh_rates")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
