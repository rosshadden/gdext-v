module gd

pub enum ScriptLanguageScriptNameCasing as i64 {
	script_name_casing_auto = 0
	script_name_casing_pascal_case = 1
	script_name_casing_snake_case = 2
	script_name_casing_kebab_case = 3
	script_name_casing_camel_case = 4
}

pub struct ScriptLanguage {
	Object
}

pub fn (s &ScriptLanguage) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ScriptLanguage) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}
