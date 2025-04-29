module gd

pub struct WeakRef {
	RefCounted
}

pub fn (s &WeakRef) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s WeakRef) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &WeakRef) get_ref() Variant {
	mut result := Variant{}
	classname := StringName.new("WeakRef")
	fnname := StringName.new("get_ref")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
