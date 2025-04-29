module gd

pub struct SkeletonModification2DJiggle {
	SkeletonModification2D
}

pub fn (s &SkeletonModification2DJiggle) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SkeletonModification2DJiggle) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SkeletonModification2DJiggle) set_target_node(target_nodepath NodePath) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_target_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&target_nodepath)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_target_node() NodePath {
	mut result := NodePath{}
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_target_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_jiggle_data_chain_length(length i64) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_jiggle_data_chain_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_jiggle_data_chain_length() i64 {
	mut result := i64(0)
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_jiggle_data_chain_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_stiffness(stiffness f64) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stiffness)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_stiffness() f64 {
	mut result := f64(0)
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_mass(mass f64) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mass)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_mass() f64 {
	mut result := f64(0)
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_damping(damping f64) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_damping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&damping)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_damping() f64 {
	mut result := f64(0)
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_damping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_use_gravity(use_gravity bool) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_use_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_gravity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_use_gravity() bool {
	mut result := false
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_use_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_gravity(gravity Vector2) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gravity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_gravity() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_use_colliders(use_colliders bool) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_use_colliders")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_colliders)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_use_colliders() bool {
	mut result := false
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_use_colliders")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_collision_mask(collision_mask i64) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&collision_mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_collision_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_jiggle_joint_bone2d_node(joint_idx i64, bone2d_node NodePath) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_jiggle_joint_bone2d_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&bone2d_node)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_jiggle_joint_bone2d_node(joint_idx i64) NodePath {
	mut result := NodePath{}
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_jiggle_joint_bone2d_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_jiggle_joint_bone_index(joint_idx i64, bone_idx i64) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_jiggle_joint_bone_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_jiggle_joint_bone_index(joint_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_jiggle_joint_bone_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_jiggle_joint_override(joint_idx i64, override bool) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_jiggle_joint_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&override)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_jiggle_joint_override(joint_idx i64) bool {
	mut result := false
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_jiggle_joint_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_jiggle_joint_stiffness(joint_idx i64, stiffness f64) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_jiggle_joint_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&stiffness)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_jiggle_joint_stiffness(joint_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_jiggle_joint_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_jiggle_joint_mass(joint_idx i64, mass f64) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_jiggle_joint_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&mass)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_jiggle_joint_mass(joint_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_jiggle_joint_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_jiggle_joint_damping(joint_idx i64, damping f64) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_jiggle_joint_damping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&damping)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_jiggle_joint_damping(joint_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_jiggle_joint_damping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_jiggle_joint_use_gravity(joint_idx i64, use_gravity bool) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_jiggle_joint_use_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&use_gravity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_jiggle_joint_use_gravity(joint_idx i64) bool {
	mut result := false
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_jiggle_joint_use_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DJiggle) set_jiggle_joint_gravity(joint_idx i64, gravity Vector2) {
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("set_jiggle_joint_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&gravity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DJiggle) get_jiggle_joint_gravity(joint_idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("SkeletonModification2DJiggle")
	fnname := StringName.new("get_jiggle_joint_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
