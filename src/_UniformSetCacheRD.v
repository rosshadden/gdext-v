module gd

pub struct UniformSetCacheRD {
	Object
}

pub fn (s &UniformSetCacheRD) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s UniformSetCacheRD) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn UniformSetCacheRD.get_cache(shader RID, set i64, uniforms Array) RID {
	mut result := RID{}
	classname := StringName.new("UniformSetCacheRD")
	fnname := StringName.new("get_cache")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 658571723)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&shader)}
	args[1] = unsafe{voidptr(&set)}
	args[2] = unsafe{voidptr(&uniforms)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
