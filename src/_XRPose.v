module gd

pub enum XRPoseTrackingConfidence as i64 {
	xr_tracking_confidence_none = 0
	xr_tracking_confidence_low = 1
	xr_tracking_confidence_high = 2
}

pub struct XRPose {
	RefCounted
}

pub fn (s &XRPose) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRPose) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRPose) set_has_tracking_data(has_tracking_data bool) {
	classname := StringName.new("XRPose")
	fnname := StringName.new("set_has_tracking_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&has_tracking_data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRPose) get_has_tracking_data() bool {
	mut result := false
	classname := StringName.new("XRPose")
	fnname := StringName.new("get_has_tracking_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRPose) set_name(name string) {
	classname := StringName.new("XRPose")
	fnname := StringName.new("set_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRPose) get_name() string {
	mut result := StringName{}
	classname := StringName.new("XRPose")
	fnname := StringName.new("get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XRPose) set_transform(transform Transform3D) {
	classname := StringName.new("XRPose")
	fnname := StringName.new("set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRPose) get_transform() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("XRPose")
	fnname := StringName.new("get_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRPose) get_adjusted_transform() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("XRPose")
	fnname := StringName.new("get_adjusted_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRPose) set_linear_velocity(velocity Vector3) {
	classname := StringName.new("XRPose")
	fnname := StringName.new("set_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRPose) get_linear_velocity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("XRPose")
	fnname := StringName.new("get_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRPose) set_angular_velocity(velocity Vector3) {
	classname := StringName.new("XRPose")
	fnname := StringName.new("set_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRPose) get_angular_velocity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("XRPose")
	fnname := StringName.new("get_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRPose) set_tracking_confidence(tracking_confidence XRPoseTrackingConfidence) {
	classname := StringName.new("XRPose")
	fnname := StringName.new("set_tracking_confidence")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171656666)
	mut args := unsafe { [1]voidptr{} }
	i64_tracking_confidence := i64(tracking_confidence)
	args[0] = unsafe{voidptr(&i64_tracking_confidence)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRPose) get_tracking_confidence() XRPoseTrackingConfidence {
	mut result := i64(XRPoseTrackingConfidence.xr_tracking_confidence_none)
	classname := StringName.new("XRPose")
	fnname := StringName.new("get_tracking_confidence")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2064923680)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRPoseTrackingConfidence(result)}
}
