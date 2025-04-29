module gd

pub struct ColorPalette {
	Resource
}

pub fn (s &ColorPalette) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ColorPalette) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ColorPalette) set_colors(colors PackedColorArray) {
	classname := StringName.new("ColorPalette")
	fnname := StringName.new("set_colors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3546319833)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&colors)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ColorPalette) get_colors() PackedColorArray {
	mut result := PackedColorArray{}
	classname := StringName.new("ColorPalette")
	fnname := StringName.new("get_colors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1392750486)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
