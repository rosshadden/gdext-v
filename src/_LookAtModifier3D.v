module gd

pub enum LookAtModifier3DOriginFrom as i64 {
	origin_from_self = 0
	origin_from_specific_bone = 1
	origin_from_external_node = 2
}

pub struct LookAtModifier3D {
	SkeletonModifier3D
}

pub fn (s &LookAtModifier3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s LookAtModifier3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &LookAtModifier3D) set_target_node(target_node NodePath) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_target_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&target_node)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_target_node() NodePath {
	mut result := NodePath{}
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_target_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_bone_name(bone_name string) {
	classname := StringName.new("LookAtModifier3D")
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

pub fn (s &LookAtModifier3D) get_bone_name() string {
	mut result := String{}
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &LookAtModifier3D) set_bone(bone i64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_bone() i64 {
	mut result := i64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_forward_axis(forward_axis SkeletonModifier3DBoneAxis) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_forward_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3199955933)
	mut args := unsafe { [1]voidptr{} }
	i64_forward_axis := i64(forward_axis)
	args[0] = unsafe{voidptr(&i64_forward_axis)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_forward_axis() SkeletonModifier3DBoneAxis {
	mut result := i64(SkeletonModifier3DBoneAxis.bone_axis_plus_x)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_forward_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4076020284)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{SkeletonModifier3DBoneAxis(result)}
}

pub fn (s &LookAtModifier3D) set_primary_rotation_axis(axis Vector3Axis) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_primary_rotation_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1144690656)
	mut args := unsafe { [1]voidptr{} }
	i64_axis := i64(axis)
	args[0] = unsafe{voidptr(&i64_axis)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_primary_rotation_axis() Vector3Axis {
	mut result := i64(Vector3Axis.axis_x)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_primary_rotation_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3050976882)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Vector3Axis(result)}
}

pub fn (s &LookAtModifier3D) set_use_secondary_rotation(enabled bool) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_use_secondary_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) is_using_secondary_rotation() bool {
	mut result := false
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("is_using_secondary_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_origin_safe_margin(margin f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_origin_safe_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_origin_safe_margin() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_origin_safe_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_origin_from(origin_from LookAtModifier3DOriginFrom) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_origin_from")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4254695669)
	mut args := unsafe { [1]voidptr{} }
	i64_origin_from := i64(origin_from)
	args[0] = unsafe{voidptr(&i64_origin_from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_origin_from() LookAtModifier3DOriginFrom {
	mut result := i64(LookAtModifier3DOriginFrom.origin_from_self)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_origin_from")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4057166297)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{LookAtModifier3DOriginFrom(result)}
}

pub fn (s &LookAtModifier3D) set_origin_bone_name(bone_name string) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_origin_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(bone_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_origin_bone_name() string {
	mut result := String{}
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_origin_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &LookAtModifier3D) set_origin_bone(bone i64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_origin_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_origin_bone() i64 {
	mut result := i64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_origin_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_origin_external_node(external_node NodePath) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_origin_external_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&external_node)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_origin_external_node() NodePath {
	mut result := NodePath{}
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_origin_external_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_origin_offset(offset Vector3) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_origin_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_origin_offset() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_origin_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_duration(duration f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_duration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&duration)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_duration() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_duration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_transition_type(transition_type TweenTransitionType) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_transition_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1058637742)
	mut args := unsafe { [1]voidptr{} }
	i64_transition_type := i64(transition_type)
	args[0] = unsafe{voidptr(&i64_transition_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_transition_type() TweenTransitionType {
	mut result := i64(TweenTransitionType.trans_linear)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_transition_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3842314528)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TweenTransitionType(result)}
}

pub fn (s &LookAtModifier3D) set_ease_type(ease_type TweenEaseType) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_ease_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1208105857)
	mut args := unsafe { [1]voidptr{} }
	i64_ease_type := i64(ease_type)
	args[0] = unsafe{voidptr(&i64_ease_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_ease_type() TweenEaseType {
	mut result := i64(TweenEaseType.ease_in)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_ease_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 631880200)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TweenEaseType(result)}
}

pub fn (s &LookAtModifier3D) set_use_angle_limitation(enabled bool) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_use_angle_limitation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) is_using_angle_limitation() bool {
	mut result := false
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("is_using_angle_limitation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_symmetry_limitation(enabled bool) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_symmetry_limitation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) is_limitation_symmetry() bool {
	mut result := false
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("is_limitation_symmetry")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_primary_limit_angle(angle f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_primary_limit_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_primary_limit_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_primary_limit_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_primary_damp_threshold(power f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_primary_damp_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&power)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_primary_damp_threshold() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_primary_damp_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_primary_positive_limit_angle(angle f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_primary_positive_limit_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_primary_positive_limit_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_primary_positive_limit_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_primary_positive_damp_threshold(power f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_primary_positive_damp_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&power)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_primary_positive_damp_threshold() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_primary_positive_damp_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_primary_negative_limit_angle(angle f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_primary_negative_limit_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_primary_negative_limit_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_primary_negative_limit_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_primary_negative_damp_threshold(power f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_primary_negative_damp_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&power)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_primary_negative_damp_threshold() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_primary_negative_damp_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_secondary_limit_angle(angle f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_secondary_limit_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_secondary_limit_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_secondary_limit_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_secondary_damp_threshold(power f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_secondary_damp_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&power)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_secondary_damp_threshold() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_secondary_damp_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_secondary_positive_limit_angle(angle f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_secondary_positive_limit_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_secondary_positive_limit_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_secondary_positive_limit_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_secondary_positive_damp_threshold(power f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_secondary_positive_damp_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&power)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_secondary_positive_damp_threshold() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_secondary_positive_damp_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_secondary_negative_limit_angle(angle f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_secondary_negative_limit_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_secondary_negative_limit_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_secondary_negative_limit_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) set_secondary_negative_damp_threshold(power f64) {
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("set_secondary_negative_damp_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&power)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LookAtModifier3D) get_secondary_negative_damp_threshold() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_secondary_negative_damp_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) get_interpolation_remaining() f64 {
	mut result := f64(0)
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("get_interpolation_remaining")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) is_interpolating() bool {
	mut result := false
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("is_interpolating")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LookAtModifier3D) is_target_within_limitation() bool {
	mut result := false
	classname := StringName.new("LookAtModifier3D")
	fnname := StringName.new("is_target_within_limitation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
