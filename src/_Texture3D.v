module gd

pub struct Texture3D {
	Texture
}

pub fn (s &Texture3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Texture3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ITexture3DGetFormat {
mut:
	get_format_() ImageFormat
}

pub fn (s &Texture3D) gd_get_format() ImageFormat {
	mut result := i64(ImageFormat.format_l8)
	classname := StringName.new("Texture3D")
	fnname := StringName.new("_get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ImageFormat(result)}
}

pub interface ITexture3DGetWidth {
mut:
	get_width_() i64
}

pub fn (s &Texture3D) gd_get_width() i64 {
	mut result := i64(0)
	classname := StringName.new("Texture3D")
	fnname := StringName.new("_get_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITexture3DGetHeight {
mut:
	get_height_() i64
}

pub fn (s &Texture3D) gd_get_height() i64 {
	mut result := i64(0)
	classname := StringName.new("Texture3D")
	fnname := StringName.new("_get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITexture3DGetDepth {
mut:
	get_depth_() i64
}

pub fn (s &Texture3D) gd_get_depth() i64 {
	mut result := i64(0)
	classname := StringName.new("Texture3D")
	fnname := StringName.new("_get_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITexture3DHasMipmaps {
mut:
	has_mipmaps_() bool
}

pub fn (s &Texture3D) gd_has_mipmaps() bool {
	mut result := false
	classname := StringName.new("Texture3D")
	fnname := StringName.new("_has_mipmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITexture3DGetData {
mut:
	get_data_() Array
}

pub fn (s &Texture3D) gd_get_data() Array {
	mut result := Array{}
	classname := StringName.new("Texture3D")
	fnname := StringName.new("_get_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Texture3D) get_format() ImageFormat {
	mut result := i64(ImageFormat.format_l8)
	classname := StringName.new("Texture3D")
	fnname := StringName.new("get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ImageFormat(result)}
}

pub fn (s &Texture3D) get_width() i64 {
	mut result := i64(0)
	classname := StringName.new("Texture3D")
	fnname := StringName.new("get_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Texture3D) get_height() i64 {
	mut result := i64(0)
	classname := StringName.new("Texture3D")
	fnname := StringName.new("get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Texture3D) get_depth() i64 {
	mut result := i64(0)
	classname := StringName.new("Texture3D")
	fnname := StringName.new("get_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Texture3D) has_mipmaps() bool {
	mut result := false
	classname := StringName.new("Texture3D")
	fnname := StringName.new("has_mipmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Texture3D) get_data() Array {
	mut result := Array{}
	classname := StringName.new("Texture3D")
	fnname := StringName.new("get_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Texture3D) create_placeholder() Resource {
	mut result := Resource{}
	classname := StringName.new("Texture3D")
	fnname := StringName.new("create_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
