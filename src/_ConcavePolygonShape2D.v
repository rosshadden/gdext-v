module gd

pub struct ConcavePolygonShape2D {
	Shape2D
}

pub fn (s &ConcavePolygonShape2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ConcavePolygonShape2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ConcavePolygonShape2D) set_segments(segments PackedVector2Array) {
	classname := StringName.new("ConcavePolygonShape2D")
	fnname := StringName.new("set_segments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&segments)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ConcavePolygonShape2D) get_segments() PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("ConcavePolygonShape2D")
	fnname := StringName.new("get_segments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
