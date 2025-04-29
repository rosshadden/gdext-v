module gd

pub struct CSharpScript {
	Script
}

pub fn (s &CSharpScript) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CSharpScript) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CSharpScript) new() Variant {
	mut result := Variant{}
	classname := StringName.new("CSharpScript")
	fnname := StringName.new("new")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1545262638)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
