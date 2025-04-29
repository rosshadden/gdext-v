module gd

pub struct StaticBody3D {
	PhysicsBody3D
}

pub fn (s &StaticBody3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s StaticBody3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &StaticBody3D) set_constant_linear_velocity(vel Vector3) {
	classname := StringName.new("StaticBody3D")
	fnname := StringName.new("set_constant_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StaticBody3D) set_constant_angular_velocity(vel Vector3) {
	classname := StringName.new("StaticBody3D")
	fnname := StringName.new("set_constant_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vel)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StaticBody3D) get_constant_linear_velocity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("StaticBody3D")
	fnname := StringName.new("get_constant_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StaticBody3D) get_constant_angular_velocity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("StaticBody3D")
	fnname := StringName.new("get_constant_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StaticBody3D) set_physics_material_override(physics_material_override PhysicsMaterial) {
	classname := StringName.new("StaticBody3D")
	fnname := StringName.new("set_physics_material_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1784508650)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&physics_material_override.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StaticBody3D) get_physics_material_override() PhysicsMaterial {
	mut result := PhysicsMaterial{}
	classname := StringName.new("StaticBody3D")
	fnname := StringName.new("get_physics_material_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2521850424)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
