module gd

pub struct ConvexPolygonShape2D {
	Shape2D
}

pub fn (s &ConvexPolygonShape2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ConvexPolygonShape2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ConvexPolygonShape2D) set_point_cloud(point_cloud PackedVector2Array) {
	classname := StringName.new("ConvexPolygonShape2D")
	fnname := StringName.new("set_point_cloud")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&point_cloud)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ConvexPolygonShape2D) set_points(points PackedVector2Array) {
	classname := StringName.new("ConvexPolygonShape2D")
	fnname := StringName.new("set_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&points)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ConvexPolygonShape2D) get_points() PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("ConvexPolygonShape2D")
	fnname := StringName.new("get_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
