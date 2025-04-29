module gd

pub struct ConvexPolygonShape3D {
	Shape3D
}

pub fn (s &ConvexPolygonShape3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ConvexPolygonShape3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ConvexPolygonShape3D) set_points(points PackedVector3Array) {
	classname := StringName.new("ConvexPolygonShape3D")
	fnname := StringName.new("set_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&points)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ConvexPolygonShape3D) get_points() PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("ConvexPolygonShape3D")
	fnname := StringName.new("get_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
