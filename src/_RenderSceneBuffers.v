module gd

pub struct RenderSceneBuffers {
	RefCounted
}

pub fn (s &RenderSceneBuffers) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RenderSceneBuffers) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RenderSceneBuffers) configure(config RenderSceneBuffersConfiguration) {
	classname := StringName.new("RenderSceneBuffers")
	fnname := StringName.new("configure")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3072623270)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&config.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
