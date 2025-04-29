module gd

pub enum XRBodyTrackerBodyFlags as i64 {
	body_flag_upper_body_supported = 1
	body_flag_lower_body_supported = 2
	body_flag_hands_supported = 4
}

pub enum XRBodyTrackerJoint as i64 {
	joint_root = 0
	joint_hips = 1
	joint_spine = 2
	joint_chest = 3
	joint_upper_chest = 4
	joint_neck = 5
	joint_head = 6
	joint_head_tip = 7
	joint_left_shoulder = 8
	joint_left_upper_arm = 9
	joint_left_lower_arm = 10
	joint_right_shoulder = 11
	joint_right_upper_arm = 12
	joint_right_lower_arm = 13
	joint_left_upper_leg = 14
	joint_left_lower_leg = 15
	joint_left_foot = 16
	joint_left_toes = 17
	joint_right_upper_leg = 18
	joint_right_lower_leg = 19
	joint_right_foot = 20
	joint_right_toes = 21
	joint_left_hand = 22
	joint_left_palm = 23
	joint_left_wrist = 24
	joint_left_thumb_metacarpal = 25
	joint_left_thumb_phalanx_proximal = 26
	joint_left_thumb_phalanx_distal = 27
	joint_left_thumb_tip = 28
	joint_left_index_finger_metacarpal = 29
	joint_left_index_finger_phalanx_proximal = 30
	joint_left_index_finger_phalanx_intermediate = 31
	joint_left_index_finger_phalanx_distal = 32
	joint_left_index_finger_tip = 33
	joint_left_middle_finger_metacarpal = 34
	joint_left_middle_finger_phalanx_proximal = 35
	joint_left_middle_finger_phalanx_intermediate = 36
	joint_left_middle_finger_phalanx_distal = 37
	joint_left_middle_finger_tip = 38
	joint_left_ring_finger_metacarpal = 39
	joint_left_ring_finger_phalanx_proximal = 40
	joint_left_ring_finger_phalanx_intermediate = 41
	joint_left_ring_finger_phalanx_distal = 42
	joint_left_ring_finger_tip = 43
	joint_left_pinky_finger_metacarpal = 44
	joint_left_pinky_finger_phalanx_proximal = 45
	joint_left_pinky_finger_phalanx_intermediate = 46
	joint_left_pinky_finger_phalanx_distal = 47
	joint_left_pinky_finger_tip = 48
	joint_right_hand = 49
	joint_right_palm = 50
	joint_right_wrist = 51
	joint_right_thumb_metacarpal = 52
	joint_right_thumb_phalanx_proximal = 53
	joint_right_thumb_phalanx_distal = 54
	joint_right_thumb_tip = 55
	joint_right_index_finger_metacarpal = 56
	joint_right_index_finger_phalanx_proximal = 57
	joint_right_index_finger_phalanx_intermediate = 58
	joint_right_index_finger_phalanx_distal = 59
	joint_right_index_finger_tip = 60
	joint_right_middle_finger_metacarpal = 61
	joint_right_middle_finger_phalanx_proximal = 62
	joint_right_middle_finger_phalanx_intermediate = 63
	joint_right_middle_finger_phalanx_distal = 64
	joint_right_middle_finger_tip = 65
	joint_right_ring_finger_metacarpal = 66
	joint_right_ring_finger_phalanx_proximal = 67
	joint_right_ring_finger_phalanx_intermediate = 68
	joint_right_ring_finger_phalanx_distal = 69
	joint_right_ring_finger_tip = 70
	joint_right_pinky_finger_metacarpal = 71
	joint_right_pinky_finger_phalanx_proximal = 72
	joint_right_pinky_finger_phalanx_intermediate = 73
	joint_right_pinky_finger_phalanx_distal = 74
	joint_right_pinky_finger_tip = 75
	joint_max = 76
}

pub enum XRBodyTrackerJointFlags as i64 {
	joint_flag_orientation_valid = 1
	joint_flag_orientation_tracked = 2
	joint_flag_position_valid = 4
	joint_flag_position_tracked = 8
}

pub struct XRBodyTracker {
	XRPositionalTracker
}

pub fn (s &XRBodyTracker) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRBodyTracker) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRBodyTracker) set_has_tracking_data(has_data bool) {
	classname := StringName.new("XRBodyTracker")
	fnname := StringName.new("set_has_tracking_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&has_data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRBodyTracker) get_has_tracking_data() bool {
	mut result := false
	classname := StringName.new("XRBodyTracker")
	fnname := StringName.new("get_has_tracking_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRBodyTracker) set_body_flags(flags XRBodyTrackerBodyFlags) {
	classname := StringName.new("XRBodyTracker")
	fnname := StringName.new("set_body_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2103235750)
	mut args := unsafe { [1]voidptr{} }
	i64_flags := i64(flags)
	args[0] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRBodyTracker) get_body_flags() XRBodyTrackerBodyFlags {
	mut result := i64(XRBodyTrackerBodyFlags.body_flag_upper_body_supported)
	classname := StringName.new("XRBodyTracker")
	fnname := StringName.new("get_body_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3543166366)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRBodyTrackerBodyFlags(result)}
}

pub fn (s &XRBodyTracker) set_joint_flags(joint XRBodyTrackerJoint, flags XRBodyTrackerJointFlags) {
	classname := StringName.new("XRBodyTracker")
	fnname := StringName.new("set_joint_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 592144999)
	mut args := unsafe { [2]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	i64_flags := i64(flags)
	args[1] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRBodyTracker) get_joint_flags(joint XRBodyTrackerJoint) XRBodyTrackerJointFlags {
	mut result := i64(XRBodyTrackerJointFlags.joint_flag_orientation_valid)
	classname := StringName.new("XRBodyTracker")
	fnname := StringName.new("get_joint_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1030162609)
	mut args := unsafe { [1]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRBodyTrackerJointFlags(result)}
}

pub fn (s &XRBodyTracker) set_joint_transform(joint XRBodyTrackerJoint, transform Transform3D) {
	classname := StringName.new("XRBodyTracker")
	fnname := StringName.new("set_joint_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2635424328)
	mut args := unsafe { [2]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	args[1] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRBodyTracker) get_joint_transform(joint XRBodyTrackerJoint) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("XRBodyTracker")
	fnname := StringName.new("get_joint_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3474811534)
	mut args := unsafe { [1]voidptr{} }
	i64_joint := i64(joint)
	args[0] = unsafe{voidptr(&i64_joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
