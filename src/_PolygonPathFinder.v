module gd

pub struct PolygonPathFinder {
	Resource
}

pub fn (s &PolygonPathFinder) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PolygonPathFinder) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PolygonPathFinder) setup(points PackedVector2Array, connections PackedInt32Array) {
	classname := StringName.new("PolygonPathFinder")
	fnname := StringName.new("setup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3251786936)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&points)}
	args[1] = unsafe{voidptr(&connections)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PolygonPathFinder) find_path(from Vector2, to Vector2) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("PolygonPathFinder")
	fnname := StringName.new("find_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1562168077)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from)}
	args[1] = unsafe{voidptr(&to)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PolygonPathFinder) get_intersections(from Vector2, to Vector2) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("PolygonPathFinder")
	fnname := StringName.new("get_intersections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3932192302)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from)}
	args[1] = unsafe{voidptr(&to)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PolygonPathFinder) get_closest_point(point Vector2) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PolygonPathFinder")
	fnname := StringName.new("get_closest_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PolygonPathFinder) is_point_inside(point Vector2) bool {
	mut result := false
	classname := StringName.new("PolygonPathFinder")
	fnname := StringName.new("is_point_inside")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 556197845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PolygonPathFinder) set_point_penalty(idx i64, penalty f64) {
	classname := StringName.new("PolygonPathFinder")
	fnname := StringName.new("set_point_penalty")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&penalty)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PolygonPathFinder) get_point_penalty(idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("PolygonPathFinder")
	fnname := StringName.new("get_point_penalty")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PolygonPathFinder) get_bounds() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("PolygonPathFinder")
	fnname := StringName.new("get_bounds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
