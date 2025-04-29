module gd

pub enum VisualShaderNodeCubemapSource as i64 {
	source_texture = 0
	source_port = 1
	source_max = 2
}

pub enum VisualShaderNodeCubemapTextureType as i64 {
	type_data = 0
	type_color = 1
	type_normal_map = 2
	type_max = 3
}

pub struct VisualShaderNodeCubemap {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeCubemap) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeCubemap) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeCubemap) set_source(value VisualShaderNodeCubemapSource) {
	classname := StringName.new("VisualShaderNodeCubemap")
	fnname := StringName.new("set_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1625400621)
	mut args := unsafe { [1]voidptr{} }
	i64_value := i64(value)
	args[0] = unsafe{voidptr(&i64_value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeCubemap) get_source() VisualShaderNodeCubemapSource {
	mut result := i64(VisualShaderNodeCubemapSource.source_texture)
	classname := StringName.new("VisualShaderNodeCubemap")
	fnname := StringName.new("get_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2222048781)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeCubemapSource(result)}
}

pub fn (s &VisualShaderNodeCubemap) set_cube_map(value TextureLayered) {
	classname := StringName.new("VisualShaderNodeCubemap")
	fnname := StringName.new("set_cube_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1278366092)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeCubemap) get_cube_map() TextureLayered {
	mut result := TextureLayered{}
	classname := StringName.new("VisualShaderNodeCubemap")
	fnname := StringName.new("get_cube_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3984243839)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeCubemap) set_texture_type(value VisualShaderNodeCubemapTextureType) {
	classname := StringName.new("VisualShaderNodeCubemap")
	fnname := StringName.new("set_texture_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1899718876)
	mut args := unsafe { [1]voidptr{} }
	i64_value := i64(value)
	args[0] = unsafe{voidptr(&i64_value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeCubemap) get_texture_type() VisualShaderNodeCubemapTextureType {
	mut result := i64(VisualShaderNodeCubemapTextureType.type_data)
	classname := StringName.new("VisualShaderNodeCubemap")
	fnname := StringName.new("get_texture_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3356498888)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeCubemapTextureType(result)}
}
