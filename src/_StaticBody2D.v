module gd

pub struct StaticBody2D {
	PhysicsBody2D
}

pub fn (s &StaticBody2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s StaticBody2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &StaticBody2D) set_constant_linear_velocity(vel Vector2) {
	classname := StringName.new("StaticBody2D")
	fnname := StringName.new("set_constant_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StaticBody2D) set_constant_angular_velocity(vel f64) {
	classname := StringName.new("StaticBody2D")
	fnname := StringName.new("set_constant_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StaticBody2D) get_constant_linear_velocity() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("StaticBody2D")
	fnname := StringName.new("get_constant_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StaticBody2D) get_constant_angular_velocity() f64 {
	mut result := f64(0)
	classname := StringName.new("StaticBody2D")
	fnname := StringName.new("get_constant_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StaticBody2D) set_physics_material_override(physics_material_override PhysicsMaterial) {
	classname := StringName.new("StaticBody2D")
	fnname := StringName.new("set_physics_material_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1784508650)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&physics_material_override.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StaticBody2D) get_physics_material_override() PhysicsMaterial {
	mut result := PhysicsMaterial{}
	classname := StringName.new("StaticBody2D")
	fnname := StringName.new("get_physics_material_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2521850424)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
