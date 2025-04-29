module gd

pub struct BoneAttachment3D {
	Node3D
}

pub fn (s &BoneAttachment3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s BoneAttachment3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &BoneAttachment3D) get_skeleton() Skeleton3D {
	mut result := Skeleton3D{}
	classname := StringName.new("BoneAttachment3D")
	fnname := StringName.new("get_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1814733083)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BoneAttachment3D) set_bone_name(bone_name string) {
	classname := StringName.new("BoneAttachment3D")
	fnname := StringName.new("set_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(bone_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BoneAttachment3D) get_bone_name() string {
	mut result := String{}
	classname := StringName.new("BoneAttachment3D")
	fnname := StringName.new("get_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &BoneAttachment3D) set_bone_idx(bone_idx i64) {
	classname := StringName.new("BoneAttachment3D")
	fnname := StringName.new("set_bone_idx")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BoneAttachment3D) get_bone_idx() i64 {
	mut result := i64(0)
	classname := StringName.new("BoneAttachment3D")
	fnname := StringName.new("get_bone_idx")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BoneAttachment3D) on_skeleton_update() {
	classname := StringName.new("BoneAttachment3D")
	fnname := StringName.new("on_skeleton_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BoneAttachment3D) set_override_pose(override_pose bool) {
	classname := StringName.new("BoneAttachment3D")
	fnname := StringName.new("set_override_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&override_pose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BoneAttachment3D) get_override_pose() bool {
	mut result := false
	classname := StringName.new("BoneAttachment3D")
	fnname := StringName.new("get_override_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BoneAttachment3D) set_use_external_skeleton(use_external_skeleton bool) {
	classname := StringName.new("BoneAttachment3D")
	fnname := StringName.new("set_use_external_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_external_skeleton)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BoneAttachment3D) get_use_external_skeleton() bool {
	mut result := false
	classname := StringName.new("BoneAttachment3D")
	fnname := StringName.new("get_use_external_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BoneAttachment3D) set_external_skeleton(external_skeleton NodePath) {
	classname := StringName.new("BoneAttachment3D")
	fnname := StringName.new("set_external_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&external_skeleton)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BoneAttachment3D) get_external_skeleton() NodePath {
	mut result := NodePath{}
	classname := StringName.new("BoneAttachment3D")
	fnname := StringName.new("get_external_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
