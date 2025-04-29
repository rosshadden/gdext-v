module gd

pub enum SpringBoneSimulator3DBoneDirection as i64 {
	bone_direction_plus_x = 0
	bone_direction_minus_x = 1
	bone_direction_plus_y = 2
	bone_direction_minus_y = 3
	bone_direction_plus_z = 4
	bone_direction_minus_z = 5
	bone_direction_from_parent = 6
}

pub enum SpringBoneSimulator3DCenterFrom as i64 {
	center_from_world_origin = 0
	center_from_node = 1
	center_from_bone = 2
}

pub enum SpringBoneSimulator3DRotationAxis as i64 {
	rotation_axis_x = 0
	rotation_axis_y = 1
	rotation_axis_z = 2
	rotation_axis_all = 3
}

pub struct SpringBoneSimulator3D {
	SkeletonModifier3D
}

pub fn (s &SpringBoneSimulator3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SpringBoneSimulator3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SpringBoneSimulator3D) set_root_bone_name(index i64, bone_name string) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_root_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	arg_sn1 := String.new(bone_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_root_bone_name(index i64) string {
	mut result := String{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_root_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SpringBoneSimulator3D) set_root_bone(index i64, bone i64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_root_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&bone)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_root_bone(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_root_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_end_bone_name(index i64, bone_name string) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_end_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	arg_sn1 := String.new(bone_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_end_bone_name(index i64) string {
	mut result := String{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_end_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SpringBoneSimulator3D) set_end_bone(index i64, bone i64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_end_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&bone)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_end_bone(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_end_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_extend_end_bone(index i64, enabled bool) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_extend_end_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) is_end_bone_extended(index i64) bool {
	mut result := false
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("is_end_bone_extended")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_end_bone_direction(index i64, bone_direction SpringBoneSimulator3DBoneDirection) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_end_bone_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 204796492)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	i64_bone_direction := i64(bone_direction)
	args[1] = unsafe{voidptr(&i64_bone_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_end_bone_direction(index i64) SpringBoneSimulator3DBoneDirection {
	mut result := i64(SpringBoneSimulator3DBoneDirection.bone_direction_plus_x)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_end_bone_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2438315700)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{SpringBoneSimulator3DBoneDirection(result)}
}

pub fn (s &SpringBoneSimulator3D) set_end_bone_length(index i64, length f64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_end_bone_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_end_bone_length(index i64) f64 {
	mut result := f64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_end_bone_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_center_from(index i64, center_from SpringBoneSimulator3DCenterFrom) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_center_from")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2551505749)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	i64_center_from := i64(center_from)
	args[1] = unsafe{voidptr(&i64_center_from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_center_from(index i64) SpringBoneSimulator3DCenterFrom {
	mut result := i64(SpringBoneSimulator3DCenterFrom.center_from_world_origin)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_center_from")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2721930813)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{SpringBoneSimulator3DCenterFrom(result)}
}

pub fn (s &SpringBoneSimulator3D) set_center_node(index i64, node_path NodePath) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_center_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&node_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_center_node(index i64) NodePath {
	mut result := NodePath{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_center_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_center_bone_name(index i64, bone_name string) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_center_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	arg_sn1 := String.new(bone_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_center_bone_name(index i64) string {
	mut result := String{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_center_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SpringBoneSimulator3D) set_center_bone(index i64, bone i64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_center_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&bone)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_center_bone(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_center_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_radius(index i64, radius f64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_radius(index i64) f64 {
	mut result := f64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_rotation_axis(index i64, axis SpringBoneSimulator3DRotationAxis) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_rotation_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3534169209)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	i64_axis := i64(axis)
	args[1] = unsafe{voidptr(&i64_axis)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_rotation_axis(index i64) SpringBoneSimulator3DRotationAxis {
	mut result := i64(SpringBoneSimulator3DRotationAxis.rotation_axis_x)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_rotation_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 748837671)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{SpringBoneSimulator3DRotationAxis(result)}
}

pub fn (s &SpringBoneSimulator3D) set_radius_damping_curve(index i64, curve Curve) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_radius_damping_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1447180063)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_radius_damping_curve(index i64) Curve {
	mut result := Curve{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_radius_damping_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 747537754)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_stiffness(index i64, stiffness f64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&stiffness)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_stiffness(index i64) f64 {
	mut result := f64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_stiffness_damping_curve(index i64, curve Curve) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_stiffness_damping_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1447180063)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_stiffness_damping_curve(index i64) Curve {
	mut result := Curve{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_stiffness_damping_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 747537754)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_drag(index i64, drag f64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_drag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&drag)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_drag(index i64) f64 {
	mut result := f64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_drag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_drag_damping_curve(index i64, curve Curve) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_drag_damping_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1447180063)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_drag_damping_curve(index i64) Curve {
	mut result := Curve{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_drag_damping_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 747537754)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_gravity(index i64, gravity f64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&gravity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_gravity(index i64) f64 {
	mut result := f64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_gravity_damping_curve(index i64, curve Curve) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_gravity_damping_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1447180063)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_gravity_damping_curve(index i64) Curve {
	mut result := Curve{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_gravity_damping_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 747537754)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_gravity_direction(index i64, gravity_direction Vector3) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_gravity_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&gravity_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_gravity_direction(index i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_gravity_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_setting_count(count i64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_setting_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_setting_count() i64 {
	mut result := i64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_setting_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) clear_settings() {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("clear_settings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) set_individual_config(index i64, enabled bool) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_individual_config")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) is_config_individual(index i64) bool {
	mut result := false
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("is_config_individual")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) get_joint_bone_name(index i64, joint i64) string {
	mut result := String{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_joint_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1391810591)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SpringBoneSimulator3D) get_joint_bone(index i64, joint i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_joint_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_joint_rotation_axis(index i64, joint i64, axis SpringBoneSimulator3DRotationAxis) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_joint_rotation_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4224018032)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	i64_axis := i64(axis)
	args[2] = unsafe{voidptr(&i64_axis)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_joint_rotation_axis(index i64, joint i64) SpringBoneSimulator3DRotationAxis {
	mut result := i64(SpringBoneSimulator3DRotationAxis.rotation_axis_x)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_joint_rotation_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2488679199)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{SpringBoneSimulator3DRotationAxis(result)}
}

pub fn (s &SpringBoneSimulator3D) set_joint_radius(index i64, joint i64, radius f64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_joint_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	args[2] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_joint_radius(index i64, joint i64) f64 {
	mut result := f64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_joint_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_joint_stiffness(index i64, joint i64, stiffness f64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_joint_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	args[2] = unsafe{voidptr(&stiffness)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_joint_stiffness(index i64, joint i64) f64 {
	mut result := f64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_joint_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_joint_drag(index i64, joint i64, drag f64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_joint_drag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	args[2] = unsafe{voidptr(&drag)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_joint_drag(index i64, joint i64) f64 {
	mut result := f64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_joint_drag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_joint_gravity(index i64, joint i64, gravity f64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_joint_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	args[2] = unsafe{voidptr(&gravity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_joint_gravity(index i64, joint i64) f64 {
	mut result := f64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_joint_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_joint_gravity_direction(index i64, joint i64, gravity_direction Vector3) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_joint_gravity_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2866752138)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	args[2] = unsafe{voidptr(&gravity_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_joint_gravity_direction(index i64, joint i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_joint_gravity_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1592972041)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) get_joint_count(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_joint_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_enable_all_child_collisions(index i64, enabled bool) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_enable_all_child_collisions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) are_all_child_collisions_enabled(index i64) bool {
	mut result := false
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("are_all_child_collisions_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_exclude_collision_path(index i64, collision i64, node_path NodePath) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_exclude_collision_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 132481804)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&collision)}
	args[2] = unsafe{voidptr(&node_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_exclude_collision_path(index i64, collision i64) NodePath {
	mut result := NodePath{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_exclude_collision_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 464924783)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&collision)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_exclude_collision_count(index i64, count i64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_exclude_collision_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_exclude_collision_count(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_exclude_collision_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) clear_exclude_collisions(index i64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("clear_exclude_collisions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) set_collision_path(index i64, collision i64, node_path NodePath) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_collision_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 132481804)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&collision)}
	args[2] = unsafe{voidptr(&node_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_collision_path(index i64, collision i64) NodePath {
	mut result := NodePath{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_collision_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 464924783)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&collision)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) set_collision_count(index i64, count i64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_collision_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_collision_count(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_collision_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) clear_collisions(index i64) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("clear_collisions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) set_external_force(force Vector3) {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("set_external_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneSimulator3D) get_external_force() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("get_external_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneSimulator3D) reset() {
	classname := StringName.new("SpringBoneSimulator3D")
	fnname := StringName.new("reset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
