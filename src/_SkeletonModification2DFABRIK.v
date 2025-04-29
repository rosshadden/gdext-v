module gd

pub struct SkeletonModification2DFABRIK {
	SkeletonModification2D
}

pub fn (s &SkeletonModification2DFABRIK) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SkeletonModification2DFABRIK) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SkeletonModification2DFABRIK) set_target_node(target_nodepath NodePath) {
	classname := StringName.new("SkeletonModification2DFABRIK")
	fnname := StringName.new("set_target_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&target_nodepath)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DFABRIK) get_target_node() NodePath {
	mut result := NodePath{}
	classname := StringName.new("SkeletonModification2DFABRIK")
	fnname := StringName.new("get_target_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DFABRIK) set_fabrik_data_chain_length(length i64) {
	classname := StringName.new("SkeletonModification2DFABRIK")
	fnname := StringName.new("set_fabrik_data_chain_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DFABRIK) get_fabrik_data_chain_length() i64 {
	mut result := i64(0)
	classname := StringName.new("SkeletonModification2DFABRIK")
	fnname := StringName.new("get_fabrik_data_chain_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DFABRIK) set_fabrik_joint_bone2d_node(joint_idx i64, bone2d_nodepath NodePath) {
	classname := StringName.new("SkeletonModification2DFABRIK")
	fnname := StringName.new("set_fabrik_joint_bone2d_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&bone2d_nodepath)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DFABRIK) get_fabrik_joint_bone2d_node(joint_idx i64) NodePath {
	mut result := NodePath{}
	classname := StringName.new("SkeletonModification2DFABRIK")
	fnname := StringName.new("get_fabrik_joint_bone2d_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DFABRIK) set_fabrik_joint_bone_index(joint_idx i64, bone_idx i64) {
	classname := StringName.new("SkeletonModification2DFABRIK")
	fnname := StringName.new("set_fabrik_joint_bone_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DFABRIK) get_fabrik_joint_bone_index(joint_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SkeletonModification2DFABRIK")
	fnname := StringName.new("get_fabrik_joint_bone_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DFABRIK) set_fabrik_joint_magnet_position(joint_idx i64, magnet_position Vector2) {
	classname := StringName.new("SkeletonModification2DFABRIK")
	fnname := StringName.new("set_fabrik_joint_magnet_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&magnet_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DFABRIK) get_fabrik_joint_magnet_position(joint_idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("SkeletonModification2DFABRIK")
	fnname := StringName.new("get_fabrik_joint_magnet_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DFABRIK) set_fabrik_joint_use_target_rotation(joint_idx i64, use_target_rotation bool) {
	classname := StringName.new("SkeletonModification2DFABRIK")
	fnname := StringName.new("set_fabrik_joint_use_target_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&use_target_rotation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DFABRIK) get_fabrik_joint_use_target_rotation(joint_idx i64) bool {
	mut result := false
	classname := StringName.new("SkeletonModification2DFABRIK")
	fnname := StringName.new("get_fabrik_joint_use_target_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
