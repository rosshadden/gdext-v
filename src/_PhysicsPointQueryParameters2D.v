module gd

pub struct PhysicsPointQueryParameters2D {
	RefCounted
}

pub fn (s &PhysicsPointQueryParameters2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsPointQueryParameters2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PhysicsPointQueryParameters2D) set_position(position Vector2) {
	classname := StringName.new("PhysicsPointQueryParameters2D")
	fnname := StringName.new("set_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsPointQueryParameters2D) get_position() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsPointQueryParameters2D")
	fnname := StringName.new("get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsPointQueryParameters2D) set_canvas_instance_id(canvas_instance_id i64) {
	classname := StringName.new("PhysicsPointQueryParameters2D")
	fnname := StringName.new("set_canvas_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&canvas_instance_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsPointQueryParameters2D) get_canvas_instance_id() i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsPointQueryParameters2D")
	fnname := StringName.new("get_canvas_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsPointQueryParameters2D) set_collision_mask(collision_mask i64) {
	classname := StringName.new("PhysicsPointQueryParameters2D")
	fnname := StringName.new("set_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&collision_mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsPointQueryParameters2D) get_collision_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsPointQueryParameters2D")
	fnname := StringName.new("get_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsPointQueryParameters2D) set_exclude(exclude Array) {
	classname := StringName.new("PhysicsPointQueryParameters2D")
	fnname := StringName.new("set_exclude")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exclude)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsPointQueryParameters2D) get_exclude() Array {
	mut result := Array{}
	classname := StringName.new("PhysicsPointQueryParameters2D")
	fnname := StringName.new("get_exclude")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsPointQueryParameters2D) set_collide_with_bodies(enable bool) {
	classname := StringName.new("PhysicsPointQueryParameters2D")
	fnname := StringName.new("set_collide_with_bodies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsPointQueryParameters2D) is_collide_with_bodies_enabled() bool {
	mut result := false
	classname := StringName.new("PhysicsPointQueryParameters2D")
	fnname := StringName.new("is_collide_with_bodies_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsPointQueryParameters2D) set_collide_with_areas(enable bool) {
	classname := StringName.new("PhysicsPointQueryParameters2D")
	fnname := StringName.new("set_collide_with_areas")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsPointQueryParameters2D) is_collide_with_areas_enabled() bool {
	mut result := false
	classname := StringName.new("PhysicsPointQueryParameters2D")
	fnname := StringName.new("is_collide_with_areas_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
