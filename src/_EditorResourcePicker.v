module gd

pub struct EditorResourcePicker {
	HBoxContainer
}

pub fn (s &EditorResourcePicker) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorResourcePicker) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorResourcePickerSetCreateOptions {
mut:
	set_create_options_(menu_node Object)
}

pub fn (s &EditorResourcePicker) gd_set_create_options(menu_node Object) {
	classname := StringName.new("EditorResourcePicker")
	fnname := StringName.new("_set_create_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&menu_node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorResourcePickerHandleMenuSelected {
mut:
	handle_menu_selected_(id i64) bool
}

pub fn (s &EditorResourcePicker) gd_handle_menu_selected(id i64) bool {
	mut result := false
	classname := StringName.new("EditorResourcePicker")
	fnname := StringName.new("_handle_menu_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorResourcePicker) set_base_type(base_type string) {
	classname := StringName.new("EditorResourcePicker")
	fnname := StringName.new("set_base_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(base_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorResourcePicker) get_base_type() string {
	mut result := String{}
	classname := StringName.new("EditorResourcePicker")
	fnname := StringName.new("get_base_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorResourcePicker) get_allowed_types() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorResourcePicker")
	fnname := StringName.new("get_allowed_types")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorResourcePicker) set_edited_resource(resource Resource) {
	classname := StringName.new("EditorResourcePicker")
	fnname := StringName.new("set_edited_resource")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&resource.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorResourcePicker) get_edited_resource() Resource {
	mut result := Resource{}
	classname := StringName.new("EditorResourcePicker")
	fnname := StringName.new("get_edited_resource")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2674603643)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorResourcePicker) set_toggle_mode(enable bool) {
	classname := StringName.new("EditorResourcePicker")
	fnname := StringName.new("set_toggle_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorResourcePicker) is_toggle_mode() bool {
	mut result := false
	classname := StringName.new("EditorResourcePicker")
	fnname := StringName.new("is_toggle_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorResourcePicker) set_toggle_pressed(pressed bool) {
	classname := StringName.new("EditorResourcePicker")
	fnname := StringName.new("set_toggle_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorResourcePicker) set_editable(enable bool) {
	classname := StringName.new("EditorResourcePicker")
	fnname := StringName.new("set_editable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorResourcePicker) is_editable() bool {
	mut result := false
	classname := StringName.new("EditorResourcePicker")
	fnname := StringName.new("is_editable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
