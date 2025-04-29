module gd

pub struct OpenXRCompositionLayerQuad {
	OpenXRCompositionLayer
}

pub fn (s &OpenXRCompositionLayerQuad) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRCompositionLayerQuad) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRCompositionLayerQuad) set_quad_size(size Vector2) {
	classname := StringName.new("OpenXRCompositionLayerQuad")
	fnname := StringName.new("set_quad_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayerQuad) get_quad_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("OpenXRCompositionLayerQuad")
	fnname := StringName.new("get_quad_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
