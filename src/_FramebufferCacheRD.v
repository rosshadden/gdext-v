module gd

pub struct FramebufferCacheRD {
	Object
}

pub fn (s &FramebufferCacheRD) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s FramebufferCacheRD) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn FramebufferCacheRD.get_cache_multipass(textures Array, passes Array, views i64) RID {
	mut result := RID{}
	classname := StringName.new("FramebufferCacheRD")
	fnname := StringName.new("get_cache_multipass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3437881813)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&textures)}
	args[1] = unsafe{voidptr(&passes)}
	args[2] = unsafe{voidptr(&views)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
