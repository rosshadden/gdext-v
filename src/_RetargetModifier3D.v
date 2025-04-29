module gd

pub enum RetargetModifier3DTransformFlag as i64 {
	transform_flag_position = 1
	transform_flag_rotation = 2
	transform_flag_scale = 4
	transform_flag_all = 7
}

pub struct RetargetModifier3D {
	SkeletonModifier3D
}

pub fn (s &RetargetModifier3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RetargetModifier3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RetargetModifier3D) set_profile(profile SkeletonProfile) {
	classname := StringName.new("RetargetModifier3D")
	fnname := StringName.new("set_profile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3870374136)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&profile.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RetargetModifier3D) get_profile() SkeletonProfile {
	mut result := SkeletonProfile{}
	classname := StringName.new("RetargetModifier3D")
	fnname := StringName.new("get_profile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291782652)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RetargetModifier3D) set_use_global_pose(use_global_pose bool) {
	classname := StringName.new("RetargetModifier3D")
	fnname := StringName.new("set_use_global_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_global_pose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RetargetModifier3D) is_using_global_pose() bool {
	mut result := false
	classname := StringName.new("RetargetModifier3D")
	fnname := StringName.new("is_using_global_pose")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RetargetModifier3D) set_enable_flags(enable_flags RetargetModifier3DTransformFlag) {
	classname := StringName.new("RetargetModifier3D")
	fnname := StringName.new("set_enable_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2687954213)
	mut args := unsafe { [1]voidptr{} }
	i64_enable_flags := i64(enable_flags)
	args[0] = unsafe{voidptr(&i64_enable_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RetargetModifier3D) get_enable_flags() RetargetModifier3DTransformFlag {
	mut result := i64(RetargetModifier3DTransformFlag.transform_flag_position)
	classname := StringName.new("RetargetModifier3D")
	fnname := StringName.new("get_enable_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 358995420)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RetargetModifier3DTransformFlag(result)}
}

pub fn (s &RetargetModifier3D) set_position_enabled(enabled bool) {
	classname := StringName.new("RetargetModifier3D")
	fnname := StringName.new("set_position_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RetargetModifier3D) is_position_enabled() bool {
	mut result := false
	classname := StringName.new("RetargetModifier3D")
	fnname := StringName.new("is_position_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RetargetModifier3D) set_rotation_enabled(enabled bool) {
	classname := StringName.new("RetargetModifier3D")
	fnname := StringName.new("set_rotation_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RetargetModifier3D) is_rotation_enabled() bool {
	mut result := false
	classname := StringName.new("RetargetModifier3D")
	fnname := StringName.new("is_rotation_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RetargetModifier3D) set_scale_enabled(enabled bool) {
	classname := StringName.new("RetargetModifier3D")
	fnname := StringName.new("set_scale_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RetargetModifier3D) is_scale_enabled() bool {
	mut result := false
	classname := StringName.new("RetargetModifier3D")
	fnname := StringName.new("is_scale_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
