module gd

pub struct OpenXRBindingModifier {
	Resource
}

pub fn (s &OpenXRBindingModifier) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRBindingModifier) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IOpenXRBindingModifierGetDescription {
mut:
	get_description_() String
}

pub fn (s &OpenXRBindingModifier) gd_get_description() string {
	mut result := String{}
	classname := StringName.new("OpenXRBindingModifier")
	fnname := StringName.new("_get_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IOpenXRBindingModifierGetIpModification {
mut:
	get_ip_modification_() PackedByteArray
}

pub fn (s &OpenXRBindingModifier) gd_get_ip_modification() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("OpenXRBindingModifier")
	fnname := StringName.new("_get_ip_modification")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
