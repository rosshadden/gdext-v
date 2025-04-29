module gd

pub struct KinematicCollision3D {
	RefCounted
}

pub fn (s &KinematicCollision3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s KinematicCollision3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &KinematicCollision3D) get_travel() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("KinematicCollision3D")
	fnname := StringName.new("get_travel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision3D) get_remainder() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("KinematicCollision3D")
	fnname := StringName.new("get_remainder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision3D) get_depth() f64 {
	mut result := f64(0)
	classname := StringName.new("KinematicCollision3D")
	fnname := StringName.new("get_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision3D) get_collision_count() i64 {
	mut result := i64(0)
	classname := StringName.new("KinematicCollision3D")
	fnname := StringName.new("get_collision_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct KinematicCollision3D_get_position_Cfg {
pub:
	collision_index i64
}

pub fn (s &KinematicCollision3D) get_position(cfg KinematicCollision3D_get_position_Cfg) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("KinematicCollision3D")
	fnname := StringName.new("get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1914908202)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct KinematicCollision3D_get_normal_Cfg {
pub:
	collision_index i64
}

pub fn (s &KinematicCollision3D) get_normal(cfg KinematicCollision3D_get_normal_Cfg) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("KinematicCollision3D")
	fnname := StringName.new("get_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1914908202)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct KinematicCollision3D_get_angle_Cfg {
pub:
	collision_index i64
	up_direction Vector3
}

pub fn (s &KinematicCollision3D) get_angle(cfg KinematicCollision3D_get_angle_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("KinematicCollision3D")
	fnname := StringName.new("get_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1242741860)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	args[1] = unsafe{voidptr(&cfg.up_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct KinematicCollision3D_get_local_shape_Cfg {
pub:
	collision_index i64
}

pub fn (s &KinematicCollision3D) get_local_shape(cfg KinematicCollision3D_get_local_shape_Cfg) Object {
	mut result := Object{}
	classname := StringName.new("KinematicCollision3D")
	fnname := StringName.new("get_local_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2639523548)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct KinematicCollision3D_get_collider_Cfg {
pub:
	collision_index i64
}

pub fn (s &KinematicCollision3D) get_collider(cfg KinematicCollision3D_get_collider_Cfg) Object {
	mut result := Object{}
	classname := StringName.new("KinematicCollision3D")
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
pub struct KinematicCollision3D_get_collider_id_Cfg {
pub:
	collision_index i64
}

pub fn (s &KinematicCollision3D) get_collider_id(cfg KinematicCollision3D_get_collider_id_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("KinematicCollision3D")
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
pub struct KinematicCollision3D_get_collider_rid_Cfg {
pub:
	collision_index i64
}

pub fn (s &KinematicCollision3D) get_collider_rid(cfg KinematicCollision3D_get_collider_rid_Cfg) RID {
	mut result := RID{}
	classname := StringName.new("KinematicCollision3D")
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
pub struct KinematicCollision3D_get_collider_shape_Cfg {
pub:
	collision_index i64
}

pub fn (s &KinematicCollision3D) get_collider_shape(cfg KinematicCollision3D_get_collider_shape_Cfg) Object {
	mut result := Object{}
	classname := StringName.new("KinematicCollision3D")
	fnname := StringName.new("get_collider_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2639523548)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct KinematicCollision3D_get_collider_shape_index_Cfg {
pub:
	collision_index i64
}

pub fn (s &KinematicCollision3D) get_collider_shape_index(cfg KinematicCollision3D_get_collider_shape_index_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("KinematicCollision3D")
	fnname := StringName.new("get_collider_shape_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct KinematicCollision3D_get_collider_velocity_Cfg {
pub:
	collision_index i64
}

pub fn (s &KinematicCollision3D) get_collider_velocity(cfg KinematicCollision3D_get_collider_velocity_Cfg) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("KinematicCollision3D")
	fnname := StringName.new("get_collider_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1914908202)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.collision_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
