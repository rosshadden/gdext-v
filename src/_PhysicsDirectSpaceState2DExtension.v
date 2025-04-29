module gd

pub struct PhysicsDirectSpaceState2DExtension {
	PhysicsDirectSpaceState2D
}

pub fn (s &PhysicsDirectSpaceState2DExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsDirectSpaceState2DExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IPhysicsDirectSpaceState2DExtensionIntersectRay {
mut:
	intersect_ray_(from Vector2, to Vector2, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, hit_from_inside bool, gd_result &PhysicsServer2DExtensionRayResult) bool
}

pub fn (s &PhysicsDirectSpaceState2DExtension) gd_intersect_ray(from Vector2, to Vector2, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, hit_from_inside bool, gd_result &PhysicsServer2DExtensionRayResult) bool {
	mut result := false
	classname := StringName.new("PhysicsDirectSpaceState2DExtension")
	fnname := StringName.new("_intersect_ray")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2840492092)
	mut args := unsafe { [7]voidptr{} }
	args[0] = unsafe{voidptr(&from)}
	args[1] = unsafe{voidptr(&to)}
	args[2] = unsafe{voidptr(&collision_mask)}
	args[3] = unsafe{voidptr(&collide_with_bodies)}
	args[4] = unsafe{voidptr(&collide_with_areas)}
	args[5] = unsafe{voidptr(&hit_from_inside)}
	args[6] = unsafe{voidptr(&gd_result)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectSpaceState2DExtensionIntersectPoint {
mut:
	intersect_point_(position Vector2, canvas_instance_id i64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, results &PhysicsServer2DExtensionShapeResult, max_results i64) i64
}

pub fn (s &PhysicsDirectSpaceState2DExtension) gd_intersect_point(position Vector2, canvas_instance_id i64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, results &PhysicsServer2DExtensionShapeResult, max_results i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsDirectSpaceState2DExtension")
	fnname := StringName.new("_intersect_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 522407812)
	mut args := unsafe { [7]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&canvas_instance_id)}
	args[2] = unsafe{voidptr(&collision_mask)}
	args[3] = unsafe{voidptr(&collide_with_bodies)}
	args[4] = unsafe{voidptr(&collide_with_areas)}
	args[5] = unsafe{voidptr(&results)}
	args[6] = unsafe{voidptr(&max_results)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectSpaceState2DExtensionIntersectShape {
mut:
	intersect_shape_(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, gd_result &PhysicsServer2DExtensionShapeResult, max_results i64) i64
}

pub fn (s &PhysicsDirectSpaceState2DExtension) gd_intersect_shape(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, gd_result &PhysicsServer2DExtensionShapeResult, max_results i64) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsDirectSpaceState2DExtension")
	fnname := StringName.new("_intersect_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1584897015)
	mut args := unsafe { [9]voidptr{} }
	args[0] = unsafe{voidptr(&shape_rid)}
	args[1] = unsafe{voidptr(&transform)}
	args[2] = unsafe{voidptr(&motion)}
	args[3] = unsafe{voidptr(&margin)}
	args[4] = unsafe{voidptr(&collision_mask)}
	args[5] = unsafe{voidptr(&collide_with_bodies)}
	args[6] = unsafe{voidptr(&collide_with_areas)}
	args[7] = unsafe{voidptr(&gd_result)}
	args[8] = unsafe{voidptr(&max_results)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectSpaceState2DExtensionCastMotion {
mut:
	cast_motion_(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, closest_safe &f64, closest_unsafe &f64) bool
}

pub fn (s &PhysicsDirectSpaceState2DExtension) gd_cast_motion(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, closest_safe &f64, closest_unsafe &f64) bool {
	mut result := false
	classname := StringName.new("PhysicsDirectSpaceState2DExtension")
	fnname := StringName.new("_cast_motion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1410701151)
	mut args := unsafe { [9]voidptr{} }
	args[0] = unsafe{voidptr(&shape_rid)}
	args[1] = unsafe{voidptr(&transform)}
	args[2] = unsafe{voidptr(&motion)}
	args[3] = unsafe{voidptr(&margin)}
	args[4] = unsafe{voidptr(&collision_mask)}
	args[5] = unsafe{voidptr(&collide_with_bodies)}
	args[6] = unsafe{voidptr(&collide_with_areas)}
	args[7] = unsafe{voidptr(&closest_safe)}
	args[8] = unsafe{voidptr(&closest_unsafe)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsDirectSpaceState2DExtensionCollideShape {
mut:
	collide_shape_(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, results voidptr, max_results i64, result_count &i32) bool
}

pub fn (s &PhysicsDirectSpaceState2DExtension) gd_collide_shape(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, results voidptr, max_results i64, result_count &i32) bool {
	mut result := false
	classname := StringName.new("PhysicsDirectSpaceState2DExtension")
	fnname := StringName.new("_collide_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 871510130)
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

pub interface IPhysicsDirectSpaceState2DExtensionRestInfo {
mut:
	rest_info_(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, rest_info &PhysicsServer2DExtensionShapeRestInfo) bool
}

pub fn (s &PhysicsDirectSpaceState2DExtension) gd_rest_info(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask i64, collide_with_bodies bool, collide_with_areas bool, rest_info &PhysicsServer2DExtensionShapeRestInfo) bool {
	mut result := false
	classname := StringName.new("PhysicsDirectSpaceState2DExtension")
	fnname := StringName.new("_rest_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 772675997)
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

pub fn (s &PhysicsDirectSpaceState2DExtension) is_body_excluded_from_query(body RID) bool {
	mut result := false
	classname := StringName.new("PhysicsDirectSpaceState2DExtension")
	fnname := StringName.new("is_body_excluded_from_query")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
