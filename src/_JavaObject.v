module gd

pub struct JavaObject {
	RefCounted
}

pub fn (s &JavaObject) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s JavaObject) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &JavaObject) get_java_class() JavaClass {
	mut result := JavaClass{}
	classname := StringName.new("JavaObject")
	fnname := StringName.new("get_java_class")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 541536347)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
