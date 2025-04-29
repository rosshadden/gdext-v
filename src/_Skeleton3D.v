module gd

pub enum Skeleton3DModifierCallbackModeProcess as i64 {
	modifier_callback_mode_process_physics = 0
	modifier_callback_mode_process_idle = 1
	modifier_callback_mode_process_manual = 2
}

pub struct Skeleton3D {
	Node3D
}

pub fn (s &Skeleton3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Skeleton3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Skeleton3D) add_bone(name string) i64 {
	mut result := i64(0)
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("add_bone")
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

pub fn (s &Skeleton3D) find_bone(name string) i64 {
	mut result := i64(0)
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("find_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) get_bone_name(bone_idx i64) string {
	mut result := String{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Skeleton3D) set_bone_name(bone_idx i64, name string) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) get_bone_meta(bone_idx i64, key string) Variant {
	mut result := Variant{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 203112058)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	arg_sn1 := StringName.new(key)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) get_bone_meta_list(bone_idx i64) Array {
	mut result := Array{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_meta_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) has_bone_meta(bone_idx i64, key string) bool {
	mut result := false
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("has_bone_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 921227809)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	arg_sn1 := StringName.new(key)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) set_bone_meta(bone_idx i64, key string, value Variant) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_bone_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 702482756)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	arg_sn1 := StringName.new(key)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) get_concatenated_bone_names() string {
	mut result := StringName{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_concatenated_bone_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Skeleton3D) get_bone_parent(bone_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_parent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) set_bone_parent(bone_idx i64, parent_idx i64) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_bone_parent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	args[1] = unsafe{voidptr(&parent_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) get_bone_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) get_version() i64 {
	mut result := i64(0)
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) unparent_bone_and_rest(bone_idx i64) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("unparent_bone_and_rest")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) get_bone_children(bone_idx i64) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_children")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706082319)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) get_parentless_bones() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_parentless_bones")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) get_bone_rest(bone_idx i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_rest")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) set_bone_rest(bone_idx i64, rest Transform3D) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_bone_rest")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	args[1] = unsafe{voidptr(&rest)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) get_bone_global_rest(bone_idx i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_global_rest")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) create_skin_from_rest_transforms() Skin {
	mut result := Skin{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("create_skin_from_rest_transforms")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1032037385)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) register_skin(skin Skin) SkinReference {
	mut result := SkinReference{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("register_skin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3405789568)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&skin.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) localize_rests() {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("localize_rests")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) clear_bones() {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("clear_bones")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) get_bone_pose(bone_idx i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) set_bone_pose(bone_idx i64, pose Transform3D) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_bone_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	args[1] = unsafe{voidptr(&pose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) set_bone_pose_position(bone_idx i64, position Vector3) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_bone_pose_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) set_bone_pose_rotation(bone_idx i64, rotation Quaternion) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_bone_pose_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2823819782)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	args[1] = unsafe{voidptr(&rotation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) set_bone_pose_scale(bone_idx i64, scale Vector3) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_bone_pose_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	args[1] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) get_bone_pose_position(bone_idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_pose_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) get_bone_pose_rotation(bone_idx i64) Quaternion {
	mut result := Quaternion{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_pose_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 476865136)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) get_bone_pose_scale(bone_idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_pose_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) reset_bone_pose(bone_idx i64) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("reset_bone_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) reset_bone_poses() {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("reset_bone_poses")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) is_bone_enabled(bone_idx i64) bool {
	mut result := false
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("is_bone_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Skeleton3D_set_bone_enabled_Cfg {
pub:
	enabled bool
}

pub fn (s &Skeleton3D) set_bone_enabled(bone_idx i64, cfg Skeleton3D_set_bone_enabled_Cfg) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_bone_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 972357352)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	args[1] = unsafe{voidptr(&cfg.enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) get_bone_global_pose(bone_idx i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_global_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) set_bone_global_pose(bone_idx i64, pose Transform3D) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_bone_global_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	args[1] = unsafe{voidptr(&pose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) force_update_all_bone_transforms() {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("force_update_all_bone_transforms")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) force_update_bone_child_transform(bone_idx i64) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("force_update_bone_child_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) set_motion_scale(motion_scale f64) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_motion_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&motion_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) get_motion_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_motion_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) set_show_rest_only(enabled bool) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_show_rest_only")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) is_show_rest_only() bool {
	mut result := false
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("is_show_rest_only")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) set_modifier_callback_mode_process(mode Skeleton3DModifierCallbackModeProcess) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_modifier_callback_mode_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3916362634)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) get_modifier_callback_mode_process() Skeleton3DModifierCallbackModeProcess {
	mut result := i64(Skeleton3DModifierCallbackModeProcess.modifier_callback_mode_process_physics)
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_modifier_callback_mode_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 997182536)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Skeleton3DModifierCallbackModeProcess(result)}
}

pub fn (s &Skeleton3D) advance(delta f64) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("advance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) clear_bones_global_pose_override() {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("clear_bones_global_pose_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Skeleton3D_set_bone_global_pose_override_Cfg {
pub:
	persistent bool
}

pub fn (s &Skeleton3D) set_bone_global_pose_override(bone_idx i64, pose Transform3D, amount f64, cfg Skeleton3D_set_bone_global_pose_override_Cfg) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_bone_global_pose_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3483398371)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	args[1] = unsafe{voidptr(&pose)}
	args[2] = unsafe{voidptr(&amount)}
	args[3] = unsafe{voidptr(&cfg.persistent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) get_bone_global_pose_override(bone_idx i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_global_pose_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) get_bone_global_pose_no_override(bone_idx i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_bone_global_pose_no_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) set_animate_physical_bones(enabled bool) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("set_animate_physical_bones")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) get_animate_physical_bones() bool {
	mut result := false
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("get_animate_physical_bones")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton3D) physical_bones_stop_simulation() {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("physical_bones_stop_simulation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Skeleton3D_physical_bones_start_simulation_Cfg {
pub:
	bones Array
}

pub fn (s &Skeleton3D) physical_bones_start_simulation(cfg Skeleton3D_physical_bones_start_simulation_Cfg) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("physical_bones_start_simulation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787316981)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.bones)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) physical_bones_add_collision_exception(exception RID) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("physical_bones_add_collision_exception")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exception)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton3D) physical_bones_remove_collision_exception(exception RID) {
	classname := StringName.new("Skeleton3D")
	fnname := StringName.new("physical_bones_remove_collision_exception")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exception)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
