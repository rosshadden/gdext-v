module gd

pub struct ViewportTexture {
	Texture2D
}

pub fn (s &ViewportTexture) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ViewportTexture) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ViewportTexture) set_viewport_path_in_scene(path NodePath) {
	classname := StringName.new("ViewportTexture")
	fnname := StringName.new("set_viewport_path_in_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ViewportTexture) get_viewport_path_in_scene() NodePath {
	mut result := NodePath{}
	classname := StringName.new("ViewportTexture")
	fnname := StringName.new("get_viewport_path_in_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
