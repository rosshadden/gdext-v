module gd

pub struct OpenXRInteractionProfileEditorBase {
	HBoxContainer
}

pub fn (s &OpenXRInteractionProfileEditorBase) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRInteractionProfileEditorBase) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRInteractionProfileEditorBase) setup(action_map OpenXRActionMap, interaction_profile OpenXRInteractionProfile) {
	classname := StringName.new("OpenXRInteractionProfileEditorBase")
	fnname := StringName.new("setup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 421962938)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&action_map.ptr)
	args[1] = voidptr(&interaction_profile.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
