module gd

pub enum ControlFocusMode as i64 {
	focus_none = 0
	focus_click = 1
	focus_all = 2
	focus_accessibility = 3
}

pub enum ControlRecursiveBehavior as i64 {
	recursive_behavior_inherited = 0
	recursive_behavior_disabled = 1
	recursive_behavior_enabled = 2
}

pub enum ControlCursorShape as i64 {
	cursor_arrow = 0
	cursor_ibeam = 1
	cursor_pointing_hand = 2
	cursor_cross = 3
	cursor_wait = 4
	cursor_busy = 5
	cursor_drag = 6
	cursor_can_drop = 7
	cursor_forbidden = 8
	cursor_vsize = 9
	cursor_hsize = 10
	cursor_bdiagsize = 11
	cursor_fdiagsize = 12
	cursor_move = 13
	cursor_vsplit = 14
	cursor_hsplit = 15
	cursor_help = 16
}

pub enum ControlLayoutPreset as i64 {
	preset_top_left = 0
	preset_top_right = 1
	preset_bottom_left = 2
	preset_bottom_right = 3
	preset_center_left = 4
	preset_center_top = 5
	preset_center_right = 6
	preset_center_bottom = 7
	preset_center = 8
	preset_left_wide = 9
	preset_top_wide = 10
	preset_right_wide = 11
	preset_bottom_wide = 12
	preset_vcenter_wide = 13
	preset_hcenter_wide = 14
	preset_full_rect = 15
}

pub enum ControlLayoutPresetMode as i64 {
	preset_mode_minsize = 0
	preset_mode_keep_width = 1
	preset_mode_keep_height = 2
	preset_mode_keep_size = 3
}

pub enum ControlSizeFlags as i64 {
	size_shrink_begin = 0
	size_fill = 1
	size_expand = 2
	size_expand_fill = 3
	size_shrink_center = 4
	size_shrink_end = 8
}

pub enum ControlMouseFilter as i64 {
	mouse_filter_stop = 0
	mouse_filter_pass = 1
	mouse_filter_ignore = 2
}

pub enum ControlGrowDirection as i64 {
	grow_direction_begin = 0
	grow_direction_end = 1
	grow_direction_both = 2
}

pub enum ControlAnchor as i64 {
	anchor_begin = 0
	anchor_end = 1
}

pub enum ControlLayoutDirection as i64 {
	layout_direction_inherited = 0
	layout_direction_application_locale = 1
	layout_direction_ltr = 2
	layout_direction_rtl = 3
	layout_direction_system_locale = 4
	layout_direction_max = 5
}

pub enum ControlTextDirection as i64 {
	text_direction_inherited = 3
	text_direction_auto = 0
	text_direction_ltr = 1
	text_direction_rtl = 2
}

pub struct Control {
	CanvasItem
}

pub fn (s &Control) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Control) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IControlHasPoint {
mut:
	has_point_(point Vector2) bool
}

pub fn (s &Control) gd_has_point(point Vector2) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("_has_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 556197845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IControlStructuredTextParser {
mut:
	structured_text_parser_(gd_args Array, text String) Array
}

pub fn (s &Control) gd_structured_text_parser(gd_args Array, text string) Array {
	mut result := Array{}
	classname := StringName.new("Control")
	fnname := StringName.new("_structured_text_parser")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1292548940)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&gd_args)}
	arg_sn1 := String.new(text)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IControlGetMinimumSize {
mut:
	get_minimum_size_() Vector2
}

pub fn (s &Control) gd_get_minimum_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("_get_minimum_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IControlGetTooltip {
mut:
	get_tooltip_(at_position Vector2) String
}

