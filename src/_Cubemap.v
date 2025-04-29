module gd

pub struct Cubemap {
	ImageTextureLayered
}

pub fn (s &Cubemap) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Cubemap) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Cubemap) create_placeholder() Resource {
	mut result := Resource{}
	classname := StringName.new("Cubemap")
	fnname := StringName.new("create_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
