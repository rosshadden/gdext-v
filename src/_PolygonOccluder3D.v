module gd

pub struct PolygonOccluder3D {
	Occluder3D
}

pub fn (s &PolygonOccluder3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PolygonOccluder3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PolygonOccluder3D) set_polygon(polygon PackedVector2Array) {
	classname := StringName.new("PolygonOccluder3D")
	fnname := StringName.new("set_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&polygon)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PolygonOccluder3D) get_polygon() PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("PolygonOccluder3D")
	fnname := StringName.new("get_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
