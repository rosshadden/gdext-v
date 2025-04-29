module gd

pub struct PhysicsDirectBodyState2DExtension {
	PhysicsDirectBodyState2D
}

pub fn (s &PhysicsDirectBodyState2DExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsDirectBodyState2DExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IPhysicsDirectBodyState2DExtensionGetTotalGravity {
mut:
	get_total_gravity_() Vector2
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_total_gravity() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_total_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetTotalLinearDamp {
mut:
	get_total_linear_damp_() f64
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_total_linear_damp() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_total_linear_damp")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetTotalAngularDamp {
mut:
	get_total_angular_damp_() f64
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_total_angular_damp() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_total_angular_damp")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetCenterOfMass {
mut:
	get_center_of_mass_() Vector2
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_center_of_mass() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_center_of_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetCenterOfMassLocal {
mut:
	get_center_of_mass_local_() Vector2
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_center_of_mass_local() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_center_of_mass_local")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetInverseMass {
mut:
	get_inverse_mass_() f64
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_inverse_mass() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_inverse_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetInverseInertia {
mut:
	get_inverse_inertia_() f64
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_inverse_inertia() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_inverse_inertia")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionSetLinearVelocity {
mut:
	set_linear_velocity_(velocity Vector2)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_set_linear_velocity(velocity Vector2) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_set_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionGetLinearVelocity {
mut:
	get_linear_velocity_() Vector2
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_linear_velocity() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionSetAngularVelocity {
mut:
	set_angular_velocity_(velocity f64)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_set_angular_velocity(velocity f64) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_set_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionGetAngularVelocity {
mut:
	get_angular_velocity_() f64
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_angular_velocity() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionSetTransform {
mut:
	set_transform_(transform Transform2D)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_set_transform(transform Transform2D) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionGetTransform {
mut:
	get_transform_() Transform2D
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_transform() Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetVelocityAtLocalPosition {
mut:
	get_velocity_at_local_position_(local_position Vector2) Vector2
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_velocity_at_local_position(local_position Vector2) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_velocity_at_local_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&local_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionApplyCentralImpulse {
mut:
	apply_central_impulse_(impulse Vector2)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_apply_central_impulse(impulse Vector2) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_apply_central_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&impulse)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionApplyImpulse {
mut:
	apply_impulse_(impulse Vector2, position Vector2)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_apply_impulse(impulse Vector2, position Vector2) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_apply_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3108078480)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&impulse)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionApplyTorqueImpulse {
mut:
	apply_torque_impulse_(impulse f64)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_apply_torque_impulse(impulse f64) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_apply_torque_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&impulse)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionApplyCentralForce {
mut:
	apply_central_force_(force Vector2)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_apply_central_force(force Vector2) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_apply_central_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionApplyForce {
mut:
	apply_force_(force Vector2, position Vector2)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_apply_force(force Vector2, position Vector2) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_apply_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3108078480)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&force)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionApplyTorque {
mut:
	apply_torque_(torque f64)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_apply_torque(torque f64) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_apply_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&torque)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionAddConstantCentralForce {
mut:
	add_constant_central_force_(force Vector2)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_add_constant_central_force(force Vector2) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_add_constant_central_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionAddConstantForce {
mut:
	add_constant_force_(force Vector2, position Vector2)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_add_constant_force(force Vector2, position Vector2) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_add_constant_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3108078480)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&force)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionAddConstantTorque {
mut:
	add_constant_torque_(torque f64)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_add_constant_torque(torque f64) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_add_constant_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&torque)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionSetConstantForce {
mut:
	set_constant_force_(force Vector2)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_set_constant_force(force Vector2) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_set_constant_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionGetConstantForce {
mut:
	get_constant_force_() Vector2
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_constant_force() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_constant_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionSetConstantTorque {
mut:
	set_constant_torque_(torque f64)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_set_constant_torque(torque f64) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_set_constant_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&torque)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionGetConstantTorque {
mut:
	get_constant_torque_() f64
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_constant_torque() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_constant_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionSetSleepState {
mut:
	set_sleep_state_(enabled bool)
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_set_sleep_state(enabled bool) {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_set_sleep_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionIsSleeping {
mut:
	is_sleeping_() bool
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_is_sleeping() bool {
	mut result := false
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_is_sleeping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetContactCount {
mut:
	get_contact_count_() i64
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_contact_count() i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_contact_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetContactLocalPosition {
mut:
	get_contact_local_position_(contact_idx i64) Vector2
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_contact_local_position(contact_idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_contact_local_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetContactLocalNormal {
mut:
	get_contact_local_normal_(contact_idx i64) Vector2
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_contact_local_normal(contact_idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_contact_local_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetContactLocalShape {
mut:
	get_contact_local_shape_(contact_idx i64) i64
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_contact_local_shape(contact_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_contact_local_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetContactLocalVelocityAtPosition {
mut:
	get_contact_local_velocity_at_position_(contact_idx i64) Vector2
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_contact_local_velocity_at_position(contact_idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_contact_local_velocity_at_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetContactCollider {
mut:
	get_contact_collider_(contact_idx i64) RID
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_contact_collider(contact_idx i64) RID {
	mut result := RID{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_contact_collider")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetContactColliderPosition {
mut:
	get_contact_collider_position_(contact_idx i64) Vector2
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_contact_collider_position(contact_idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_contact_collider_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetContactColliderId {
mut:
	get_contact_collider_id_(contact_idx i64) i64
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_contact_collider_id(contact_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_contact_collider_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetContactColliderObject {
mut:
	get_contact_collider_object_(contact_idx i64) Object
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_contact_collider_object(contact_idx i64) Object {
	mut result := Object{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_contact_collider_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3332903315)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetContactColliderShape {
mut:
	get_contact_collider_shape_(contact_idx i64) i64
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_contact_collider_shape(contact_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_contact_collider_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetContactColliderVelocityAtPosition {
mut:
	get_contact_collider_velocity_at_position_(contact_idx i64) Vector2
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_contact_collider_velocity_at_position(contact_idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_contact_collider_velocity_at_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetContactImpulse {
mut:
	get_contact_impulse_(contact_idx i64) Vector2
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_contact_impulse(contact_idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_contact_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&contact_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionGetStep {
mut:
	get_step_() f64
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_step() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectBodyState2DExtensionIntegrateForces {
mut:
	integrate_forces_()
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_integrate_forces() {
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_integrate_forces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsDirectBodyState2DExtensionGetSpaceState {
mut:
	get_space_state_() PhysicsDirectSpaceState2D
}

pub fn (s &PhysicsDirectBodyState2DExtension) gd_get_space_state() PhysicsDirectSpaceState2D {
	mut result := PhysicsDirectSpaceState2D{}
	classname := StringName.new("PhysicsDirectBodyState2DExtension")
	fnname := StringName.new("_get_space_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2506717822)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
