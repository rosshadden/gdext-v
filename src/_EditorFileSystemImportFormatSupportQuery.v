module gd

pub struct EditorFileSystemImportFormatSupportQuery {
	RefCounted
}

pub fn (s &EditorFileSystemImportFormatSupportQuery) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorFileSystemImportFormatSupportQuery) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorFileSystemImportFormatSupportQueryIsActive {
mut:
	is_active_() bool
}

pub fn (s &EditorFileSystemImportFormatSupportQuery) gd_is_active() bool {
	mut result := false
	classname := StringName.new("EditorFileSystemImportFormatSupportQuery")
	fnname := StringName.new("_is_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorFileSystemImportFormatSupportQueryGetFileExtensions {
mut:
	get_file_extensions_() PackedStringArray
}

pub fn (s &EditorFileSystemImportFormatSupportQuery) gd_get_file_extensions() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorFileSystemImportFormatSupportQuery")
	fnname := StringName.new("_get_file_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorFileSystemImportFormatSupportQueryQuery {
mut:
	query_() bool
}

pub fn (s &EditorFileSystemImportFormatSupportQuery) gd_query() bool {
	mut result := false
	classname := StringName.new("EditorFileSystemImportFormatSupportQuery")
	fnname := StringName.new("_query")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
