module gd

pub struct Path2D {
	Node2D
}

pub fn (s &Path2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Path2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Path2D) set_curve(curve Curve2D) {
	classname := StringName.new("Path2D")
	fnname := StringName.new("set_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659985499)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Path2D) get_curve() Curve2D {
	mut result := Curve2D{}
	classname := StringName.new("Path2D")
	fnname := StringName.new("get_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 660369445)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
