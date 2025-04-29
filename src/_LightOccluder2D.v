module gd

pub struct LightOccluder2D {
	Node2D
}

pub fn (s &LightOccluder2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s LightOccluder2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &LightOccluder2D) set_occluder_polygon(polygon OccluderPolygon2D) {
	classname := StringName.new("LightOccluder2D")
	fnname := StringName.new("set_occluder_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3258315893)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&polygon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightOccluder2D) get_occluder_polygon() OccluderPolygon2D {
	mut result := OccluderPolygon2D{}
	classname := StringName.new("LightOccluder2D")
	fnname := StringName.new("get_occluder_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3962317075)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightOccluder2D) set_occluder_light_mask(mask i64) {
	classname := StringName.new("LightOccluder2D")
	fnname := StringName.new("set_occluder_light_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightOccluder2D) get_occluder_light_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("LightOccluder2D")
	fnname := StringName.new("get_occluder_light_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightOccluder2D) set_as_sdf_collision(enable bool) {
	classname := StringName.new("LightOccluder2D")
	fnname := StringName.new("set_as_sdf_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightOccluder2D) is_set_as_sdf_collision() bool {
	mut result := false
	classname := StringName.new("LightOccluder2D")
	fnname := StringName.new("is_set_as_sdf_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
