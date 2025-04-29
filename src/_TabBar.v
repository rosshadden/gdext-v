module gd

pub enum TabBarAlignmentMode as i64 {
	alignment_left = 0
	alignment_center = 1
	alignment_right = 2
	alignment_max = 3
}

pub enum TabBarCloseButtonDisplayPolicy as i64 {
	close_button_show_never = 0
	close_button_show_active_only = 1
	close_button_show_always = 2
	close_button_max = 3
}

pub struct TabBar {
	Control
}

pub fn (s &TabBar) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TabBar) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TabBar) set_tab_count(count i64) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_current_tab(tab_idx i64) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_current_tab")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_current_tab() i64 {
	mut result := i64(0)
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_current_tab")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) get_previous_tab() i64 {
	mut result := i64(0)
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_previous_tab")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) select_previous_available() bool {
	mut result := false
	classname := StringName.new("TabBar")
	fnname := StringName.new("select_previous_available")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) select_next_available() bool {
	mut result := false
	classname := StringName.new("TabBar")
	fnname := StringName.new("select_next_available")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_tab_title(tab_idx i64, title string) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	arg_sn1 := String.new(title)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_title(tab_idx i64) string {
	mut result := String{}
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TabBar) set_tab_tooltip(tab_idx i64, tooltip string) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	arg_sn1 := String.new(tooltip)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_tooltip(tab_idx i64) string {
	mut result := String{}
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TabBar) set_tab_text_direction(tab_idx i64, direction ControlTextDirection) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1707680378)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	i64_direction := i64(direction)
	args[1] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_text_direction(tab_idx i64) ControlTextDirection {
	mut result := i64(ControlTextDirection.text_direction_inherited)
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_text_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235602388)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlTextDirection(result)}
}

pub fn (s &TabBar) set_tab_language(tab_idx i64, language string) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_language(tab_idx i64) string {
	mut result := String{}
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TabBar) set_tab_icon(tab_idx i64, icon Texture2D) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	args[1] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_icon(tab_idx i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_tab_icon_max_width(tab_idx i64, width i64) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_icon_max_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	args[1] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_icon_max_width(tab_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_icon_max_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_tab_button_icon(tab_idx i64, icon Texture2D) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_button_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	args[1] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_button_icon(tab_idx i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_button_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_tab_disabled(tab_idx i64, disabled bool) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	args[1] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) is_tab_disabled(tab_idx i64) bool {
	mut result := false
	classname := StringName.new("TabBar")
	fnname := StringName.new("is_tab_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_tab_hidden(tab_idx i64, hidden bool) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	args[1] = unsafe{voidptr(&hidden)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) is_tab_hidden(tab_idx i64) bool {
	mut result := false
	classname := StringName.new("TabBar")
	fnname := StringName.new("is_tab_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_tab_metadata(tab_idx i64, metadata Variant) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	args[1] = unsafe{voidptr(&metadata)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_metadata(tab_idx i64) Variant {
	mut result := Variant{}
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) remove_tab(tab_idx i64) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("remove_tab")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TabBar_add_tab_Cfg {
pub:
	title string
	icon Texture2D
}

pub fn (s &TabBar) add_tab(cfg TabBar_add_tab_Cfg) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("add_tab")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1465444425)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(cfg.title)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&cfg.icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_idx_at_point(point Vector2) i64 {
	mut result := i64(0)
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_idx_at_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_tab_alignment(alignment TabBarAlignmentMode) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2413632353)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_alignment() TabBarAlignmentMode {
	mut result := i64(TabBarAlignmentMode.alignment_left)
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2178122193)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TabBarAlignmentMode(result)}
}

pub fn (s &TabBar) set_clip_tabs(clip_tabs bool) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_clip_tabs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&clip_tabs)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_clip_tabs() bool {
	mut result := false
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_clip_tabs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) get_tab_offset() i64 {
	mut result := i64(0)
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) get_offset_buttons_visible() bool {
	mut result := false
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_offset_buttons_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) ensure_tab_visible(idx i64) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("ensure_tab_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_rect(tab_idx i64) Rect2 {
	mut result := Rect2{}
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3327874267)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) move_tab(from i64, to i64) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("move_tab")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from)}
	args[1] = unsafe{voidptr(&to)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) set_close_with_middle_mouse(enabled bool) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_close_with_middle_mouse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_close_with_middle_mouse() bool {
	mut result := false
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_close_with_middle_mouse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_tab_close_display_policy(policy TabBarCloseButtonDisplayPolicy) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tab_close_display_policy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2212906737)
	mut args := unsafe { [1]voidptr{} }
	i64_policy := i64(policy)
	args[0] = unsafe{voidptr(&i64_policy)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tab_close_display_policy() TabBarCloseButtonDisplayPolicy {
	mut result := i64(TabBarCloseButtonDisplayPolicy.close_button_show_never)
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tab_close_display_policy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956568028)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TabBarCloseButtonDisplayPolicy(result)}
}

pub fn (s &TabBar) set_max_tab_width(width i64) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_max_tab_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_max_tab_width() i64 {
	mut result := i64(0)
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_max_tab_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_scrolling_enabled(enabled bool) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_scrolling_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_scrolling_enabled() bool {
	mut result := false
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_scrolling_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_drag_to_rearrange_enabled(enabled bool) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_drag_to_rearrange_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_drag_to_rearrange_enabled() bool {
	mut result := false
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_drag_to_rearrange_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_tabs_rearrange_group(group_id i64) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_tabs_rearrange_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&group_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_tabs_rearrange_group() i64 {
	mut result := i64(0)
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_tabs_rearrange_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_scroll_to_selected(enabled bool) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_scroll_to_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_scroll_to_selected() bool {
	mut result := false
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_scroll_to_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_select_with_rmb(enabled bool) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_select_with_rmb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_select_with_rmb() bool {
	mut result := false
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_select_with_rmb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) set_deselect_enabled(enabled bool) {
	classname := StringName.new("TabBar")
	fnname := StringName.new("set_deselect_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabBar) get_deselect_enabled() bool {
	mut result := false
	classname := StringName.new("TabBar")
	fnname := StringName.new("get_deselect_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabBar) clear_tabs() {
	classname := StringName.new("TabBar")
	fnname := StringName.new("clear_tabs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
