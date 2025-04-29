module gd

pub struct PackedDataContainer {
	Resource
}

pub fn (s &PackedDataContainer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PackedDataContainer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PackedDataContainer) pack(value Variant) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PackedDataContainer")
	fnname := StringName.new("pack")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 966674026)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &PackedDataContainer) size() i64 {
	mut result := i64(0)
	classname := StringName.new("PackedDataContainer")
	fnname := StringName.new("size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
