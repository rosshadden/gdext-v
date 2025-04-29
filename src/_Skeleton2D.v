module gd

pub struct Skeleton2D {
	Node2D
}

pub fn (s &Skeleton2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Skeleton2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Skeleton2D) get_bone_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Skeleton2D")
	fnname := StringName.new("get_bone_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton2D) get_bone(idx i64) Bone2D {
	mut result := Bone2D{}
	classname := StringName.new("Skeleton2D")
	fnname := StringName.new("get_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2556267111)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton2D) get_skeleton() RID {
	mut result := RID{}
	classname := StringName.new("Skeleton2D")
	fnname := StringName.new("get_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton2D) set_modification_stack(modification_stack SkeletonModificationStack2D) {
	classname := StringName.new("Skeleton2D")
	fnname := StringName.new("set_modification_stack")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3907307132)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&modification_stack.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton2D) get_modification_stack() SkeletonModificationStack2D {
	mut result := SkeletonModificationStack2D{}
	classname := StringName.new("Skeleton2D")
	fnname := StringName.new("get_modification_stack")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2107508396)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Skeleton2D) execute_modifications(delta f64, execution_mode i64) {
	classname := StringName.new("Skeleton2D")
	fnname := StringName.new("execute_modifications")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1005356550)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&delta)}
	args[1] = unsafe{voidptr(&execution_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton2D) set_bone_local_pose_override(bone_idx i64, override_pose Transform2D, strength f64, persistent bool) {
	classname := StringName.new("Skeleton2D")
	fnname := StringName.new("set_bone_local_pose_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 555457532)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	args[1] = unsafe{voidptr(&override_pose)}
	args[2] = unsafe{voidptr(&strength)}
	args[3] = unsafe{voidptr(&persistent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Skeleton2D) get_bone_local_pose_override(bone_idx i64) Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("Skeleton2D")
	fnname := StringName.new("get_bone_local_pose_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2995540667)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
