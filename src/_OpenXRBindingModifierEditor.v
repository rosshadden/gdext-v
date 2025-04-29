module gd

pub struct OpenXRBindingModifierEditor {
	PanelContainer
}

pub fn (s &OpenXRBindingModifierEditor) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRBindingModifierEditor) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRBindingModifierEditor) get_binding_modifier() OpenXRBindingModifier {
	mut result := OpenXRBindingModifier{}
	classname := StringName.new("OpenXRBindingModifierEditor")
	fnname := StringName.new("get_binding_modifier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2930765082)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRBindingModifierEditor) setup(action_map OpenXRActionMap, binding_modifier OpenXRBindingModifier) {
	classname := StringName.new("OpenXRBindingModifierEditor")
	fnname := StringName.new("setup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1284787389)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&action_map.ptr)
	args[1] = voidptr(&binding_modifier.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
