module gd

pub struct MenuBar {
	Control
}

pub fn (s &MenuBar) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MenuBar) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &MenuBar) set_switch_on_hover(enable bool) {
	classname := StringName.new("MenuBar")
	fnname := StringName.new("set_switch_on_hover")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MenuBar) is_switch_on_hover() bool {
	mut result := false
	classname := StringName.new("MenuBar")
	fnname := StringName.new("is_switch_on_hover")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MenuBar) set_disable_shortcuts(disabled bool) {
	classname := StringName.new("MenuBar")
	fnname := StringName.new("set_disable_shortcuts")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MenuBar) set_prefer_global_menu(enabled bool) {
	classname := StringName.new("MenuBar")
	fnname := StringName.new("set_prefer_global_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MenuBar) is_prefer_global_menu() bool {
	mut result := false
	classname := StringName.new("MenuBar")
	fnname := StringName.new("is_prefer_global_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MenuBar) is_native_menu() bool {
	mut result := false
	classname := StringName.new("MenuBar")
	fnname := StringName.new("is_native_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MenuBar) get_menu_count() i64 {
	mut result := i64(0)
	classname := StringName.new("MenuBar")
	fnname := StringName.new("get_menu_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MenuBar) set_text_direction(direction ControlTextDirection) {
	classname := StringName.new("MenuBar")
	fnname := StringName.new("set_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
	mut args := unsafe { [1]voidptr{} }
	i64_direction := i64(direction)
	args[0] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MenuBar) get_text_direction() ControlTextDirection {
	mut result := i64(ControlTextDirection.text_direction_inherited)
	classname := StringName.new("MenuBar")
	fnname := StringName.new("get_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlTextDirection(result)}
}

pub fn (s &MenuBar) set_language(language string) {
	classname := StringName.new("MenuBar")
	fnname := StringName.new("set_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(language)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MenuBar) get_language() string {
	mut result := String{}
	classname := StringName.new("MenuBar")
	fnname := StringName.new("get_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &MenuBar) set_flat(enabled bool) {
	classname := StringName.new("MenuBar")
	fnname := StringName.new("set_flat")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MenuBar) is_flat() bool {
	mut result := false
	classname := StringName.new("MenuBar")
	fnname := StringName.new("is_flat")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MenuBar) set_start_index(enabled i64) {
	classname := StringName.new("MenuBar")
	fnname := StringName.new("set_start_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MenuBar) get_start_index() i64 {
	mut result := i64(0)
	classname := StringName.new("MenuBar")
	fnname := StringName.new("get_start_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MenuBar) set_menu_title(menu i64, title string) {
	classname := StringName.new("MenuBar")
	fnname := StringName.new("set_menu_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&menu)}
	arg_sn1 := String.new(title)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MenuBar) get_menu_title(menu i64) string {
	mut result := String{}
	classname := StringName.new("MenuBar")
	fnname := StringName.new("get_menu_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&menu)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &MenuBar) set_menu_tooltip(menu i64, tooltip string) {
	classname := StringName.new("MenuBar")
	fnname := StringName.new("set_menu_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&menu)}
	arg_sn1 := String.new(tooltip)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MenuBar) get_menu_tooltip(menu i64) string {
	mut result := String{}
	classname := StringName.new("MenuBar")
	fnname := StringName.new("get_menu_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&menu)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &MenuBar) set_menu_disabled(menu i64, disabled bool) {
	classname := StringName.new("MenuBar")
	fnname := StringName.new("set_menu_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&menu)}
	args[1] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MenuBar) is_menu_disabled(menu i64) bool {
	mut result := false
	classname := StringName.new("MenuBar")
	fnname := StringName.new("is_menu_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&menu)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MenuBar) set_menu_hidden(menu i64, hidden bool) {
	classname := StringName.new("MenuBar")
	fnname := StringName.new("set_menu_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&menu)}
	args[1] = unsafe{voidptr(&hidden)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MenuBar) is_menu_hidden(menu i64) bool {
	mut result := false
	classname := StringName.new("MenuBar")
	fnname := StringName.new("is_menu_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&menu)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MenuBar) get_menu_popup(menu i64) PopupMenu {
	mut result := PopupMenu{}
	classname := StringName.new("MenuBar")
	fnname := StringName.new("get_menu_popup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2100501353)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&menu)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
