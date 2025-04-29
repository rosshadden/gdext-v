module gd

pub enum TabContainerTabPosition as i64 {
	position_top = 0
	position_bottom = 1
	position_max = 2
}

pub struct TabContainer {
	Container
}

pub fn (s &TabContainer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TabContainer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TabContainer) get_tab_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tab_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_current_tab(tab_idx i64) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_current_tab")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_current_tab() i64 {
	mut result := i64(0)
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_current_tab")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) get_previous_tab() i64 {
	mut result := i64(0)
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_previous_tab")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) select_previous_available() bool {
	mut result := false
	classname := StringName.new("TabContainer")
	fnname := StringName.new("select_previous_available")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) select_next_available() bool {
	mut result := false
	classname := StringName.new("TabContainer")
	fnname := StringName.new("select_next_available")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) get_current_tab_control() Control {
	mut result := Control{}
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_current_tab_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) get_tab_bar() TabBar {
	mut result := TabBar{}
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tab_bar")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1865451809)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) get_tab_control(tab_idx i64) Control {
	mut result := Control{}
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tab_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1065994134)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_tab_alignment(alignment TabBarAlignmentMode) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_tab_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2413632353)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_tab_alignment() TabBarAlignmentMode {
	mut result := i64(TabBarAlignmentMode.alignment_left)
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tab_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2178122193)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TabBarAlignmentMode(result)}
}

pub fn (s &TabContainer) set_tabs_position(tabs_position TabContainerTabPosition) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_tabs_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 256673370)
	mut args := unsafe { [1]voidptr{} }
	i64_tabs_position := i64(tabs_position)
	args[0] = unsafe{voidptr(&i64_tabs_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_tabs_position() TabContainerTabPosition {
	mut result := i64(TabContainerTabPosition.position_top)
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tabs_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 919937023)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TabContainerTabPosition(result)}
}

pub fn (s &TabContainer) set_clip_tabs(clip_tabs bool) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_clip_tabs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&clip_tabs)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_clip_tabs() bool {
	mut result := false
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_clip_tabs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_tabs_visible(visible bool) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_tabs_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&visible)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) are_tabs_visible() bool {
	mut result := false
	classname := StringName.new("TabContainer")
	fnname := StringName.new("are_tabs_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_all_tabs_in_front(is_front bool) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_all_tabs_in_front")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&is_front)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) is_all_tabs_in_front() bool {
	mut result := false
	classname := StringName.new("TabContainer")
	fnname := StringName.new("is_all_tabs_in_front")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_tab_title(tab_idx i64, title string) {
	classname := StringName.new("TabContainer")
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

pub fn (s &TabContainer) get_tab_title(tab_idx i64) string {
	mut result := String{}
	classname := StringName.new("TabContainer")
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

pub fn (s &TabContainer) set_tab_tooltip(tab_idx i64, tooltip string) {
	classname := StringName.new("TabContainer")
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

pub fn (s &TabContainer) get_tab_tooltip(tab_idx i64) string {
	mut result := String{}
	classname := StringName.new("TabContainer")
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

pub fn (s &TabContainer) set_tab_icon(tab_idx i64, icon Texture2D) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_tab_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	args[1] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_tab_icon(tab_idx i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tab_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_tab_icon_max_width(tab_idx i64, width i64) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_tab_icon_max_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	args[1] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_tab_icon_max_width(tab_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tab_icon_max_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_tab_disabled(tab_idx i64, disabled bool) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_tab_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	args[1] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) is_tab_disabled(tab_idx i64) bool {
	mut result := false
	classname := StringName.new("TabContainer")
	fnname := StringName.new("is_tab_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_tab_hidden(tab_idx i64, hidden bool) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_tab_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	args[1] = unsafe{voidptr(&hidden)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) is_tab_hidden(tab_idx i64) bool {
	mut result := false
	classname := StringName.new("TabContainer")
	fnname := StringName.new("is_tab_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_tab_metadata(tab_idx i64, metadata Variant) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_tab_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	args[1] = unsafe{voidptr(&metadata)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_tab_metadata(tab_idx i64) Variant {
	mut result := Variant{}
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tab_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_tab_button_icon(tab_idx i64, icon Texture2D) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_tab_button_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	args[1] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_tab_button_icon(tab_idx i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tab_button_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tab_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) get_tab_idx_at_point(point Vector2) i64 {
	mut result := i64(0)
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tab_idx_at_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) get_tab_idx_from_control(control Control) i64 {
	mut result := i64(0)
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tab_idx_from_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787397975)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_popup(popup Node) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_popup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&popup.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_popup() Popup {
	mut result := Popup{}
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_popup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 111095082)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_drag_to_rearrange_enabled(enabled bool) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_drag_to_rearrange_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_drag_to_rearrange_enabled() bool {
	mut result := false
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_drag_to_rearrange_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_tabs_rearrange_group(group_id i64) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_tabs_rearrange_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&group_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_tabs_rearrange_group() i64 {
	mut result := i64(0)
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tabs_rearrange_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_use_hidden_tabs_for_min_size(enabled bool) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_use_hidden_tabs_for_min_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_use_hidden_tabs_for_min_size() bool {
	mut result := false
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_use_hidden_tabs_for_min_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TabContainer) set_tab_focus_mode(focus_mode ControlFocusMode) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_tab_focus_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3232914922)
	mut args := unsafe { [1]voidptr{} }
	i64_focus_mode := i64(focus_mode)
	args[0] = unsafe{voidptr(&i64_focus_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_tab_focus_mode() ControlFocusMode {
	mut result := i64(ControlFocusMode.focus_none)
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_tab_focus_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2132829277)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlFocusMode(result)}
}

pub fn (s &TabContainer) set_deselect_enabled(enabled bool) {
	classname := StringName.new("TabContainer")
	fnname := StringName.new("set_deselect_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TabContainer) get_deselect_enabled() bool {
	mut result := false
	classname := StringName.new("TabContainer")
	fnname := StringName.new("get_deselect_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
