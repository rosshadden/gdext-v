module gd

pub struct OpenXRActionSet {
	Resource
}

pub fn (s &OpenXRActionSet) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRActionSet) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRActionSet) set_localized_name(localized_name string) {
	classname := StringName.new("OpenXRActionSet")
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

pub fn (s &OpenXRActionSet) get_localized_name() string {
	mut result := String{}
	classname := StringName.new("OpenXRActionSet")
	fnname := StringName.new("get_localized_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OpenXRActionSet) set_priority(priority i64) {
	classname := StringName.new("OpenXRActionSet")
	fnname := StringName.new("set_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRActionSet) get_priority() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRActionSet")
	fnname := StringName.new("get_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRActionSet) get_action_count() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRActionSet")
	fnname := StringName.new("get_action_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRActionSet) set_actions(actions Array) {
	classname := StringName.new("OpenXRActionSet")
	fnname := StringName.new("set_actions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&actions)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRActionSet) get_actions() Array {
	mut result := Array{}
	classname := StringName.new("OpenXRActionSet")
	fnname := StringName.new("get_actions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRActionSet) add_action(action OpenXRAction) {
	classname := StringName.new("OpenXRActionSet")
	fnname := StringName.new("add_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 349361333)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&action.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRActionSet) remove_action(action OpenXRAction) {
	classname := StringName.new("OpenXRActionSet")
	fnname := StringName.new("remove_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 349361333)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&action.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
