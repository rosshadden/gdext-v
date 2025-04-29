module gd

pub struct SkeletonModification2DLookAt {
	SkeletonModification2D
}

pub fn (s &SkeletonModification2DLookAt) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SkeletonModification2DLookAt) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SkeletonModification2DLookAt) set_bone2d_node(bone2d_nodepath NodePath) {
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("set_bone2d_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone2d_nodepath)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DLookAt) get_bone2d_node() NodePath {
	mut result := NodePath{}
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("get_bone2d_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DLookAt) set_bone_index(bone_idx i64) {
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("set_bone_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DLookAt) get_bone_index() i64 {
	mut result := i64(0)
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("get_bone_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DLookAt) set_target_node(target_nodepath NodePath) {
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("set_target_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&target_nodepath)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DLookAt) get_target_node() NodePath {
	mut result := NodePath{}
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("get_target_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DLookAt) set_additional_rotation(rotation f64) {
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("set_additional_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rotation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DLookAt) get_additional_rotation() f64 {
	mut result := f64(0)
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("get_additional_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DLookAt) set_enable_constraint(enable_constraint bool) {
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("set_enable_constraint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable_constraint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DLookAt) get_enable_constraint() bool {
	mut result := false
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("get_enable_constraint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DLookAt) set_constraint_angle_min(angle_min f64) {
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("set_constraint_angle_min")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle_min)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DLookAt) get_constraint_angle_min() f64 {
	mut result := f64(0)
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("get_constraint_angle_min")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DLookAt) set_constraint_angle_max(angle_max f64) {
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("set_constraint_angle_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle_max)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DLookAt) get_constraint_angle_max() f64 {
	mut result := f64(0)
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("get_constraint_angle_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DLookAt) set_constraint_angle_invert(invert bool) {
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("set_constraint_angle_invert")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&invert)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DLookAt) get_constraint_angle_invert() bool {
	mut result := false
	classname := StringName.new("SkeletonModification2DLookAt")
	fnname := StringName.new("get_constraint_angle_invert")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
