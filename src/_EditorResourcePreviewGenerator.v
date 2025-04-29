module gd

pub struct EditorResourcePreviewGenerator {
	RefCounted
}

pub fn (s &EditorResourcePreviewGenerator) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorResourcePreviewGenerator) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorResourcePreviewGeneratorHandles {
mut:
	handles_(gd_type String) bool
}

pub fn (s &EditorResourcePreviewGenerator) gd_handles(gd_type string) bool {
	mut result := false
	classname := StringName.new("EditorResourcePreviewGenerator")
	fnname := StringName.new("_handles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorResourcePreviewGeneratorGenerate {
mut:
	generate_(resource Resource, size Vector2i, metadata Dictionary) Texture2D
}

pub fn (s &EditorResourcePreviewGenerator) gd_generate(resource Resource, size Vector2i, metadata Dictionary) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("EditorResourcePreviewGenerator")
	fnname := StringName.new("_generate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 255939159)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&resource.ptr)
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&metadata)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorResourcePreviewGeneratorGenerateFromPath {
mut:
	generate_from_path_(path String, size Vector2i, metadata Dictionary) Texture2D
}

pub fn (s &EditorResourcePreviewGenerator) gd_generate_from_path(path string, size Vector2i, metadata Dictionary) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("EditorResourcePreviewGenerator")
	fnname := StringName.new("_generate_from_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1601192835)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&size)}
	args[2] = unsafe{voidptr(&metadata)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorResourcePreviewGeneratorGenerateSmallPreviewAutomatically {
mut:
	generate_small_preview_automatically_() bool
}

pub fn (s &EditorResourcePreviewGenerator) gd_generate_small_preview_automatically() bool {
	mut result := false
	classname := StringName.new("EditorResourcePreviewGenerator")
	fnname := StringName.new("_generate_small_preview_automatically")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorResourcePreviewGeneratorCanGenerateSmallPreview {
mut:
	can_generate_small_preview_() bool
}

pub fn (s &EditorResourcePreviewGenerator) gd_can_generate_small_preview() bool {
	mut result := false
	classname := StringName.new("EditorResourcePreviewGenerator")
	fnname := StringName.new("_can_generate_small_preview")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
