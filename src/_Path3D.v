module gd

pub struct Path3D {
	Node3D
}

pub fn (s &Path3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Path3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Path3D) set_curve(curve Curve3D) {
	classname := StringName.new("Path3D")
	fnname := StringName.new("set_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 408955118)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Path3D) get_curve() Curve3D {
	mut result := Curve3D{}
	classname := StringName.new("Path3D")
	fnname := StringName.new("get_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4244715212)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Path3D) set_debug_custom_color(debug_custom_color Color) {
	classname := StringName.new("Path3D")
	fnname := StringName.new("set_debug_custom_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&debug_custom_color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Path3D) get_debug_custom_color() Color {
	mut result := Color{}
	classname := StringName.new("Path3D")
	fnname := StringName.new("get_debug_custom_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
