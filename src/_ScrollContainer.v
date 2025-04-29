module gd

pub enum ScrollContainerScrollMode as i64 {
	scroll_mode_disabled = 0
	scroll_mode_auto = 1
	scroll_mode_show_always = 2
	scroll_mode_show_never = 3
	scroll_mode_reserve = 4
}

pub struct ScrollContainer {
	Container
}

pub fn (s &ScrollContainer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ScrollContainer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ScrollContainer) set_h_scroll(value i64) {
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("set_h_scroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScrollContainer) get_h_scroll() i64 {
	mut result := i64(0)
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("get_h_scroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScrollContainer) set_v_scroll(value i64) {
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("set_v_scroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScrollContainer) get_v_scroll() i64 {
	mut result := i64(0)
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("get_v_scroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScrollContainer) set_horizontal_custom_step(value f64) {
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("set_horizontal_custom_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScrollContainer) get_horizontal_custom_step() f64 {
	mut result := f64(0)
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("get_horizontal_custom_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScrollContainer) set_vertical_custom_step(value f64) {
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("set_vertical_custom_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScrollContainer) get_vertical_custom_step() f64 {
	mut result := f64(0)
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("get_vertical_custom_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScrollContainer) set_horizontal_scroll_mode(enable ScrollContainerScrollMode) {
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("set_horizontal_scroll_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2750506364)
	mut args := unsafe { [1]voidptr{} }
	i64_enable := i64(enable)
	args[0] = unsafe{voidptr(&i64_enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScrollContainer) get_horizontal_scroll_mode() ScrollContainerScrollMode {
	mut result := i64(ScrollContainerScrollMode.scroll_mode_disabled)
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("get_horizontal_scroll_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3987985145)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ScrollContainerScrollMode(result)}
}

pub fn (s &ScrollContainer) set_vertical_scroll_mode(enable ScrollContainerScrollMode) {
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("set_vertical_scroll_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2750506364)
	mut args := unsafe { [1]voidptr{} }
	i64_enable := i64(enable)
	args[0] = unsafe{voidptr(&i64_enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScrollContainer) get_vertical_scroll_mode() ScrollContainerScrollMode {
	mut result := i64(ScrollContainerScrollMode.scroll_mode_disabled)
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("get_vertical_scroll_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3987985145)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ScrollContainerScrollMode(result)}
}

pub fn (s &ScrollContainer) set_deadzone(deadzone i64) {
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("set_deadzone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&deadzone)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScrollContainer) get_deadzone() i64 {
	mut result := i64(0)
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("get_deadzone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScrollContainer) set_follow_focus(enabled bool) {
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("set_follow_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScrollContainer) is_following_focus() bool {
	mut result := false
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("is_following_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScrollContainer) get_h_scroll_bar() HScrollBar {
	mut result := HScrollBar{}
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("get_h_scroll_bar")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4004517983)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScrollContainer) get_v_scroll_bar() VScrollBar {
	mut result := VScrollBar{}
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("get_v_scroll_bar")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2630340773)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ScrollContainer) ensure_control_visible(control Control) {
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("ensure_control_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScrollContainer) set_draw_focus_border(draw bool) {
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("set_draw_focus_border")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&draw)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ScrollContainer) get_draw_focus_border() bool {
	mut result := false
	classname := StringName.new("ScrollContainer")
	fnname := StringName.new("get_draw_focus_border")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
