module gd

pub struct PhysicsDirectSpaceState2D {
	Object
}

pub fn (s &PhysicsDirectSpaceState2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsDirectSpaceState2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct PhysicsDirectSpaceState2D_intersect_point_Cfg {
pub:
	max_results i64
}

pub fn (s &PhysicsDirectSpaceState2D) intersect_point(parameters PhysicsPointQueryParameters2D, cfg PhysicsDirectSpaceState2D_intersect_point_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("PhysicsDirectSpaceState2D")
	fnname := StringName.new("intersect_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2118456068)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&parameters.ptr)
	args[1] = unsafe{voidptr(&cfg.max_results)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsDirectSpaceState2D) intersect_ray(parameters PhysicsRayQueryParameters2D) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("PhysicsDirectSpaceState2D")
	fnname := StringName.new("intersect_ray")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1590275562)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&parameters.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsDirectSpaceState2D_intersect_shape_Cfg {
pub:
	max_results i64
}

pub fn (s &PhysicsDirectSpaceState2D) intersect_shape(parameters PhysicsShapeQueryParameters2D, cfg PhysicsDirectSpaceState2D_intersect_shape_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("PhysicsDirectSpaceState2D")
	fnname := StringName.new("intersect_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2488867228)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&parameters.ptr)
	args[1] = unsafe{voidptr(&cfg.max_results)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsDirectSpaceState2D) cast_motion(parameters PhysicsShapeQueryParameters2D) PackedFloat32Array {
	mut result := PackedFloat32Array{}
	classname := StringName.new("PhysicsDirectSpaceState2D")
	fnname := StringName.new("cast_motion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711275086)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&parameters.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct PhysicsDirectSpaceState2D_collide_shape_Cfg {
pub:
	max_results i64
}

pub fn (s &PhysicsDirectSpaceState2D) collide_shape(parameters PhysicsShapeQueryParameters2D, cfg PhysicsDirectSpaceState2D_collide_shape_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("PhysicsDirectSpaceState2D")
	fnname := StringName.new("collide_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2488867228)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&parameters.ptr)
	args[1] = unsafe{voidptr(&cfg.max_results)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsDirectSpaceState2D) get_rest_info(parameters PhysicsShapeQueryParameters2D) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("PhysicsDirectSpaceState2D")
	fnname := StringName.new("get_rest_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2803666496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&parameters.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
