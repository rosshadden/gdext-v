module gd

pub struct PhysicsBody2D {
	CollisionObject2D
}

pub fn (s &PhysicsBody2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsBody2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct PhysicsBody2D_move_and_collide_Cfg {
pub:
	test_only bool
	safe_margin f64
	recovery_as_collision bool
}

pub fn (s &PhysicsBody2D) move_and_collide(motion Vector2, cfg PhysicsBody2D_move_and_collide_Cfg) KinematicCollision2D {
	mut result := KinematicCollision2D{}
	classname := StringName.new("PhysicsBody2D")
	fnname := StringName.new("move_and_collide")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3681923724)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&motion)}
	args[1] = unsafe{voidptr(&cfg.test_only)}
	args[2] = unsafe{voidptr(&cfg.safe_margin)}
	args[3] = unsafe{voidptr(&cfg.recovery_as_collision)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsBody2D_test_move_Cfg {
pub:
	collision KinematicCollision2D
	safe_margin f64
	recovery_as_collision bool
}

pub fn (s &PhysicsBody2D) test_move(from Transform2D, motion Vector2, cfg PhysicsBody2D_test_move_Cfg) bool {
	mut result := false
	classname := StringName.new("PhysicsBody2D")
	fnname := StringName.new("test_move")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3324464701)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&from)}
	args[1] = unsafe{voidptr(&motion)}
	args[2] = voidptr(&cfg.collision.ptr)
	args[3] = unsafe{voidptr(&cfg.safe_margin)}
	args[4] = unsafe{voidptr(&cfg.recovery_as_collision)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsBody2D) get_gravity() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsBody2D")
	fnname := StringName.new("get_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsBody2D) get_collision_exceptions() Array {
	mut result := Array{}
	classname := StringName.new("PhysicsBody2D")
	fnname := StringName.new("get_collision_exceptions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsBody2D) add_collision_exception_with(body Node) {
	classname := StringName.new("PhysicsBody2D")
	fnname := StringName.new("add_collision_exception_with")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&body.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsBody2D) remove_collision_exception_with(body Node) {
	classname := StringName.new("PhysicsBody2D")
	fnname := StringName.new("remove_collision_exception_with")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&body.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