pub fn (s &Control) gd_get_tooltip(at_position Vector2) string {
	mut result := String{}
	classname := StringName.new("Control")
	fnname := StringName.new("_get_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674420000)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&at_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IControlGetDragData {
mut:
	get_drag_data_(at_position Vector2) Variant
}

pub fn (s &Control) gd_get_drag_data(at_position Vector2) Variant {
	mut result := Variant{}
	classname := StringName.new("Control")
	fnname := StringName.new("_get_drag_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2233896889)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&at_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IControlCanDropData {
mut:
	can_drop_data_(at_position Vector2, data Variant) bool
}

pub fn (s &Control) gd_can_drop_data(at_position Vector2, data Variant) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("_can_drop_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2603004011)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&at_position)}
	args[1] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IControlDropData {
mut:
	drop_data_(at_position Vector2, data Variant)
}

pub fn (s &Control) gd_drop_data(at_position Vector2, data Variant) {
	classname := StringName.new("Control")
	fnname := StringName.new("_drop_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3699746064)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&at_position)}
	args[1] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IControlMakeCustomTooltip {
mut:
	make_custom_tooltip_(for_text String) Object
}

pub fn (s &Control) gd_make_custom_tooltip(for_text string) Object {
	mut result := Object{}
	classname := StringName.new("Control")
	fnname := StringName.new("_make_custom_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1976279298)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(for_text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IControlAccessibilityGetContextualInfo {
mut:
	accessibility_get_contextual_info_() String
}

pub fn (s &Control) gd_accessibility_get_contextual_info() string {
	mut result := String{}
	classname := StringName.new("Control")
	fnname := StringName.new("_accessibility_get_contextual_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IControlGuiInput {
mut:
	gui_input_(event InputEvent)
}

pub fn (s &Control) gd_gui_input(event InputEvent) {
	classname := StringName.new("Control")
	fnname := StringName.new("_gui_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3754044979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) accept_event() {
	classname := StringName.new("Control")
	fnname := StringName.new("accept_event")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_minimum_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_minimum_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_combined_minimum_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_combined_minimum_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_set_anchors_preset_Cfg {
pub:
	keep_offsets bool
}

pub fn (s &Control) set_anchors_preset(preset ControlLayoutPreset, cfg Control_set_anchors_preset_Cfg) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_anchors_preset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 509135270)
	mut args := unsafe { [2]voidptr{} }
	i64_preset := i64(preset)
	args[0] = unsafe{voidptr(&i64_preset)}
	args[1] = unsafe{voidptr(&cfg.keep_offsets)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Control_set_offsets_preset_Cfg {
pub:
	resize_mode ControlLayoutPresetMode
	margin i64
}

pub fn (s &Control) set_offsets_preset(preset ControlLayoutPreset, cfg Control_set_offsets_preset_Cfg) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_offsets_preset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3724524307)
	mut args := unsafe { [3]voidptr{} }
	i64_preset := i64(preset)
	args[0] = unsafe{voidptr(&i64_preset)}
	i64_resize_mode := i64(cfg.resize_mode)
	args[1] = unsafe{voidptr(&i64_resize_mode)}
	args[2] = unsafe{voidptr(&cfg.margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Control_set_anchors_and_offsets_preset_Cfg {
pub:
	resize_mode ControlLayoutPresetMode
	margin i64
}

pub fn (s &Control) set_anchors_and_offsets_preset(preset ControlLayoutPreset, cfg Control_set_anchors_and_offsets_preset_Cfg) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_anchors_and_offsets_preset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3724524307)
	mut args := unsafe { [3]voidptr{} }
	i64_preset := i64(preset)
	args[0] = unsafe{voidptr(&i64_preset)}
	i64_resize_mode := i64(cfg.resize_mode)
	args[1] = unsafe{voidptr(&i64_resize_mode)}
	args[2] = unsafe{voidptr(&cfg.margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Control_set_anchor_Cfg {
pub:
	keep_offset bool
	push_opposite_anchor bool
}

pub fn (s &Control) set_anchor(side Side, anchor f64, cfg Control_set_anchor_Cfg) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_anchor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2302782885)
	mut args := unsafe { [4]voidptr{} }
	i64_side := i64(side)
	args[0] = unsafe{voidptr(&i64_side)}
	args[1] = unsafe{voidptr(&anchor)}
	args[2] = unsafe{voidptr(&cfg.keep_offset)}
	args[3] = unsafe{voidptr(&cfg.push_opposite_anchor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_anchor(side Side) f64 {
	mut result := f64(0)
	classname := StringName.new("Control")
	fnname := StringName.new("get_anchor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
	mut args := unsafe { [1]voidptr{} }
	i64_side := i64(side)
	args[0] = unsafe{voidptr(&i64_side)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) set_offset(side Side, offset f64) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
	mut args := unsafe { [2]voidptr{} }
	i64_side := i64(side)
	args[0] = unsafe{voidptr(&i64_side)}
	args[1] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_offset(offset Side) f64 {
	mut result := f64(0)
	classname := StringName.new("Control")
	fnname := StringName.new("get_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
	mut args := unsafe { [1]voidptr{} }
	i64_offset := i64(offset)
	args[0] = unsafe{voidptr(&i64_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_set_anchor_and_offset_Cfg {
pub:
	push_opposite_anchor bool
}

pub fn (s &Control) set_anchor_and_offset(side Side, anchor f64, offset f64, cfg Control_set_anchor_and_offset_Cfg) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_anchor_and_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4031722181)
	mut args := unsafe { [4]voidptr{} }
	i64_side := i64(side)
	args[0] = unsafe{voidptr(&i64_side)}
	args[1] = unsafe{voidptr(&anchor)}
	args[2] = unsafe{voidptr(&offset)}
	args[3] = unsafe{voidptr(&cfg.push_opposite_anchor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) set_begin(position Vector2) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) set_end(position Vector2) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Control_set_position_Cfg {
pub:
	keep_offsets bool
}

pub fn (s &Control) set_position(position Vector2, cfg Control_set_position_Cfg) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2436320129)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&cfg.keep_offsets)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Control_set_size_Cfg {
pub:
	keep_offsets bool
}

pub fn (s &Control) set_size(size Vector2, cfg Control_set_size_Cfg) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2436320129)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	args[1] = unsafe{voidptr(&cfg.keep_offsets)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) reset_size() {
	classname := StringName.new("Control")
	fnname := StringName.new("reset_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) set_custom_minimum_size(size Vector2) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_custom_minimum_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Control_set_global_position_Cfg {
pub:
	keep_offsets bool
}

pub fn (s &Control) set_global_position(position Vector2, cfg Control_set_global_position_Cfg) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_global_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2436320129)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&cfg.keep_offsets)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) set_rotation(radians f64) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&radians)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) set_rotation_degrees(degrees f64) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_rotation_degrees")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&degrees)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) set_scale(scale Vector2) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) set_pivot_offset(pivot_offset Vector2) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_pivot_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pivot_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_begin() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_end() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_position() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_rotation() f64 {
	mut result := f64(0)
	classname := StringName.new("Control")
	fnname := StringName.new("get_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_rotation_degrees() f64 {
	mut result := f64(0)
	classname := StringName.new("Control")
	fnname := StringName.new("get_rotation_degrees")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_scale() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_pivot_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_pivot_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_custom_minimum_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_custom_minimum_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_parent_area_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_parent_area_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_global_position() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_global_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_screen_position() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_screen_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_global_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_global_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) set_focus_mode(mode ControlFocusMode) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_focus_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3232914922)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_focus_mode() ControlFocusMode {
	mut result := i64(ControlFocusMode.focus_none)
	classname := StringName.new("Control")
	fnname := StringName.new("get_focus_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2132829277)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlFocusMode(result)}
}

pub fn (s &Control) get_focus_mode_with_recursive() ControlFocusMode {
	mut result := i64(ControlFocusMode.focus_none)
	classname := StringName.new("Control")
	fnname := StringName.new("get_focus_mode_with_recursive")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2132829277)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlFocusMode(result)}
}

pub fn (s &Control) set_focus_recursive_behavior(focus_recursive_behavior ControlRecursiveBehavior) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_focus_recursive_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1478462572)
	mut args := unsafe { [1]voidptr{} }
	i64_focus_recursive_behavior := i64(focus_recursive_behavior)
	args[0] = unsafe{voidptr(&i64_focus_recursive_behavior)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_focus_recursive_behavior() ControlRecursiveBehavior {
	mut result := i64(ControlRecursiveBehavior.recursive_behavior_inherited)
	classname := StringName.new("Control")
	fnname := StringName.new("get_focus_recursive_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2347495201)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlRecursiveBehavior(result)}
}

pub fn (s &Control) has_focus() bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) grab_focus() {
	classname := StringName.new("Control")
	fnname := StringName.new("grab_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) release_focus() {
	classname := StringName.new("Control")
	fnname := StringName.new("release_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) find_prev_valid_focus() Control {
	mut result := Control{}
	classname := StringName.new("Control")
	fnname := StringName.new("find_prev_valid_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) find_next_valid_focus() Control {
	mut result := Control{}
	classname := StringName.new("Control")
	fnname := StringName.new("find_next_valid_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) find_valid_focus_neighbor(side Side) Control {
	mut result := Control{}
	classname := StringName.new("Control")
	fnname := StringName.new("find_valid_focus_neighbor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1543910170)
	mut args := unsafe { [1]voidptr{} }
	i64_side := i64(side)
	args[0] = unsafe{voidptr(&i64_side)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) set_h_size_flags(flags ControlSizeFlags) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_h_size_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 394851643)
	mut args := unsafe { [1]voidptr{} }
	i64_flags := i64(flags)
	args[0] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_h_size_flags() ControlSizeFlags {
	mut result := i64(ControlSizeFlags.size_shrink_begin)
	classname := StringName.new("Control")
	fnname := StringName.new("get_h_size_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3781367401)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlSizeFlags(result)}
}

pub fn (s &Control) set_stretch_ratio(ratio f64) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_stretch_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_stretch_ratio() f64 {
	mut result := f64(0)
	classname := StringName.new("Control")
	fnname := StringName.new("get_stretch_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) set_v_size_flags(flags ControlSizeFlags) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_v_size_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 394851643)
	mut args := unsafe { [1]voidptr{} }
	i64_flags := i64(flags)
	args[0] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_v_size_flags() ControlSizeFlags {
	mut result := i64(ControlSizeFlags.size_shrink_begin)
	classname := StringName.new("Control")
	fnname := StringName.new("get_v_size_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3781367401)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlSizeFlags(result)}
}

pub fn (s &Control) set_theme(theme Theme) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_theme")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2326690814)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&theme.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_theme() Theme {
	mut result := Theme{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_theme")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3846893731)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) set_theme_type_variation(theme_type string) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_theme_type_variation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(theme_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_theme_type_variation() string {
	mut result := StringName{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_theme_type_variation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Control) begin_bulk_theme_override() {
	classname := StringName.new("Control")
	fnname := StringName.new("begin_bulk_theme_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) end_bulk_theme_override() {
	classname := StringName.new("Control")
	fnname := StringName.new("end_bulk_theme_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) add_theme_icon_override(name string, texture Texture2D) {
	classname := StringName.new("Control")
	fnname := StringName.new("add_theme_icon_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1373065600)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) add_theme_stylebox_override(name string, stylebox StyleBox) {
	classname := StringName.new("Control")
	fnname := StringName.new("add_theme_stylebox_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4188838905)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&stylebox.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) add_theme_font_override(name string, font Font) {
	classname := StringName.new("Control")
	fnname := StringName.new("add_theme_font_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3518018674)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&font.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) add_theme_font_size_override(name string, font_size i64) {
	classname := StringName.new("Control")
	fnname := StringName.new("add_theme_font_size_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&font_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) add_theme_color_override(name string, color Color) {
	classname := StringName.new("Control")
	fnname := StringName.new("add_theme_color_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4260178595)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) add_theme_constant_override(name string, constant i64) {
	classname := StringName.new("Control")
	fnname := StringName.new("add_theme_constant_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&constant)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) remove_theme_icon_override(name string) {
	classname := StringName.new("Control")
	fnname := StringName.new("remove_theme_icon_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) remove_theme_stylebox_override(name string) {
	classname := StringName.new("Control")
	fnname := StringName.new("remove_theme_stylebox_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) remove_theme_font_override(name string) {
	classname := StringName.new("Control")
	fnname := StringName.new("remove_theme_font_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) remove_theme_font_size_override(name string) {
	classname := StringName.new("Control")
	fnname := StringName.new("remove_theme_font_size_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) remove_theme_color_override(name string) {
	classname := StringName.new("Control")
	fnname := StringName.new("remove_theme_color_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) remove_theme_constant_override(name string) {
	classname := StringName.new("Control")
	fnname := StringName.new("remove_theme_constant_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Control_get_theme_icon_Cfg {
pub:
	theme_type string
}

pub fn (s &Control) get_theme_icon(name string, cfg Control_get_theme_icon_Cfg) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_theme_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3163973443)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.theme_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_get_theme_stylebox_Cfg {
pub:
	theme_type string
}

pub fn (s &Control) get_theme_stylebox(name string, cfg Control_get_theme_stylebox_Cfg) StyleBox {
	mut result := StyleBox{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_theme_stylebox")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 604739069)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.theme_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_get_theme_font_Cfg {
pub:
	theme_type string
}

pub fn (s &Control) get_theme_font(name string, cfg Control_get_theme_font_Cfg) Font {
	mut result := Font{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_theme_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2826986490)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.theme_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_get_theme_font_size_Cfg {
pub:
	theme_type string
}

pub fn (s &Control) get_theme_font_size(name string, cfg Control_get_theme_font_size_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("Control")
	fnname := StringName.new("get_theme_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1327056374)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.theme_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_get_theme_color_Cfg {
pub:
	theme_type string
}

pub fn (s &Control) get_theme_color(name string, cfg Control_get_theme_color_Cfg) Color {
	mut result := Color{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_theme_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2798751242)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.theme_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_get_theme_constant_Cfg {
pub:
	theme_type string
}

pub fn (s &Control) get_theme_constant(name string, cfg Control_get_theme_constant_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("Control")
	fnname := StringName.new("get_theme_constant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1327056374)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.theme_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) has_theme_icon_override(name string) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_theme_icon_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) has_theme_stylebox_override(name string) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_theme_stylebox_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) has_theme_font_override(name string) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_theme_font_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) has_theme_font_size_override(name string) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_theme_font_size_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) has_theme_color_override(name string) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_theme_color_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) has_theme_constant_override(name string) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_theme_constant_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_has_theme_icon_Cfg {
pub:
	theme_type string
}

pub fn (s &Control) has_theme_icon(name string, cfg Control_has_theme_icon_Cfg) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_theme_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866386512)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.theme_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_has_theme_stylebox_Cfg {
pub:
	theme_type string
}

pub fn (s &Control) has_theme_stylebox(name string, cfg Control_has_theme_stylebox_Cfg) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_theme_stylebox")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866386512)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.theme_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_has_theme_font_Cfg {
pub:
	theme_type string
}

pub fn (s &Control) has_theme_font(name string, cfg Control_has_theme_font_Cfg) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_theme_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866386512)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.theme_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_has_theme_font_size_Cfg {
pub:
	theme_type string
}

pub fn (s &Control) has_theme_font_size(name string, cfg Control_has_theme_font_size_Cfg) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_theme_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866386512)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.theme_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_has_theme_color_Cfg {
pub:
	theme_type string
}

pub fn (s &Control) has_theme_color(name string, cfg Control_has_theme_color_Cfg) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_theme_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866386512)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.theme_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Control_has_theme_constant_Cfg {
pub:
	theme_type string
}

pub fn (s &Control) has_theme_constant(name string, cfg Control_has_theme_constant_Cfg) bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("has_theme_constant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866386512)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.theme_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_theme_default_base_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("Control")
	fnname := StringName.new("get_theme_default_base_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_theme_default_font() Font {
	mut result := Font{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_theme_default_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_theme_default_font_size() i64 {
	mut result := i64(0)
	classname := StringName.new("Control")
	fnname := StringName.new("get_theme_default_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) get_parent_control() Control {
	mut result := Control{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_parent_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) set_h_grow_direction(direction ControlGrowDirection) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_h_grow_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2022385301)
	mut args := unsafe { [1]voidptr{} }
	i64_direction := i64(direction)
	args[0] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_h_grow_direction() ControlGrowDirection {
	mut result := i64(ControlGrowDirection.grow_direction_begin)
	classname := StringName.new("Control")
	fnname := StringName.new("get_h_grow_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635610155)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlGrowDirection(result)}
}

pub fn (s &Control) set_v_grow_direction(direction ControlGrowDirection) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_v_grow_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2022385301)
	mut args := unsafe { [1]voidptr{} }
	i64_direction := i64(direction)
	args[0] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_v_grow_direction() ControlGrowDirection {
	mut result := i64(ControlGrowDirection.grow_direction_begin)
	classname := StringName.new("Control")
	fnname := StringName.new("get_v_grow_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635610155)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlGrowDirection(result)}
}

pub fn (s &Control) set_tooltip_auto_translate_mode(mode NodeAutoTranslateMode) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_tooltip_auto_translate_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 776149714)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_tooltip_auto_translate_mode() NodeAutoTranslateMode {
	mut result := i64(NodeAutoTranslateMode.auto_translate_mode_inherit)
	classname := StringName.new("Control")
	fnname := StringName.new("get_tooltip_auto_translate_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2498906432)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NodeAutoTranslateMode(result)}
}

pub fn (s &Control) set_tooltip_text(hint string) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_tooltip_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(hint)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_tooltip_text() string {
	mut result := String{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_tooltip_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct Control_get_tooltip_Cfg {
pub:
	at_position Vector2
}

pub fn (s &Control) get_tooltip(cfg Control_get_tooltip_Cfg) string {
	mut result := String{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2895288280)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.at_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Control) set_default_cursor_shape(shape ControlCursorShape) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_default_cursor_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 217062046)
	mut args := unsafe { [1]voidptr{} }
	i64_shape := i64(shape)
	args[0] = unsafe{voidptr(&i64_shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_default_cursor_shape() ControlCursorShape {
	mut result := i64(ControlCursorShape.cursor_arrow)
	classname := StringName.new("Control")
	fnname := StringName.new("get_default_cursor_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2359535750)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlCursorShape(result)}
}

@[params]
pub struct Control_get_cursor_shape_Cfg {
pub:
	position Vector2
}

pub fn (s &Control) get_cursor_shape(cfg Control_get_cursor_shape_Cfg) ControlCursorShape {
	mut result := i64(ControlCursorShape.cursor_arrow)
	classname := StringName.new("Control")
	fnname := StringName.new("get_cursor_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1395773853)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlCursorShape(result)}
}

pub fn (s &Control) set_focus_neighbor(side Side, neighbor NodePath) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_focus_neighbor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2024461774)
	mut args := unsafe { [2]voidptr{} }
	i64_side := i64(side)
	args[0] = unsafe{voidptr(&i64_side)}
	args[1] = unsafe{voidptr(&neighbor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_focus_neighbor(side Side) NodePath {
	mut result := NodePath{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_focus_neighbor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757935761)
	mut args := unsafe { [1]voidptr{} }
	i64_side := i64(side)
	args[0] = unsafe{voidptr(&i64_side)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) set_focus_next(next NodePath) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_focus_next")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&next)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_focus_next() NodePath {
	mut result := NodePath{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_focus_next")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) set_focus_previous(previous NodePath) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_focus_previous")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&previous)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_focus_previous() NodePath {
	mut result := NodePath{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_focus_previous")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) force_drag(data Variant, preview Control) {
	classname := StringName.new("Control")
	fnname := StringName.new("force_drag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3191844692)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	args[1] = voidptr(&preview.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) accessibility_drag() {
	classname := StringName.new("Control")
	fnname := StringName.new("accessibility_drag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) accessibility_drop() {
	classname := StringName.new("Control")
	fnname := StringName.new("accessibility_drop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) set_mouse_filter(filter ControlMouseFilter) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_mouse_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3891156122)
	mut args := unsafe { [1]voidptr{} }
	i64_filter := i64(filter)
	args[0] = unsafe{voidptr(&i64_filter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_mouse_filter() ControlMouseFilter {
	mut result := i64(ControlMouseFilter.mouse_filter_stop)
	classname := StringName.new("Control")
	fnname := StringName.new("get_mouse_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1572545674)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlMouseFilter(result)}
}

pub fn (s &Control) get_mouse_filter_with_recursive() ControlMouseFilter {
	mut result := i64(ControlMouseFilter.mouse_filter_stop)
	classname := StringName.new("Control")
	fnname := StringName.new("get_mouse_filter_with_recursive")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1572545674)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlMouseFilter(result)}
}

pub fn (s &Control) set_mouse_recursive_behavior(mouse_recursive_behavior ControlRecursiveBehavior) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_mouse_recursive_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1478462572)
	mut args := unsafe { [1]voidptr{} }
	i64_mouse_recursive_behavior := i64(mouse_recursive_behavior)
	args[0] = unsafe{voidptr(&i64_mouse_recursive_behavior)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_mouse_recursive_behavior() ControlRecursiveBehavior {
	mut result := i64(ControlRecursiveBehavior.recursive_behavior_inherited)
	classname := StringName.new("Control")
	fnname := StringName.new("get_mouse_recursive_behavior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2347495201)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlRecursiveBehavior(result)}
}

pub fn (s &Control) set_force_pass_scroll_events(force_pass_scroll_events bool) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_force_pass_scroll_events")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&force_pass_scroll_events)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) is_force_pass_scroll_events() bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("is_force_pass_scroll_events")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) set_clip_contents(enable bool) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_clip_contents")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) is_clipping_contents() bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("is_clipping_contents")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) grab_click_focus() {
	classname := StringName.new("Control")
	fnname := StringName.new("grab_click_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) set_drag_forwarding(drag_func Callable, can_drop_func Callable, drop_func Callable) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_drag_forwarding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1076571380)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&drag_func)}
	args[1] = unsafe{voidptr(&can_drop_func)}
	args[2] = unsafe{voidptr(&drop_func)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) set_drag_preview(control Control) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_drag_preview")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) is_drag_successful() bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("is_drag_successful")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) warp_mouse(position Vector2) {
	classname := StringName.new("Control")
	fnname := StringName.new("warp_mouse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) set_shortcut_context(node Node) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_shortcut_context")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_shortcut_context() Node {
	mut result := Node{}
	classname := StringName.new("Control")
	fnname := StringName.new("get_shortcut_context")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) update_minimum_size() {
	classname := StringName.new("Control")
	fnname := StringName.new("update_minimum_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) set_layout_direction(direction ControlLayoutDirection) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_layout_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3310692370)
	mut args := unsafe { [1]voidptr{} }
	i64_direction := i64(direction)
	args[0] = unsafe{voidptr(&i64_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) get_layout_direction() ControlLayoutDirection {
	mut result := i64(ControlLayoutDirection.layout_direction_inherited)
	classname := StringName.new("Control")
	fnname := StringName.new("get_layout_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1546772008)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ControlLayoutDirection(result)}
}

pub fn (s &Control) is_layout_rtl() bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("is_layout_rtl")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) set_auto_translate(enable bool) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_auto_translate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) is_auto_translating() bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("is_auto_translating")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Control) set_localize_numeral_system(enable bool) {
	classname := StringName.new("Control")
	fnname := StringName.new("set_localize_numeral_system")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Control) is_localizing_numeral_system() bool {
	mut result := false
	classname := StringName.new("Control")
	fnname := StringName.new("is_localizing_numeral_system")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
