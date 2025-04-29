module gd

pub struct PhysicsTestMotionParameters2D {
	RefCounted
}

pub fn (s &PhysicsTestMotionParameters2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsTestMotionParameters2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PhysicsTestMotionParameters2D) get_from() Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("get_from")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsTestMotionParameters2D) set_from(from Transform2D) {
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("set_from")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&from)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsTestMotionParameters2D) get_motion() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("get_motion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsTestMotionParameters2D) set_motion(motion Vector2) {
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("set_motion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&motion)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsTestMotionParameters2D) get_margin() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("get_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsTestMotionParameters2D) set_margin(margin f64) {
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("set_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsTestMotionParameters2D) is_collide_separation_ray_enabled() bool {
	mut result := false
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("is_collide_separation_ray_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsTestMotionParameters2D) set_collide_separation_ray_enabled(enabled bool) {
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("set_collide_separation_ray_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsTestMotionParameters2D) get_exclude_bodies() Array {
	mut result := Array{}
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("get_exclude_bodies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsTestMotionParameters2D) set_exclude_bodies(exclude_list Array) {
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("set_exclude_bodies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exclude_list)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsTestMotionParameters2D) get_exclude_objects() Array {
	mut result := Array{}
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("get_exclude_objects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsTestMotionParameters2D) set_exclude_objects(exclude_list Array) {
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("set_exclude_objects")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exclude_list)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsTestMotionParameters2D) is_recovery_as_collision_enabled() bool {
	mut result := false
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("is_recovery_as_collision_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsTestMotionParameters2D) set_recovery_as_collision_enabled(enabled bool) {
	classname := StringName.new("PhysicsTestMotionParameters2D")
	fnname := StringName.new("set_recovery_as_collision_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
