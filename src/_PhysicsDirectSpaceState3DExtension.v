module gd

pub struct PhysicsDirectSpaceState3DExtension {
	PhysicsDirectSpaceState3D
}

pub fn (s &PhysicsDirectSpaceState3DExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsDirectSpaceState3DExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IPhysicsDirectSpaceState3DExtensionIntersectRay {
mut:
	intersect_ray_(from Vector3, to Vector3, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, hit_from_inside bool, hit_back_faces bool, pick_ray bool, gd_result &PhysicsServer3DExtensionRayResult) bool
}

pub fn (s &PhysicsDirectSpaceState3DExtension) gd_intersect_ray(from Vector3, to Vector3, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, hit_from_inside bool, hit_back_faces bool, pick_ray bool, gd_result &PhysicsServer3DExtensionRayResult) bool {
	mut result := false
	classname := StringName.new("PhysicsDirectSpaceState3DExtension")
	fnname := StringName.new("_intersect_ray")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2022529123)
	mut args := unsafe { [9]voidptr{} }
	args[0] = unsafe{voidptr(&from)}
	args[1] = unsafe{voidptr(&to)}
	args[2] = unsafe{voidptr(&collision_mask)}
	args[3] = unsafe{voidptr(&collide_with_bodies)}
	args[4] = unsafe{voidptr(&collide_with_areas)}
	args[5] = unsafe{voidptr(&hit_from_inside)}
	args[6] = unsafe{voidptr(&hit_back_faces)}
	args[7] = unsafe{voidptr(&pick_ray)}
	args[8] = unsafe{voidptr(&gd_result)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectSpaceState3DExtensionIntersectPoint {
mut:
	intersect_point_(position Vector3, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, results &PhysicsServer3DExtensionShapeResult, max_results i64) i64
}

pub fn (s &PhysicsDirectSpaceState3DExtension) gd_intersect_point(position Vector3, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, results &PhysicsServer3DExtensionShapeResult, max_results i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsDirectSpaceState3DExtension")
	fnname := StringName.new("_intersect_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3378904092)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&collision_mask)}
	args[2] = unsafe{voidptr(&collide_with_bodies)}
	args[3] = unsafe{voidptr(&collide_with_areas)}
	args[4] = unsafe{voidptr(&results)}
	args[5] = unsafe{voidptr(&max_results)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectSpaceState3DExtensionIntersectShape {
mut:
	intersect_shape_(shape_rid RID, transform Transform3D, motion Vector3, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, result_count &PhysicsServer3DExtensionShapeResult, max_results i64) i64
}

pub fn (s &PhysicsDirectSpaceState3DExtension) gd_intersect_shape(shape_rid RID, transform Transform3D, motion Vector3, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, result_count &PhysicsServer3DExtensionShapeResult, max_results i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsDirectSpaceState3DExtension")
	fnname := StringName.new("_intersect_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 728953575)
	mut args := unsafe { [9]voidptr{} }
	args[0] = unsafe{voidptr(&shape_rid)}
	args[1] = unsafe{voidptr(&transform)}
	args[2] = unsafe{voidptr(&motion)}
	args[3] = unsafe{voidptr(&margin)}
	args[4] = unsafe{voidptr(&collision_mask)}
	args[5] = unsafe{voidptr(&collide_with_bodies)}
	args[6] = unsafe{voidptr(&collide_with_areas)}
	args[7] = unsafe{voidptr(&result_count)}
	args[8] = unsafe{voidptr(&max_results)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectSpaceState3DExtensionCastMotion {
mut:
	cast_motion_(shape_rid RID, transform Transform3D, motion Vector3, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, closest_safe &f64, closest_unsafe &f64, info &PhysicsServer3DExtensionShapeRestInfo) bool
}

pub fn (s &PhysicsDirectSpaceState3DExtension) gd_cast_motion(shape_rid RID, transform Transform3D, motion Vector3, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, closest_safe &f64, closest_unsafe &f64, info &PhysicsServer3DExtensionShapeRestInfo) bool {
	mut result := false
	classname := StringName.new("PhysicsDirectSpaceState3DExtension")
	fnname := StringName.new("_cast_motion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2320624824)
	mut args := unsafe { [10]voidptr{} }
	args[0] = unsafe{voidptr(&shape_rid)}
	args[1] = unsafe{voidptr(&transform)}
	args[2] = unsafe{voidptr(&motion)}
	args[3] = unsafe{voidptr(&margin)}
	args[4] = unsafe{voidptr(&collision_mask)}
	args[5] = unsafe{voidptr(&collide_with_bodies)}
	args[6] = unsafe{voidptr(&collide_with_areas)}
	args[7] = unsafe{voidptr(&closest_safe)}
	args[8] = unsafe{voidptr(&closest_unsafe)}
	args[9] = unsafe{voidptr(&info)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectSpaceState3DExtensionCollideShape {
mut:
	collide_shape_(shape_rid RID, transform Transform3D, motion Vector3, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, results voidptr, max_results i64, result_count &i32) bool
}

pub fn (s &PhysicsDirectSpaceState3DExtension) gd_collide_shape(shape_rid RID, transform Transform3D, motion Vector3, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, results voidptr, max_results i64, result_count &i32) bool {
	mut result := false
	classname := StringName.new("PhysicsDirectSpaceState3DExtension")
	fnname := StringName.new("_collide_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2320624824)
	mut args := unsafe { [10]voidptr{} }
	args[0] = unsafe{voidptr(&shape_rid)}
	args[1] = unsafe{voidptr(&transform)}
	args[2] = unsafe{voidptr(&motion)}
	args[3] = unsafe{voidptr(&margin)}
	args[4] = unsafe{voidptr(&collision_mask)}
	args[5] = unsafe{voidptr(&collide_with_bodies)}
	args[6] = unsafe{voidptr(&collide_with_areas)}
	args[7] = unsafe{voidptr(&results)}
	args[8] = unsafe{voidptr(&max_results)}
	args[9] = unsafe{voidptr(&result_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectSpaceState3DExtensionRestInfo {
mut:
	rest_info_(shape_rid RID, transform Transform3D, motion Vector3, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, rest_info &PhysicsServer3DExtensionShapeRestInfo) bool
}

pub fn (s &PhysicsDirectSpaceState3DExtension) gd_rest_info(shape_rid RID, transform Transform3D, motion Vector3, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, rest_info &PhysicsServer3DExtensionShapeRestInfo) bool {
	mut result := false
	classname := StringName.new("PhysicsDirectSpaceState3DExtension")
	fnname := StringName.new("_rest_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 856242757)
	mut args := unsafe { [8]voidptr{} }
	args[0] = unsafe{voidptr(&shape_rid)}
	args[1] = unsafe{voidptr(&transform)}
	args[2] = unsafe{voidptr(&motion)}
	args[3] = unsafe{voidptr(&margin)}
	args[4] = unsafe{voidptr(&collision_mask)}
	args[5] = unsafe{voidptr(&collide_with_bodies)}
	args[6] = unsafe{voidptr(&collide_with_areas)}
	args[7] = unsafe{voidptr(&rest_info)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectSpaceState3DExtensionGetClosestPointToObjectVolume {
mut:
	get_closest_point_to_object_volume_(object RID, point Vector3) Vector3
}

pub fn (s &PhysicsDirectSpaceState3DExtension) gd_get_closest_point_to_object_volume(object RID, point Vector3) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsDirectSpaceState3DExtension")
	fnname := StringName.new("_get_closest_point_to_object_volume")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2056183332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&object)}
	args[1] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsDirectSpaceState3DExtension) is_body_excluded_from_query(body RID) bool {
	mut result := false
	classname := StringName.new("PhysicsDirectSpaceState3DExtension")
	fnname := StringName.new("is_body_excluded_from_query")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
