module gd

pub struct RichTextEffect {
	Resource
}

pub fn (s &RichTextEffect) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RichTextEffect) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IRichTextEffectProcessCustomFx {
mut:
	process_custom_fx_(char_fx CharFXTransform) bool
}

pub fn (s &RichTextEffect) gd_process_custom_fx(char_fx CharFXTransform) bool {
	mut result := false
	classname := StringName.new("RichTextEffect")
	fnname := StringName.new("_process_custom_fx")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 31984339)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&char_fx.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
