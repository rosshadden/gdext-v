module gd

pub enum TextureLayeredLayeredType as i64 {
	layered_type_2d_array = 0
	layered_type_cubemap = 1
	layered_type_cubemap_array = 2
}

pub struct TextureLayered {
	Texture
}

pub fn (s &TextureLayered) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TextureLayered) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ITextureLayeredGetFormat {
mut:
	get_format_() ImageFormat
}

pub fn (s &TextureLayered) gd_get_format() ImageFormat {
	mut result := i64(ImageFormat.format_l8)
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("_get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ImageFormat(result)}
}

pub interface ITextureLayeredGetLayeredType {
mut:
	get_layered_type_() i64
}

pub fn (s &TextureLayered) gd_get_layered_type() i64 {
	mut result := i64(0)
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("_get_layered_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextureLayeredGetWidth {
mut:
	get_width_() i64
}

pub fn (s &TextureLayered) gd_get_width() i64 {
	mut result := i64(0)
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("_get_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextureLayeredGetHeight {
mut:
	get_height_() i64
}

pub fn (s &TextureLayered) gd_get_height() i64 {
	mut result := i64(0)
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("_get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextureLayeredGetLayers {
mut:
	get_layers_() i64
}

pub fn (s &TextureLayered) gd_get_layers() i64 {
	mut result := i64(0)
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("_get_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextureLayeredHasMipmaps {
mut:
	has_mipmaps_() bool
}

pub fn (s &TextureLayered) gd_has_mipmaps() bool {
	mut result := false
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("_has_mipmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITextureLayeredGetLayerData {
mut:
	get_layer_data_(layer_index i64) Image
}

pub fn (s &TextureLayered) gd_get_layer_data(layer_index i64) Image {
	mut result := Image{}
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("_get_layer_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3655284255)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureLayered) get_format() ImageFormat {
	mut result := i64(ImageFormat.format_l8)
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ImageFormat(result)}
}

pub fn (s &TextureLayered) get_layered_type() TextureLayeredLayeredType {
	mut result := i64(TextureLayeredLayeredType.layered_type_2d_array)
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("get_layered_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 518123893)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextureLayeredLayeredType(result)}
}

pub fn (s &TextureLayered) get_width() i64 {
	mut result := i64(0)
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("get_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureLayered) get_height() i64 {
	mut result := i64(0)
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureLayered) get_layers() i64 {
	mut result := i64(0)
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("get_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureLayered) has_mipmaps() bool {
	mut result := false
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("has_mipmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureLayered) get_layer_data(layer i64) Image {
	mut result := Image{}
	classname := StringName.new("TextureLayered")
	fnname := StringName.new("get_layer_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3655284255)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
