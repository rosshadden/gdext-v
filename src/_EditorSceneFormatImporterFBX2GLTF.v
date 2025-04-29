module gd

pub struct EditorSceneFormatImporterFBX2GLTF {
	EditorSceneFormatImporter
}

pub fn (s &EditorSceneFormatImporterFBX2GLTF) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorSceneFormatImporterFBX2GLTF) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}
