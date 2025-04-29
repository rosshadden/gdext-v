module gd

pub enum XRPositionalTrackerTrackerHand as i64 {
	tracker_hand_unknown = 0
	tracker_hand_left = 1
	tracker_hand_right = 2
	tracker_hand_max = 3
}

pub struct XRPositionalTracker {
	XRTracker
}

pub fn (s &XRPositionalTracker) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRPositionalTracker) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRPositionalTracker) get_tracker_profile() string {
	mut result := String{}
	classname := StringName.new("XRPositionalTracker")
	fnname := StringName.new("get_tracker_profile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XRPositionalTracker) set_tracker_profile(profile string) {
	classname := StringName.new("XRPositionalTracker")
	fnname := StringName.new("set_tracker_profile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(profile)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRPositionalTracker) get_tracker_hand() XRPositionalTrackerTrackerHand {
	mut result := i64(XRPositionalTrackerTrackerHand.tracker_hand_unknown)
	classname := StringName.new("XRPositionalTracker")
	fnname := StringName.new("get_tracker_hand")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4181770860)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRPositionalTrackerTrackerHand(result)}
}

pub fn (s &XRPositionalTracker) set_tracker_hand(hand XRPositionalTrackerTrackerHand) {
	classname := StringName.new("XRPositionalTracker")
	fnname := StringName.new("set_tracker_hand")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3904108980)
	mut args := unsafe { [1]voidptr{} }
	i64_hand := i64(hand)
	args[0] = unsafe{voidptr(&i64_hand)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRPositionalTracker) has_pose(name string) bool {
	mut result := false
	classname := StringName.new("XRPositionalTracker")
	fnname := StringName.new("has_pose")
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

pub fn (s &XRPositionalTracker) get_pose(name string) XRPose {
	mut result := XRPose{}
	classname := StringName.new("XRPositionalTracker")
	fnname := StringName.new("get_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4099720006)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRPositionalTracker) invalidate_pose(name string) {
	classname := StringName.new("XRPositionalTracker")
	fnname := StringName.new("invalidate_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRPositionalTracker) set_pose(name string, transform Transform3D, linear_velocity Vector3, angular_velocity Vector3, tracking_confidence XRPoseTrackingConfidence) {
	classname := StringName.new("XRPositionalTracker")
	fnname := StringName.new("set_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3451230163)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&transform)}
	args[2] = unsafe{voidptr(&linear_velocity)}
	args[3] = unsafe{voidptr(&angular_velocity)}
	i64_tracking_confidence := i64(tracking_confidence)
	args[4] = unsafe{voidptr(&i64_tracking_confidence)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRPositionalTracker) get_input(name string) Variant {
	mut result := Variant{}
	classname := StringName.new("XRPositionalTracker")
	fnname := StringName.new("get_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRPositionalTracker) set_input(name string, value Variant) {
	classname := StringName.new("XRPositionalTracker")
	fnname := StringName.new("set_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
