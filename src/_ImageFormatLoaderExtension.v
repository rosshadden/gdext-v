module gd

pub struct ImageFormatLoaderExtension {
	ImageFormatLoader
}

pub fn (s &ImageFormatLoaderExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ImageFormatLoaderExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IImageFormatLoaderExtensionGetRecognizedExtensions {
mut:
	get_recognized_extensions_() PackedStringArray
}

pub fn (s &ImageFormatLoaderExtension) gd_get_recognized_extensions() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ImageFormatLoaderExtension")
	fnname := StringName.new("_get_recognized_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IImageFormatLoaderExtensionLoadImage {
mut:
	load_image_(image Image, fileaccess FileAccess, flags ImageFormatLoaderLoaderFlags, scale f64) GDError
}

pub fn (s &ImageFormatLoaderExtension) gd_load_image(image Image, fileaccess FileAccess, flags ImageFormatLoaderLoaderFlags, scale f64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ImageFormatLoaderExtension")
	fnname := StringName.new("_load_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3760540541)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&image.ptr)
	args[1] = voidptr(&fileaccess.ptr)
	i64_flags := i64(flags)
	args[2] = unsafe{voidptr(&i64_flags)}
	args[3] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ImageFormatLoaderExtension) add_format_loader() {
	classname := StringName.new("ImageFormatLoaderExtension")
	fnname := StringName.new("add_format_loader")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImageFormatLoaderExtension) remove_format_loader() {
	classname := StringName.new("ImageFormatLoaderExtension")
	fnname := StringName.new("remove_format_loader")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
