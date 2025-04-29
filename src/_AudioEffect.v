module gd

pub struct AudioEffect {
	Resource
}

pub fn (s &AudioEffect) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffect) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IAudioEffectInstantiate {
mut:
	instantiate_() AudioEffectInstance
}

pub fn (s &AudioEffect) gd_instantiate() AudioEffectInstance {
	mut result := AudioEffectInstance{}
	classname := StringName.new("AudioEffect")
	fnname := StringName.new("_instantiate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1659796816)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
