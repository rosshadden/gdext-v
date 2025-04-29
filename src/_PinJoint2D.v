module gd

pub struct PinJoint2D {
	Joint2D
}

pub fn (s &PinJoint2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PinJoint2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PinJoint2D) set_softness(softness f64) {
	classname := StringName.new("PinJoint2D")
	fnname := StringName.new("set_softness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&softness)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PinJoint2D) get_softness() f64 {
	mut result := f64(0)
	classname := StringName.new("PinJoint2D")
	fnname := StringName.new("get_softness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PinJoint2D) set_angular_limit_lower(angular_limit_lower f64) {
	classname := StringName.new("PinJoint2D")
	fnname := StringName.new("set_angular_limit_lower")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angular_limit_lower)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PinJoint2D) get_angular_limit_lower() f64 {
	mut result := f64(0)
	classname := StringName.new("PinJoint2D")
	fnname := StringName.new("get_angular_limit_lower")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PinJoint2D) set_angular_limit_upper(angular_limit_upper f64) {
	classname := StringName.new("PinJoint2D")
	fnname := StringName.new("set_angular_limit_upper")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angular_limit_upper)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PinJoint2D) get_angular_limit_upper() f64 {
	mut result := f64(0)
	classname := StringName.new("PinJoint2D")
	fnname := StringName.new("get_angular_limit_upper")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PinJoint2D) set_motor_target_velocity(motor_target_velocity f64) {
	classname := StringName.new("PinJoint2D")
	fnname := StringName.new("set_motor_target_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&motor_target_velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PinJoint2D) get_motor_target_velocity() f64 {
	mut result := f64(0)
	classname := StringName.new("PinJoint2D")
	fnname := StringName.new("get_motor_target_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PinJoint2D) set_motor_enabled(enabled bool) {
	classname := StringName.new("PinJoint2D")
	fnname := StringName.new("set_motor_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PinJoint2D) is_motor_enabled() bool {
	mut result := false
	classname := StringName.new("PinJoint2D")
	fnname := StringName.new("is_motor_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PinJoint2D) set_angular_limit_enabled(enabled bool) {
	classname := StringName.new("PinJoint2D")
	fnname := StringName.new("set_angular_limit_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PinJoint2D) is_angular_limit_enabled() bool {
	mut result := false
	classname := StringName.new("PinJoint2D")
	fnname := StringName.new("is_angular_limit_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
