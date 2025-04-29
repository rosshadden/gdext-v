module gd

pub struct ImageTexture {
	Texture2D
}

pub fn (s &ImageTexture) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ImageTexture) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn ImageTexture.create_from_image(image Image) ImageTexture {
	mut result := ImageTexture{}
	classname := StringName.new("ImageTexture")
	fnname := StringName.new("create_from_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2775144163)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&image.ptr)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ImageTexture) get_format() ImageFormat {
	mut result := i64(ImageFormat.format_l8)
	classname := StringName.new("ImageTexture")
	fnname := StringName.new("get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ImageFormat(result)}
}

pub fn (s &ImageTexture) set_image(image Image) {
	classname := StringName.new("ImageTexture")
	fnname := StringName.new("set_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&image.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImageTexture) update(image Image) {
	classname := StringName.new("ImageTexture")
	fnname := StringName.new("update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&image.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImageTexture) set_size_override(size Vector2i) {
	classname := StringName.new("ImageTexture")
	fnname := StringName.new("set_size_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
