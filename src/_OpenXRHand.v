module gd

pub enum OpenXRHandHands as i64 {
	hand_left = 0
	hand_right = 1
	hand_max = 2
}

pub enum OpenXRHandMotionRange as i64 {
	motion_range_unobstructed = 0
	motion_range_conform_to_controller = 1
	motion_range_max = 2
}

pub enum OpenXRHandSkeletonRig as i64 {
	skeleton_rig_openxr = 0
	skeleton_rig_humanoid = 1
	skeleton_rig_max = 2
}

pub enum OpenXRHandBoneUpdate as i64 {
	bone_update_full = 0
	bone_update_rotation_only = 1
	bone_update_max = 2
}

pub struct OpenXRHand {
	Node3D
}

pub fn (s &OpenXRHand) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRHand) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRHand) set_hand(hand OpenXRHandHands) {
	classname := StringName.new("OpenXRHand")
	fnname := StringName.new("set_hand")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1849328560)
	mut args := unsafe { [1]voidptr{} }
	i64_hand := i64(hand)
	args[0] = unsafe{voidptr(&i64_hand)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRHand) get_hand() OpenXRHandHands {
	mut result := i64(OpenXRHandHands.hand_left)
	classname := StringName.new("OpenXRHand")
	fnname := StringName.new("get_hand")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2850644561)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRHandHands(result)}
}

pub fn (s &OpenXRHand) set_hand_skeleton(hand_skeleton NodePath) {
	classname := StringName.new("OpenXRHand")
	fnname := StringName.new("set_hand_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&hand_skeleton)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRHand) get_hand_skeleton() NodePath {
	mut result := NodePath{}
	classname := StringName.new("OpenXRHand")
	fnname := StringName.new("get_hand_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRHand) set_motion_range(motion_range OpenXRHandMotionRange) {
	classname := StringName.new("OpenXRHand")
	fnname := StringName.new("set_motion_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3326516003)
	mut args := unsafe { [1]voidptr{} }
	i64_motion_range := i64(motion_range)
	args[0] = unsafe{voidptr(&i64_motion_range)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRHand) get_motion_range() OpenXRHandMotionRange {
	mut result := i64(OpenXRHandMotionRange.motion_range_unobstructed)
	classname := StringName.new("OpenXRHand")
	fnname := StringName.new("get_motion_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2191822314)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRHandMotionRange(result)}
}

pub fn (s &OpenXRHand) set_skeleton_rig(skeleton_rig OpenXRHandSkeletonRig) {
	classname := StringName.new("OpenXRHand")
	fnname := StringName.new("set_skeleton_rig")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1528072213)
	mut args := unsafe { [1]voidptr{} }
	i64_skeleton_rig := i64(skeleton_rig)
	args[0] = unsafe{voidptr(&i64_skeleton_rig)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRHand) get_skeleton_rig() OpenXRHandSkeletonRig {
	mut result := i64(OpenXRHandSkeletonRig.skeleton_rig_openxr)
	classname := StringName.new("OpenXRHand")
	fnname := StringName.new("get_skeleton_rig")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 968409338)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRHandSkeletonRig(result)}
}

pub fn (s &OpenXRHand) set_bone_update(bone_update OpenXRHandBoneUpdate) {
	classname := StringName.new("OpenXRHand")
	fnname := StringName.new("set_bone_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3144625444)
	mut args := unsafe { [1]voidptr{} }
	i64_bone_update := i64(bone_update)
	args[0] = unsafe{voidptr(&i64_bone_update)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRHand) get_bone_update() OpenXRHandBoneUpdate {
	mut result := i64(OpenXRHandBoneUpdate.bone_update_full)
	classname := StringName.new("OpenXRHand")
	fnname := StringName.new("get_bone_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1310695248)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRHandBoneUpdate(result)}
}
