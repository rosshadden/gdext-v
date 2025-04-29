module gd

pub struct OpenXRInteractionProfile {
	Resource
}

pub fn (s &OpenXRInteractionProfile) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRInteractionProfile) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRInteractionProfile) set_interaction_profile_path(interaction_profile_path string) {
	classname := StringName.new("OpenXRInteractionProfile")
	fnname := StringName.new("set_interaction_profile_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(interaction_profile_path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRInteractionProfile) get_interaction_profile_path() string {
	mut result := String{}
	classname := StringName.new("OpenXRInteractionProfile")
	fnname := StringName.new("get_interaction_profile_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OpenXRInteractionProfile) get_binding_count() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRInteractionProfile")
	fnname := StringName.new("get_binding_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRInteractionProfile) get_binding(index i64) OpenXRIPBinding {
	mut result := OpenXRIPBinding{}
	classname := StringName.new("OpenXRInteractionProfile")
	fnname := StringName.new("get_binding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3934429652)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRInteractionProfile) set_bindings(bindings Array) {
	classname := StringName.new("OpenXRInteractionProfile")
	fnname := StringName.new("set_bindings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bindings)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRInteractionProfile) get_bindings() Array {
	mut result := Array{}
	classname := StringName.new("OpenXRInteractionProfile")
	fnname := StringName.new("get_bindings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRInteractionProfile) get_binding_modifier_count() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRInteractionProfile")
	fnname := StringName.new("get_binding_modifier_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRInteractionProfile) get_binding_modifier(index i64) OpenXRIPBindingModifier {
	mut result := OpenXRIPBindingModifier{}
	classname := StringName.new("OpenXRInteractionProfile")
	fnname := StringName.new("get_binding_modifier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2419896583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRInteractionProfile) set_binding_modifiers(binding_modifiers Array) {
	classname := StringName.new("OpenXRInteractionProfile")
	fnname := StringName.new("set_binding_modifiers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&binding_modifiers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRInteractionProfile) get_binding_modifiers() Array {
	mut result := Array{}
	classname := StringName.new("OpenXRInteractionProfile")
	fnname := StringName.new("get_binding_modifiers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
