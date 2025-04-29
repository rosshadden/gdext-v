module gd

pub enum PortableCompressedTexture2DCompressionMode as i64 {
	compression_mode_lossless = 0
	compression_mode_lossy = 1
	compression_mode_basis_universal = 2
	compression_mode_s3tc = 3
	compression_mode_etc2 = 4
	compression_mode_bptc = 5
	compression_mode_astc = 6
}

pub struct PortableCompressedTexture2D {
	Texture2D
}

pub fn (s &PortableCompressedTexture2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PortableCompressedTexture2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct PortableCompressedTexture2D_create_from_image_Cfg {
pub:
	normal_map bool
	lossy_quality f64
}

pub fn (s &PortableCompressedTexture2D) create_from_image(image Image, compression_mode PortableCompressedTexture2DCompressionMode, cfg PortableCompressedTexture2D_create_from_image_Cfg) {
	classname := StringName.new("PortableCompressedTexture2D")
	fnname := StringName.new("create_from_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3679243433)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&image.ptr)
	i64_compression_mode := i64(compression_mode)
	args[1] = unsafe{voidptr(&i64_compression_mode)}
	args[2] = unsafe{voidptr(&cfg.normal_map)}
	args[3] = unsafe{voidptr(&cfg.lossy_quality)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PortableCompressedTexture2D) get_format() ImageFormat {
	mut result := i64(ImageFormat.format_l8)
	classname := StringName.new("PortableCompressedTexture2D")
	fnname := StringName.new("get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ImageFormat(result)}
}

pub fn (s &PortableCompressedTexture2D) get_compression_mode() PortableCompressedTexture2DCompressionMode {
	mut result := i64(PortableCompressedTexture2DCompressionMode.compression_mode_lossless)
	classname := StringName.new("PortableCompressedTexture2D")
	fnname := StringName.new("get_compression_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3265612739)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{PortableCompressedTexture2DCompressionMode(result)}
}

pub fn (s &PortableCompressedTexture2D) set_size_override(size Vector2) {
	classname := StringName.new("PortableCompressedTexture2D")
	fnname := StringName.new("set_size_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PortableCompressedTexture2D) get_size_override() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PortableCompressedTexture2D")
	fnname := StringName.new("get_size_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PortableCompressedTexture2D) set_keep_compressed_buffer(keep bool) {
	classname := StringName.new("PortableCompressedTexture2D")
	fnname := StringName.new("set_keep_compressed_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&keep)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PortableCompressedTexture2D) is_keeping_compressed_buffer() bool {
	mut result := false
	classname := StringName.new("PortableCompressedTexture2D")
	fnname := StringName.new("is_keeping_compressed_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn PortableCompressedTexture2D.set_keep_all_compressed_buffers(keep bool) {
	classname := StringName.new("PortableCompressedTexture2D")
	fnname := StringName.new("set_keep_all_compressed_buffers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&keep)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn PortableCompressedTexture2D.is_keeping_all_compressed_buffers() bool {
	mut result := false
	classname := StringName.new("PortableCompressedTexture2D")
	fnname := StringName.new("is_keeping_all_compressed_buffers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
