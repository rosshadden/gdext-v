module gd

pub struct ImageTexture3D {
	Texture3D
}

pub fn (s &ImageTexture3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ImageTexture3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ImageTexture3D) create(format ImageFormat, width i64, height i64, depth i64, use_mipmaps bool, data Array) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ImageTexture3D")
	fnname := StringName.new("create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130379827)
	mut args := unsafe { [6]voidptr{} }
	i64_format := i64(format)
	args[0] = unsafe{voidptr(&i64_format)}
	args[1] = unsafe{voidptr(&width)}
	args[2] = unsafe{voidptr(&height)}
	args[3] = unsafe{voidptr(&depth)}
	args[4] = unsafe{voidptr(&use_mipmaps)}
	args[5] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ImageTexture3D) update(data Array) {
	classname := StringName.new("ImageTexture3D")
	fnname := StringName.new("update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
