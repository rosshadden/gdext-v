module gd

pub enum ResourceImporterImportOrder as i64 {
	import_order_default = 0
	import_order_scene = 100
}

pub struct ResourceImporter {
	RefCounted
}

pub fn (s &ResourceImporter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ResourceImporter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}
