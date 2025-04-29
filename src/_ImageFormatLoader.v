module gd

pub enum ImageFormatLoaderLoaderFlags as i64 {
	flag_none = 0
	flag_force_linear = 1
	flag_convert_colors = 2
}

pub struct ImageFormatLoader {
	RefCounted
}

pub fn (s &ImageFormatLoader) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ImageFormatLoader) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}
