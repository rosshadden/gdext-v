module gd

pub struct PhysicsBody3D {
	CollisionObject3D
}

pub fn (s &PhysicsBody3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsBody3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct PhysicsBody3D_move_and_collide_Cfg {
pub:
	test_only bool
	safe_margin f64
	recovery_as_collision bool
	max_collisions i64
}

pub fn (s &PhysicsBody3D) move_and_collide(motion Vector3, cfg PhysicsBody3D_move_and_collide_Cfg) KinematicCollision3D {
	mut result := KinematicCollision3D{}
	classname := StringName.new("PhysicsBody3D")
	fnname := StringName.new("move_and_collide")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3208792678)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&motion)}
	args[1] = unsafe{voidptr(&cfg.test_only)}
	args[2] = unsafe{voidptr(&cfg.safe_margin)}
	args[3] = unsafe{voidptr(&cfg.recovery_as_collision)}
	args[4] = unsafe{voidptr(&cfg.max_collisions)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsBody3D_test_move_Cfg {
pub:
	collision KinematicCollision3D
	safe_margin f64
	recovery_as_collision bool
	max_collisions i64
}

pub fn (s &PhysicsBody3D) test_move(from Transform3D, motion Vector3, cfg PhysicsBody3D_test_move_Cfg) bool {
	mut result := false
	classname := StringName.new("PhysicsBody3D")
	fnname := StringName.new("test_move")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2481691619)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&from)}
	args[1] = unsafe{voidptr(&motion)}
	args[2] = voidptr(&cfg.collision.ptr)
	args[3] = unsafe{voidptr(&cfg.safe_margin)}
	args[4] = unsafe{voidptr(&cfg.recovery_as_collision)}
	args[5] = unsafe{voidptr(&cfg.max_collisions)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsBody3D) get_gravity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsBody3D")
	fnname := StringName.new("get_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsBody3D) set_axis_lock(axis PhysicsServer3DBodyAxis, gd_lock bool) {
	classname := StringName.new("PhysicsBody3D")
	fnname := StringName.new("set_axis_lock")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1787895195)
	mut args := unsafe { [2]voidptr{} }
	i64_axis := i64(axis)
	args[0] = unsafe{voidptr(&i64_axis)}
	args[1] = unsafe{voidptr(&gd_lock)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsBody3D) get_axis_lock(axis PhysicsServer3DBodyAxis) bool {
	mut result := false
	classname := StringName.new("PhysicsBody3D")
	fnname := StringName.new("get_axis_lock")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2264617709)
	mut args := unsafe { [1]voidptr{} }
	i64_axis := i64(axis)
	args[0] = unsafe{voidptr(&i64_axis)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsBody3D) get_collision_exceptions() Array {
	mut result := Array{}
	classname := StringName.new("PhysicsBody3D")
	fnname := StringName.new("get_collision_exceptions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsBody3D) add_collision_exception_with(body Node) {
	classname := StringName.new("PhysicsBody3D")
	fnname := StringName.new("add_collision_exception_with")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&body.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsBody3D) remove_collision_exception_with(body Node) {
	classname := StringName.new("PhysicsBody3D")
	fnname := StringName.new("remove_collision_exception_with")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&body.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
