module gd

pub enum OpenXRActionActionType as i64 {
	openxr_action_bool = 0
	openxr_action_float = 1
	openxr_action_vector2 = 2
	openxr_action_pose = 3
}

pub struct OpenXRAction {
	Resource
}

pub fn (s &OpenXRAction) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRAction) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRAction) set_localized_name(localized_name string) {
	classname := StringName.new("OpenXRAction")
	fnname := StringName.new("set_localized_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(localized_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAction) get_localized_name() string {
	mut result := String{}
	classname := StringName.new("OpenXRAction")
	fnname := StringName.new("get_localized_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OpenXRAction) set_action_type(action_type OpenXRActionActionType) {
	classname := StringName.new("OpenXRAction")
	fnname := StringName.new("set_action_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1675238366)
	mut args := unsafe { [1]voidptr{} }
	i64_action_type := i64(action_type)
	args[0] = unsafe{voidptr(&i64_action_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAction) get_action_type() OpenXRActionActionType {
	mut result := i64(OpenXRActionActionType.openxr_action_bool)
	classname := StringName.new("OpenXRAction")
	fnname := StringName.new("get_action_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536542431)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRActionActionType(result)}
}

pub fn (s &OpenXRAction) set_toplevel_paths(toplevel_paths PackedStringArray) {
	classname := StringName.new("OpenXRAction")
	fnname := StringName.new("set_toplevel_paths")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&toplevel_paths)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAction) get_toplevel_paths() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("OpenXRAction")
	fnname := StringName.new("get_toplevel_paths")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
