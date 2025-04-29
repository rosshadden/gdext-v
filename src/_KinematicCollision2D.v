module gd

pub struct KinematicCollision2D {
	RefCounted
}

pub fn (s &KinematicCollision2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s KinematicCollision2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &KinematicCollision2D) get_position() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision2D) get_normal() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision2D) get_travel() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_travel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision2D) get_remainder() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_remainder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct KinematicCollision2D_get_angle_Cfg {
pub:
	up_direction Vector2
}

pub fn (s &KinematicCollision2D) get_angle(cfg KinematicCollision2D_get_angle_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841063350)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.up_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision2D) get_depth() f64 {
	mut result := f64(0)
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision2D) get_local_shape() Object {
	mut result := Object{}
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_local_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision2D) get_collider() Object {
	mut result := Object{}
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_collider")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision2D) get_collider_id() i64 {
	mut result := i64(0)
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_collider_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision2D) get_collider_rid() RID {
	mut result := RID{}
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_collider_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision2D) get_collider_shape() Object {
	mut result := Object{}
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_collider_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision2D) get_collider_shape_index() i64 {
	mut result := i64(0)
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_collider_shape_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &KinematicCollision2D) get_collider_velocity() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("KinematicCollision2D")
	fnname := StringName.new("get_collider_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
