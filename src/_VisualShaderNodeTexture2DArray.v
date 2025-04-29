module gd

pub struct VisualShaderNodeTexture2DArray {
	VisualShaderNodeSample3D
}

pub fn (s &VisualShaderNodeTexture2DArray) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeTexture2DArray) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeTexture2DArray) set_texture_array(value TextureLayered) {
	classname := StringName.new("VisualShaderNodeTexture2DArray")
	fnname := StringName.new("set_texture_array")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1278366092)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeTexture2DArray) get_texture_array() TextureLayered {
	mut result := TextureLayered{}
	classname := StringName.new("VisualShaderNodeTexture2DArray")
	fnname := StringName.new("get_texture_array")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3984243839)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
