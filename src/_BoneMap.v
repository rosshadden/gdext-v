module gd

pub struct BoneMap {
	Resource
}

pub fn (s &BoneMap) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s BoneMap) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &BoneMap) get_profile() SkeletonProfile {
	mut result := SkeletonProfile{}
	classname := StringName.new("BoneMap")
	fnname := StringName.new("get_profile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291782652)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BoneMap) set_profile(profile SkeletonProfile) {
	classname := StringName.new("BoneMap")
	fnname := StringName.new("set_profile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3870374136)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&profile.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BoneMap) get_skeleton_bone_name(profile_bone_name string) string {
	mut result := StringName{}
	classname := StringName.new("BoneMap")
	fnname := StringName.new("get_skeleton_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(profile_bone_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &BoneMap) set_skeleton_bone_name(profile_bone_name string, skeleton_bone_name string) {
	classname := StringName.new("BoneMap")
	fnname := StringName.new("set_skeleton_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(profile_bone_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(skeleton_bone_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BoneMap) find_profile_bone_name(skeleton_bone_name string) string {
	mut result := StringName{}
	classname := StringName.new("BoneMap")
	fnname := StringName.new("find_profile_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(skeleton_bone_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
