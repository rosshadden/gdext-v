module gd

pub struct VisualShaderNodeTexture3D {
	VisualShaderNodeSample3D
}

pub fn (s &VisualShaderNodeTexture3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeTexture3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeTexture3D) set_texture(value Texture3D) {
	classname := StringName.new("VisualShaderNodeTexture3D")
	fnname := StringName.new("set_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1188404210)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeTexture3D) get_texture() Texture3D {
	mut result := Texture3D{}
	classname := StringName.new("VisualShaderNodeTexture3D")
	fnname := StringName.new("get_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373985333)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
