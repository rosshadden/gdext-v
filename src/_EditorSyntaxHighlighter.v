module gd

pub struct EditorSyntaxHighlighter {
	SyntaxHighlighter
}

pub fn (s &EditorSyntaxHighlighter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorSyntaxHighlighter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorSyntaxHighlighterGetName {
mut:
	get_name_() String
}

pub fn (s &EditorSyntaxHighlighter) gd_get_name() string {
	mut result := String{}
	classname := StringName.new("EditorSyntaxHighlighter")
	fnname := StringName.new("_get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorSyntaxHighlighterGetSupportedLanguages {
mut:
	get_supported_languages_() PackedStringArray
}

pub fn (s &EditorSyntaxHighlighter) gd_get_supported_languages() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorSyntaxHighlighter")
	fnname := StringName.new("_get_supported_languages")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
