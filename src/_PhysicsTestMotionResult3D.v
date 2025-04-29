module gd

pub struct PhysicsTestMotionResult3D {
	RefCounted
}

pub fn (s &PhysicsTestMotionResult3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsTestMotionResult3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PhysicsTestMotionResult3D) get_travel() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_travel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsTestMotionResult3D) get_remainder() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_remainder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsTestMotionResult3D) get_collision_safe_fraction() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_collision_safe_fraction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsTestMotionResult3D) get_collision_unsafe_fraction() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_collision_unsafe_fraction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsTestMotionResult3D) get_collision_count() i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_collision_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsTestMotionResult3D_get_collision_point_Cfg {
pub:
	collision_index i64
}

pub fn (s &PhysicsTestMotionResult3D) get_collision_point(cfg PhysicsTestMotionResult3D_get_collision_point_Cfg) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_collision_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1914908202)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsTestMotionResult3D_get_collision_normal_Cfg {
pub:
	collision_index i64
}

pub fn (s &PhysicsTestMotionResult3D) get_collision_normal(cfg PhysicsTestMotionResult3D_get_collision_normal_Cfg) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_collision_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1914908202)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsTestMotionResult3D_get_collider_velocity_Cfg {
pub:
	collision_index i64
}

pub fn (s &PhysicsTestMotionResult3D) get_collider_velocity(cfg PhysicsTestMotionResult3D_get_collider_velocity_Cfg) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_collider_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1914908202)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsTestMotionResult3D_get_collider_id_Cfg {
pub:
	collision_index i64
}

pub fn (s &PhysicsTestMotionResult3D) get_collider_id(cfg PhysicsTestMotionResult3D_get_collider_id_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_collider_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsTestMotionResult3D_get_collider_rid_Cfg {
pub:
	collision_index i64
}

pub fn (s &PhysicsTestMotionResult3D) get_collider_rid(cfg PhysicsTestMotionResult3D_get_collider_rid_Cfg) RID {
	mut result := RID{}
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_collider_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1231817359)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsTestMotionResult3D_get_collider_Cfg {
pub:
	collision_index i64
}

pub fn (s &PhysicsTestMotionResult3D) get_collider(cfg PhysicsTestMotionResult3D_get_collider_Cfg) Object {
	mut result := Object{}
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_collider")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2639523548)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsTestMotionResult3D_get_collider_shape_Cfg {
pub:
	collision_index i64
}

pub fn (s &PhysicsTestMotionResult3D) get_collider_shape(cfg PhysicsTestMotionResult3D_get_collider_shape_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_collider_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsTestMotionResult3D_get_collision_local_shape_Cfg {
pub:
	collision_index i64
}

pub fn (s &PhysicsTestMotionResult3D) get_collision_local_shape(cfg PhysicsTestMotionResult3D_get_collision_local_shape_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_collision_local_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsTestMotionResult3D_get_collision_depth_Cfg {
pub:
	collision_index i64
}

pub fn (s &PhysicsTestMotionResult3D) get_collision_depth(cfg PhysicsTestMotionResult3D_get_collision_depth_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsTestMotionResult3D")
	fnname := StringName.new("get_collision_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 218038398)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
