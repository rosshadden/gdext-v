module gd

pub enum XRHandTrackerHandTrackingSource as i64 {
	hand_tracking_source_unknown = 0
	hand_tracking_source_unobstructed = 1
	hand_tracking_source_controller = 2
	hand_tracking_source_not_tracked = 3
	hand_tracking_source_max = 4
}

pub enum XRHandTrackerHandJoint as i64 {
	hand_joint_palm = 0
	hand_joint_wrist = 1
	hand_joint_thumb_metacarpal = 2
	hand_joint_thumb_phalanx_proximal = 3
	hand_joint_thumb_phalanx_distal = 4
	hand_joint_thumb_tip = 5
	hand_joint_index_finger_metacarpal = 6
	hand_joint_index_finger_phalanx_proximal = 7
	hand_joint_index_finger_phalanx_intermediate = 8
	hand_joint_index_finger_phalanx_distal = 9
	hand_joint_index_finger_tip = 10
	hand_joint_middle_finger_metacarpal = 11
	hand_joint_middle_finger_phalanx_proximal = 12
	hand_joint_middle_finger_phalanx_intermediate = 13
	hand_joint_middle_finger_phalanx_distal = 14
	hand_joint_middle_finger_tip = 15
	hand_joint_ring_finger_metacarpal = 16
	hand_joint_ring_finger_phalanx_proximal = 17
	hand_joint_ring_finger_phalanx_intermediate = 18
	hand_joint_ring_finger_phalanx_distal = 19
	hand_joint_ring_finger_tip = 20
	hand_joint_pinky_finger_metacarpal = 21
	hand_joint_pinky_finger_phalanx_proximal = 22
	hand_joint_pinky_finger_phalanx_intermediate = 23
	hand_joint_pinky_finger_phalanx_distal = 24
	hand_joint_pinky_finger_tip = 25
	hand_joint_max = 26
}

pub enum XRHandTrackerHandJointFlags as i64 {
	hand_joint_flag_orientation_valid = 1
	hand_joint_flag_orientation_tracked = 2
	hand_joint_flag_position_valid = 4
	hand_joint_flag_position_tracked = 8
	hand_joint_flag_linear_velocity_valid = 16
	hand_joint_flag_angular_velocity_valid = 32
}

pub struct XRHandTracker {
	XRPositionalTracker
}

pub fn (s &XRHandTracker) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRHandTracker) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRHandTracker) set_has_tracking_data(has_data bool) {
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("set_has_tracking_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&has_data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRHandTracker) get_has_tracking_data() bool {
	mut result := false
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("get_has_tracking_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRHandTracker) set_hand_tracking_source(source XRHandTrackerHandTrackingSource) {
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("set_hand_tracking_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2958308861)
	mut args := unsafe { [1]voidptr{} }
	i64_source := i64(source)
	args[0] = unsafe{voidptr(&i64_source)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRHandTracker) get_hand_tracking_source() XRHandTrackerHandTrackingSource {
	mut result := i64(XRHandTrackerHandTrackingSource.hand_tracking_source_unknown)
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("get_hand_tracking_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2475045250)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRHandTrackerHandTrackingSource(result)}
}

pub fn (s &XRHandTracker) set_hand_joint_flags(joint XRHandTrackerHandJoint, flags XRHandTrackerHandJointFlags) {
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("set_hand_joint_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3028437365)
	mut args := unsafe { [2]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	i64_flags := i64(flags)
	args[1] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRHandTracker) get_hand_joint_flags(joint XRHandTrackerHandJoint) XRHandTrackerHandJointFlags {
	mut result := i64(XRHandTrackerHandJointFlags.hand_joint_flag_orientation_valid)
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("get_hand_joint_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1730972401)
	mut args := unsafe { [1]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRHandTrackerHandJointFlags(result)}
}

pub fn (s &XRHandTracker) set_hand_joint_transform(joint XRHandTrackerHandJoint, transform Transform3D) {
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("set_hand_joint_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2529959613)
	mut args := unsafe { [2]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	args[1] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRHandTracker) get_hand_joint_transform(joint XRHandTrackerHandJoint) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("get_hand_joint_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1090840196)
	mut args := unsafe { [1]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRHandTracker) set_hand_joint_radius(joint XRHandTrackerHandJoint, radius f64) {
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("set_hand_joint_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2723659615)
	mut args := unsafe { [2]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	args[1] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRHandTracker) get_hand_joint_radius(joint XRHandTrackerHandJoint) f64 {
	mut result := f64(0)
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("get_hand_joint_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3400025734)
	mut args := unsafe { [1]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRHandTracker) set_hand_joint_linear_velocity(joint XRHandTrackerHandJoint, linear_velocity Vector3) {
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("set_hand_joint_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1978646737)
	mut args := unsafe { [2]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	args[1] = unsafe{voidptr(&linear_velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRHandTracker) get_hand_joint_linear_velocity(joint XRHandTrackerHandJoint) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("get_hand_joint_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 547240792)
	mut args := unsafe { [1]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRHandTracker) set_hand_joint_angular_velocity(joint XRHandTrackerHandJoint, angular_velocity Vector3) {
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("set_hand_joint_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1978646737)
	mut args := unsafe { [2]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	args[1] = unsafe{voidptr(&angular_velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRHandTracker) get_hand_joint_angular_velocity(joint XRHandTrackerHandJoint) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("XRHandTracker")
	fnname := StringName.new("get_hand_joint_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 547240792)
	mut args := unsafe { [1]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
