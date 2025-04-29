module gd

pub struct PhysicsShapeQueryParameters2D {
	RefCounted
}

pub fn (s &PhysicsShapeQueryParameters2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsShapeQueryParameters2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PhysicsShapeQueryParameters2D) set_shape(shape Resource) {
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("set_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&shape.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsShapeQueryParameters2D) get_shape() Resource {
	mut result := Resource{}
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("get_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsShapeQueryParameters2D) set_shape_rid(shape RID) {
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("set_shape_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsShapeQueryParameters2D) get_shape_rid() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("get_shape_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsShapeQueryParameters2D) set_transform(transform Transform2D) {
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsShapeQueryParameters2D) get_transform() Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("get_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsShapeQueryParameters2D) set_motion(motion Vector2) {
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("set_motion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&motion)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsShapeQueryParameters2D) get_motion() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("get_motion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsShapeQueryParameters2D) set_margin(margin f64) {
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("set_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsShapeQueryParameters2D) get_margin() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("get_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsShapeQueryParameters2D) set_collision_mask(collision_mask i64) {
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("set_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&collision_mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsShapeQueryParameters2D) get_collision_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("get_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsShapeQueryParameters2D) set_exclude(exclude Array) {
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("set_exclude")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exclude)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsShapeQueryParameters2D) get_exclude() Array {
	mut result := Array{}
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("get_exclude")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsShapeQueryParameters2D) set_collide_with_bodies(enable bool) {
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("set_collide_with_bodies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsShapeQueryParameters2D) is_collide_with_bodies_enabled() bool {
	mut result := false
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("is_collide_with_bodies_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsShapeQueryParameters2D) set_collide_with_areas(enable bool) {
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("set_collide_with_areas")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsShapeQueryParameters2D) is_collide_with_areas_enabled() bool {
	mut result := false
	classname := StringName.new("PhysicsShapeQueryParameters2D")
	fnname := StringName.new("is_collide_with_areas_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
