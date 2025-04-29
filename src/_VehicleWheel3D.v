module gd

pub struct VehicleWheel3D {
	Node3D
}

pub fn (s &VehicleWheel3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VehicleWheel3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VehicleWheel3D) set_radius(length f64) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) get_radius() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_suspension_rest_length(length f64) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_suspension_rest_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) get_suspension_rest_length() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_suspension_rest_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_suspension_travel(length f64) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_suspension_travel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) get_suspension_travel() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_suspension_travel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_suspension_stiffness(length f64) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_suspension_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) get_suspension_stiffness() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_suspension_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_suspension_max_force(length f64) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_suspension_max_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) get_suspension_max_force() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_suspension_max_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_damping_compression(length f64) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_damping_compression")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) get_damping_compression() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_damping_compression")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_damping_relaxation(length f64) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_damping_relaxation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) get_damping_relaxation() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_damping_relaxation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_use_as_traction(enable bool) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_use_as_traction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) is_used_as_traction() bool {
	mut result := false
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("is_used_as_traction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_use_as_steering(enable bool) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_use_as_steering")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) is_used_as_steering() bool {
	mut result := false
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("is_used_as_steering")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_friction_slip(length f64) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_friction_slip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) get_friction_slip() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_friction_slip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) is_in_contact() bool {
	mut result := false
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("is_in_contact")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) get_contact_body() Node3D {
	mut result := Node3D{}
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_contact_body")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 151077316)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) get_contact_point() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_contact_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) get_contact_normal() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_contact_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_roll_influence(roll_influence f64) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_roll_influence")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&roll_influence)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) get_roll_influence() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_roll_influence")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) get_skidinfo() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_skidinfo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) get_rpm() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_rpm")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_engine_force(engine_force f64) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_engine_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&engine_force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) get_engine_force() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_engine_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_brake(brake f64) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_brake")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&brake)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) get_brake() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_brake")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VehicleWheel3D) set_steering(steering f64) {
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("set_steering")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&steering)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VehicleWheel3D) get_steering() f64 {
	mut result := f64(0)
	classname := StringName.new("VehicleWheel3D")
	fnname := StringName.new("get_steering")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
