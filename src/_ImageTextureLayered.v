module gd

pub struct ImageTextureLayered {
	TextureLayered
}

pub fn (s &ImageTextureLayered) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ImageTextureLayered) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ImageTextureLayered) create_from_images(images Array) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ImageTextureLayered")
	fnname := StringName.new("create_from_images")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2785773503)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&images)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ImageTextureLayered) update_layer(image Image, layer i64) {
	classname := StringName.new("ImageTextureLayered")
	fnname := StringName.new("update_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3331733361)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&image.ptr)
	args[1] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
