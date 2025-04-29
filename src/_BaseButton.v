module gd

pub enum BaseButtonDrawMode as i64 {
	draw_normal = 0
	draw_pressed = 1
	draw_hover = 2
	draw_disabled = 3
	draw_hover_pressed = 4
}

pub enum BaseButtonActionMode as i64 {
	action_mode_button_press = 0
	action_mode_button_release = 1
}

pub struct BaseButton {
	Control
}

pub fn (s &BaseButton) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s BaseButton) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IBaseButtonPressed {
mut:
	pressed_()
}

pub fn (s &BaseButton) gd_pressed() {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IBaseButtonToggled {
mut:
	toggled_(toggled_on bool)
}

pub fn (s &BaseButton) gd_toggled(toggled_on bool) {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("_toggled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&toggled_on)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BaseButton) set_pressed(pressed bool) {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("set_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BaseButton) is_pressed() bool {
	mut result := false
	classname := StringName.new("BaseButton")
	fnname := StringName.new("is_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BaseButton) set_pressed_no_signal(pressed bool) {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("set_pressed_no_signal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pressed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BaseButton) is_hovered() bool {
	mut result := false
	classname := StringName.new("BaseButton")
	fnname := StringName.new("is_hovered")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BaseButton) set_toggle_mode(enabled bool) {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("set_toggle_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BaseButton) is_toggle_mode() bool {
	mut result := false
	classname := StringName.new("BaseButton")
	fnname := StringName.new("is_toggle_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BaseButton) set_shortcut_in_tooltip(enabled bool) {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("set_shortcut_in_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BaseButton) is_shortcut_in_tooltip_enabled() bool {
	mut result := false
	classname := StringName.new("BaseButton")
	fnname := StringName.new("is_shortcut_in_tooltip_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BaseButton) set_disabled(disabled bool) {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("set_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BaseButton) is_disabled() bool {
	mut result := false
	classname := StringName.new("BaseButton")
	fnname := StringName.new("is_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BaseButton) set_action_mode(mode BaseButtonActionMode) {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("set_action_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1985162088)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BaseButton) get_action_mode() BaseButtonActionMode {
	mut result := i64(BaseButtonActionMode.action_mode_button_press)
	classname := StringName.new("BaseButton")
	fnname := StringName.new("get_action_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2589712189)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{BaseButtonActionMode(result)}
}

pub fn (s &BaseButton) set_button_mask(mask MouseButtonMask) {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("set_button_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3950145251)
	mut args := unsafe { [1]voidptr{} }
	i64_mask := i64(mask)
	args[0] = unsafe{voidptr(&i64_mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BaseButton) get_button_mask() MouseButtonMask {
	mut result := i64(MouseButtonMask.mouse_button_mask_left)
	classname := StringName.new("BaseButton")
	fnname := StringName.new("get_button_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2512161324)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MouseButtonMask(result)}
}

pub fn (s &BaseButton) get_draw_mode() BaseButtonDrawMode {
	mut result := i64(BaseButtonDrawMode.draw_normal)
	classname := StringName.new("BaseButton")
	fnname := StringName.new("get_draw_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2492721305)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{BaseButtonDrawMode(result)}
}

pub fn (s &BaseButton) set_keep_pressed_outside(enabled bool) {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("set_keep_pressed_outside")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BaseButton) is_keep_pressed_outside() bool {
	mut result := false
	classname := StringName.new("BaseButton")
	fnname := StringName.new("is_keep_pressed_outside")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BaseButton) set_shortcut_feedback(enabled bool) {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("set_shortcut_feedback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BaseButton) is_shortcut_feedback() bool {
	mut result := false
	classname := StringName.new("BaseButton")
	fnname := StringName.new("is_shortcut_feedback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BaseButton) set_shortcut(shortcut Shortcut) {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("set_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 857163497)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&shortcut.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BaseButton) get_shortcut() Shortcut {
	mut result := Shortcut{}
	classname := StringName.new("BaseButton")
	fnname := StringName.new("get_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3415666916)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BaseButton) set_button_group(button_group ButtonGroup) {
	classname := StringName.new("BaseButton")
	fnname := StringName.new("set_button_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794463739)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&button_group.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BaseButton) get_button_group() ButtonGroup {
	mut result := ButtonGroup{}
	classname := StringName.new("BaseButton")
	fnname := StringName.new("get_button_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 281644053)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
