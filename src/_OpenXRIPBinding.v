module gd

pub struct OpenXRIPBinding {
	Resource
}

pub fn (s &OpenXRIPBinding) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRIPBinding) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRIPBinding) set_action(action OpenXRAction) {
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("set_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 349361333)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&action.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRIPBinding) get_action() OpenXRAction {
	mut result := OpenXRAction{}
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("get_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4072409085)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRIPBinding) set_binding_path(binding_path string) {
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("set_binding_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(binding_path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRIPBinding) get_binding_path() string {
	mut result := String{}
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("get_binding_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OpenXRIPBinding) get_binding_modifier_count() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("get_binding_modifier_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRIPBinding) get_binding_modifier(index i64) OpenXRActionBindingModifier {
	mut result := OpenXRActionBindingModifier{}
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("get_binding_modifier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538296211)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRIPBinding) set_binding_modifiers(binding_modifiers Array) {
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("set_binding_modifiers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&binding_modifiers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRIPBinding) get_binding_modifiers() Array {
	mut result := Array{}
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("get_binding_modifiers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRIPBinding) set_paths(paths PackedStringArray) {
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("set_paths")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&paths)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRIPBinding) get_paths() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("get_paths")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRIPBinding) get_path_count() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("get_path_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRIPBinding) has_path(path string) bool {
	mut result := false
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("has_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRIPBinding) add_path(path string) {
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("add_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRIPBinding) remove_path(path string) {
	classname := StringName.new("OpenXRIPBinding")
	fnname := StringName.new("remove_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
