module gd

pub struct EditorTranslationParserPlugin {
	RefCounted
}

pub fn (s &EditorTranslationParserPlugin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorTranslationParserPlugin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorTranslationParserPluginParseFile {
mut:
	parse_file_(path String) Array
}

pub fn (s &EditorTranslationParserPlugin) gd_parse_file(path string) Array {
	mut result := Array{}
	classname := StringName.new("EditorTranslationParserPlugin")
	fnname := StringName.new("_parse_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1576865988)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorTranslationParserPluginGetRecognizedExtensions {
mut:
	get_recognized_extensions_() PackedStringArray
}

pub fn (s &EditorTranslationParserPlugin) gd_get_recognized_extensions() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorTranslationParserPlugin")
	fnname := StringName.new("_get_recognized_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
