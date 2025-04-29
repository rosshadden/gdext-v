module gd

pub struct PhysicsDirectBodyState3DExtension {
	PhysicsDirectBodyState3D
}

pub fn (s &PhysicsDirectBodyState3DExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsDirectBodyState3DExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IPhysicsDirectBodyState3DExtensionGetTotalGravity {
mut:
	get_total_gravity_() Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_total_gravity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_total_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetTotalLinearDamp {
mut:
	get_total_linear_damp_() f64
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_total_linear_damp() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_total_linear_damp")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetTotalAngularDamp {
mut:
	get_total_angular_damp_() f64
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_total_angular_damp() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_total_angular_damp")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetCenterOfMass {
mut:
	get_center_of_mass_() Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_center_of_mass() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_center_of_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetCenterOfMassLocal {
mut:
	get_center_of_mass_local_() Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_center_of_mass_local() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_center_of_mass_local")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetPrincipalInertiaAxes {
mut:
	get_principal_inertia_axes_() Basis
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_principal_inertia_axes() Basis {
	mut result := Basis{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_principal_inertia_axes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2716978435)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetInverseMass {
mut:
	get_inverse_mass_() f64
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_inverse_mass() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_inverse_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetInverseInertia {
mut:
	get_inverse_inertia_() Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_inverse_inertia() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_inverse_inertia")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetInverseInertiaTensor {
mut:
	get_inverse_inertia_tensor_() Basis
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_inverse_inertia_tensor() Basis {
	mut result := Basis{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_inverse_inertia_tensor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2716978435)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionSetLinearVelocity {
mut:
	set_linear_velocity_(velocity Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_set_linear_velocity(velocity Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_set_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionGetLinearVelocity {
mut:
	get_linear_velocity_() Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_linear_velocity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionSetAngularVelocity {
mut:
	set_angular_velocity_(velocity Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_set_angular_velocity(velocity Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_set_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionGetAngularVelocity {
mut:
	get_angular_velocity_() Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_angular_velocity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionSetTransform {
mut:
	set_transform_(transform Transform3D)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_set_transform(transform Transform3D) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionGetTransform {
mut:
	get_transform_() Transform3D
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_transform() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetVelocityAtLocalPosition {
mut:
	get_velocity_at_local_position_(local_position Vector3) Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_velocity_at_local_position(local_position Vector3) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_velocity_at_local_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 192990374)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&local_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionApplyCentralImpulse {
mut:
	apply_central_impulse_(impulse Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_apply_central_impulse(impulse Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_apply_central_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&impulse)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionApplyImpulse {
mut:
	apply_impulse_(impulse Vector3, position Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_apply_impulse(impulse Vector3, position Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_apply_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1714681797)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&impulse)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionApplyTorqueImpulse {
mut:
	apply_torque_impulse_(impulse Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_apply_torque_impulse(impulse Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_apply_torque_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&impulse)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionApplyCentralForce {
mut:
	apply_central_force_(force Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_apply_central_force(force Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_apply_central_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionApplyForce {
mut:
	apply_force_(force Vector3, position Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_apply_force(force Vector3, position Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_apply_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1714681797)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&force)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionApplyTorque {
mut:
	apply_torque_(torque Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_apply_torque(torque Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_apply_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&torque)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionAddConstantCentralForce {
mut:
	add_constant_central_force_(force Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_add_constant_central_force(force Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_add_constant_central_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionAddConstantForce {
mut:
	add_constant_force_(force Vector3, position Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_add_constant_force(force Vector3, position Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_add_constant_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1714681797)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&force)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionAddConstantTorque {
mut:
	add_constant_torque_(torque Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_add_constant_torque(torque Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_add_constant_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&torque)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionSetConstantForce {
mut:
	set_constant_force_(force Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_set_constant_force(force Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_set_constant_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionGetConstantForce {
mut:
	get_constant_force_() Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_constant_force() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_constant_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionSetConstantTorque {
mut:
	set_constant_torque_(torque Vector3)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_set_constant_torque(torque Vector3) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_set_constant_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&torque)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionGetConstantTorque {
mut:
	get_constant_torque_() Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_constant_torque() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_constant_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionSetSleepState {
mut:
	set_sleep_state_(enabled bool)
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_set_sleep_state(enabled bool) {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_set_sleep_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionIsSleeping {
mut:
	is_sleeping_() bool
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_is_sleeping() bool {
	mut result := false
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_is_sleeping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetContactCount {
mut:
	get_contact_count_() i64
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_contact_count() i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_contact_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetContactLocalPosition {
mut:
	get_contact_local_position_(contact_idx i64) Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_contact_local_position(contact_idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_contact_local_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetContactLocalNormal {
mut:
	get_contact_local_normal_(contact_idx i64) Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_contact_local_normal(contact_idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_contact_local_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetContactImpulse {
mut:
	get_contact_impulse_(contact_idx i64) Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_contact_impulse(contact_idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_contact_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetContactLocalShape {
mut:
	get_contact_local_shape_(contact_idx i64) i64
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_contact_local_shape(contact_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_contact_local_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetContactLocalVelocityAtPosition {
mut:
	get_contact_local_velocity_at_position_(contact_idx i64) Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_contact_local_velocity_at_position(contact_idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_contact_local_velocity_at_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetContactCollider {
mut:
	get_contact_collider_(contact_idx i64) RID
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_contact_collider(contact_idx i64) RID {
	mut result := RID{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_contact_collider")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetContactColliderPosition {
mut:
	get_contact_collider_position_(contact_idx i64) Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_contact_collider_position(contact_idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_contact_collider_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetContactColliderId {
mut:
	get_contact_collider_id_(contact_idx i64) i64
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_contact_collider_id(contact_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_contact_collider_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetContactColliderObject {
mut:
	get_contact_collider_object_(contact_idx i64) Object
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_contact_collider_object(contact_idx i64) Object {
	mut result := Object{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_contact_collider_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3332903315)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetContactColliderShape {
mut:
	get_contact_collider_shape_(contact_idx i64) i64
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_contact_collider_shape(contact_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_contact_collider_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetContactColliderVelocityAtPosition {
mut:
	get_contact_collider_velocity_at_position_(contact_idx i64) Vector3
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_contact_collider_velocity_at_position(contact_idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_contact_collider_velocity_at_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionGetStep {
mut:
	get_step_() f64
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_step() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState3DExtensionIntegrateForces {
mut:
	integrate_forces_()
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_integrate_forces() {
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_integrate_forces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState3DExtensionGetSpaceState {
mut:
	get_space_state_() PhysicsDirectSpaceState3D
}

pub fn (s &PhysicsDirectBodyState3DExtension) gd_get_space_state() PhysicsDirectSpaceState3D {
	mut result := PhysicsDirectSpaceState3D{}
	classname := StringName.new("PhysicsDirectBodyState3DExtension")
	fnname := StringName.new("_get_space_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2069328350)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
