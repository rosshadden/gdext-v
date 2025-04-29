module gd

pub struct EditorScenePostImport {
	RefCounted
}

pub fn (s &EditorScenePostImport) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorScenePostImport) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorScenePostImportPostImport {
mut:
	post_import_(scene Node) Object
}

pub fn (s &EditorScenePostImport) gd_post_import(scene Node) Object {
	mut result := Object{}
	classname := StringName.new("EditorScenePostImport")
	fnname := StringName.new("_post_import")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 134930648)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scene.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorScenePostImport) get_source_file() string {
	mut result := String{}
	classname := StringName.new("EditorScenePostImport")
	fnname := StringName.new("get_source_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
