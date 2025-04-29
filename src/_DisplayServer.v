module gd

pub enum DisplayServerFeature as i64 {
	feature_global_menu = 0
	feature_subwindows = 1
	feature_touchscreen = 2
	feature_mouse = 3
	feature_mouse_warp = 4
	feature_clipboard = 5
	feature_virtual_keyboard = 6
	feature_cursor_shape = 7
	feature_custom_cursor_shape = 8
	feature_native_dialog = 9
	feature_ime = 10
	feature_window_transparency = 11
	feature_hidpi = 12
	feature_icon = 13
	feature_native_icon = 14
	feature_orientation = 15
	feature_swap_buffers = 16
	feature_clipboard_primary = 18
	feature_text_to_speech = 19
	feature_extend_to_title = 20
	feature_screen_capture = 21
	feature_status_indicator = 22
	feature_native_help = 23
	feature_native_dialog_input = 24
	feature_native_dialog_file = 25
	feature_native_dialog_file_extra = 26
	feature_window_drag = 27
	feature_screen_exclude_from_capture = 28
	feature_window_embedding = 29
	feature_native_dialog_file_mime = 30
	feature_emoji_and_symbol_picker = 31
	feature_native_color_picker = 32
	feature_self_fitting_windows = 33
	feature_accessibility_screen_reader = 34
}

pub enum DisplayServerAccessibilityRole as i64 {
	role_unknown = 0
	role_default_button = 1
	role_audio = 2
	role_video = 3
	role_static_text = 4
	role_container = 5
	role_panel = 6
	role_button = 7
	role_link = 8
	role_check_box = 9
	role_radio_button = 10
	role_check_button = 11
	role_scroll_bar = 12
	role_scroll_view = 13
	role_splitter = 14
	role_slider = 15
	role_spin_button = 16
	role_progress_indicator = 17
	role_text_field = 18
	role_multiline_text_field = 19
	role_color_picker = 20
	role_table = 21
	role_cell = 22
	role_row = 23
	role_row_group = 24
	role_row_header = 25
	role_column_header = 26
	role_tree = 27
	role_tree_item = 28
	role_list = 29
	role_list_item = 30
	role_list_box = 31
	role_list_box_option = 32
	role_tab_bar = 33
	role_tab = 34
	role_tab_panel = 35
	role_menu_bar = 36
	role_menu = 37
	role_menu_item = 38
	role_menu_item_check_box = 39
	role_menu_item_radio = 40
	role_image = 41
	role_window = 42
	role_title_bar = 43
	role_dialog = 44
	role_tooltip = 45
}

pub enum DisplayServerAccessibilityPopupType as i64 {
	popup_unknown = 0
	popup_menu = 1
	popup_list = 2
	popup_tree = 3
	popup_dialog = 4
}

pub enum DisplayServerAccessibilityFlags as i64 {
	flag_hidden = 0
	flag_linked = 1
	flag_multiselectable = 2
	flag_required = 3
	flag_visited = 4
	flag_busy = 5
	flag_modal = 6
	flag_touch_passthrough = 7
	flag_readonly = 8
	flag_disabled = 9
	flag_clips_children = 10
}

pub enum DisplayServerAccessibilityAction as i64 {
	action_click = 0
	action_focus = 1
	action_blur = 2
	action_collapse = 3
	action_expand = 4
	action_decrement = 5
	action_increment = 6
	action_hide_tooltip = 7
	action_show_tooltip = 8
	action_set_text_selection = 9
	action_replace_selected_text = 10
	action_scroll_backward = 11
	action_scroll_down = 12
	action_scroll_forward = 13
	action_scroll_left = 14
	action_scroll_right = 15
	action_scroll_up = 16
	action_scroll_into_view = 17
	action_scroll_to_point = 18
	action_set_scroll_offset = 19
	action_set_value = 20
	action_show_context_menu = 21
	action_custom = 22
}

pub enum DisplayServerAccessibilityLiveMode as i64 {
	live_off = 0
	live_polite = 1
	live_assertive = 2
}

pub enum DisplayServerMouseMode as i64 {
	mouse_mode_visible = 0
	mouse_mode_hidden = 1
	mouse_mode_captured = 2
	mouse_mode_confined = 3
	mouse_mode_confined_hidden = 4
	mouse_mode_max = 5
}

pub enum DisplayServerScreenOrientation as i64 {
	screen_landscape = 0
	screen_portrait = 1
	screen_reverse_landscape = 2
	screen_reverse_portrait = 3
	screen_sensor_landscape = 4
	screen_sensor_portrait = 5
	screen_sensor = 6
}

pub enum DisplayServerVirtualKeyboardType as i64 {
	keyboard_type_default = 0
	keyboard_type_multiline = 1
	keyboard_type_number = 2
	keyboard_type_number_decimal = 3
	keyboard_type_phone = 4
	keyboard_type_email_address = 5
	keyboard_type_password = 6
	keyboard_type_url = 7
}

pub enum DisplayServerCursorShape as i64 {
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
	cursor_max = 17
}

pub enum DisplayServerFileDialogMode as i64 {
	file_dialog_mode_open_file = 0
	file_dialog_mode_open_files = 1
	file_dialog_mode_open_dir = 2
	file_dialog_mode_open_any = 3
	file_dialog_mode_save_file = 4
}

pub enum DisplayServerWindowMode as i64 {
	window_mode_windowed = 0
	window_mode_minimized = 1
	window_mode_maximized = 2
	window_mode_fullscreen = 3
	window_mode_exclusive_fullscreen = 4
}

pub enum DisplayServerWindowFlags as i64 {
	window_flag_resize_disabled = 0
	window_flag_borderless = 1
	window_flag_always_on_top = 2
	window_flag_transparent = 3
	window_flag_no_focus = 4
	window_flag_popup = 5
	window_flag_extend_to_title = 6
	window_flag_mouse_passthrough = 7
	window_flag_sharp_corners = 8
	window_flag_exclude_from_capture = 9
	window_flag_popup_wm_hint = 10
	window_flag_minimize_disabled = 11
	window_flag_maximize_disabled = 12
	window_flag_max = 13
}

pub enum DisplayServerWindowEvent as i64 {
	window_event_mouse_enter = 0
	window_event_mouse_exit = 1
	window_event_focus_in = 2
	window_event_focus_out = 3
	window_event_close_request = 4
	window_event_go_back_request = 5
	window_event_dpi_change = 6
	window_event_titlebar_change = 7
	window_event_force_close = 8
}

pub enum DisplayServerWindowResizeEdge as i64 {
	window_edge_top_left = 0
	window_edge_top = 1
	window_edge_top_right = 2
	window_edge_left = 3
	window_edge_right = 4
	window_edge_bottom_left = 5
	window_edge_bottom = 6
	window_edge_bottom_right = 7
	window_edge_max = 8
}

pub enum DisplayServerVSyncMode as i64 {
	vsync_disabled = 0
	vsync_enabled = 1
	vsync_adaptive = 2
	vsync_mailbox = 3
}

pub enum DisplayServerHandleType as i64 {
	display_handle = 0
	window_handle = 1
	window_view = 2
	opengl_context = 3
	egl_display = 4
	egl_config = 5
}

pub enum DisplayServerTTSUtteranceEvent as i64 {
	tts_utterance_started = 0
	tts_utterance_ended = 1
	tts_utterance_canceled = 2
	tts_utterance_boundary = 3
}

pub struct DisplayServer {
	Object
}

pub fn DisplayServer.get_singleton() DisplayServer {
	sn := StringName.new("DisplayServer")
	result := DisplayServer{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &DisplayServer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s DisplayServer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &DisplayServer) has_feature(feature DisplayServerFeature) bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("has_feature")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 334065950)
	mut args := unsafe { [1]voidptr{} }
	i64_feature := i64(feature)
	args[0] = unsafe{voidptr(&i64_feature)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) get_name() string {
	mut result := String{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DisplayServer) help_set_search_callbacks(search_callback Callable, action_callback Callable) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("help_set_search_callbacks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1687350599)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&search_callback)}
	args[1] = unsafe{voidptr(&action_callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_popup_callbacks(menu_root string, open_callback Callable, close_callback Callable) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_popup_callbacks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3893727526)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&open_callback)}
	args[2] = unsafe{voidptr(&close_callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_global_menu_add_submenu_item_Cfg {
pub:
	index i64
}

pub fn (s &DisplayServer) global_menu_add_submenu_item(menu_root string, label string, submenu string, cfg DisplayServer_global_menu_add_submenu_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_add_submenu_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2828985934)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := String.new(submenu)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_global_menu_add_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &DisplayServer) global_menu_add_item(menu_root string, label string, cfg DisplayServer_global_menu_add_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_add_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616842746)
	mut args := unsafe { [7]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.callback)}
	args[3] = unsafe{voidptr(&cfg.key_callback)}
	args[4] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[5] = unsafe{voidptr(&i64_accelerator)}
	args[6] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_global_menu_add_check_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &DisplayServer) global_menu_add_check_item(menu_root string, label string, cfg DisplayServer_global_menu_add_check_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_add_check_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616842746)
	mut args := unsafe { [7]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.callback)}
	args[3] = unsafe{voidptr(&cfg.key_callback)}
	args[4] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[5] = unsafe{voidptr(&i64_accelerator)}
	args[6] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_global_menu_add_icon_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &DisplayServer) global_menu_add_icon_item(menu_root string, icon Texture2D, label string, cfg DisplayServer_global_menu_add_icon_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_add_icon_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3867083847)
	mut args := unsafe { [8]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&icon.ptr)
	arg_sn2 := String.new(label)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.callback)}
	args[4] = unsafe{voidptr(&cfg.key_callback)}
	args[5] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[6] = unsafe{voidptr(&i64_accelerator)}
	args[7] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_global_menu_add_icon_check_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &DisplayServer) global_menu_add_icon_check_item(menu_root string, icon Texture2D, label string, cfg DisplayServer_global_menu_add_icon_check_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_add_icon_check_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3867083847)
	mut args := unsafe { [8]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&icon.ptr)
	arg_sn2 := String.new(label)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.callback)}
	args[4] = unsafe{voidptr(&cfg.key_callback)}
	args[5] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[6] = unsafe{voidptr(&i64_accelerator)}
	args[7] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_global_menu_add_radio_check_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &DisplayServer) global_menu_add_radio_check_item(menu_root string, label string, cfg DisplayServer_global_menu_add_radio_check_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_add_radio_check_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616842746)
	mut args := unsafe { [7]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.callback)}
	args[3] = unsafe{voidptr(&cfg.key_callback)}
	args[4] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[5] = unsafe{voidptr(&i64_accelerator)}
	args[6] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_global_menu_add_icon_radio_check_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &DisplayServer) global_menu_add_icon_radio_check_item(menu_root string, icon Texture2D, label string, cfg DisplayServer_global_menu_add_icon_radio_check_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_add_icon_radio_check_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3867083847)
	mut args := unsafe { [8]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&icon.ptr)
	arg_sn2 := String.new(label)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.callback)}
	args[4] = unsafe{voidptr(&cfg.key_callback)}
	args[5] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[6] = unsafe{voidptr(&i64_accelerator)}
	args[7] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_global_menu_add_multistate_item_Cfg {
pub:
	callback Callable
	key_callback Callable
	tag Variant
	accelerator Key
	index i64
}

pub fn (s &DisplayServer) global_menu_add_multistate_item(menu_root string, label string, max_states i64, default_state i64, cfg DisplayServer_global_menu_add_multistate_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_add_multistate_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3297554655)
	mut args := unsafe { [9]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(label)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&max_states)}
	args[3] = unsafe{voidptr(&default_state)}
	args[4] = unsafe{voidptr(&cfg.callback)}
	args[5] = unsafe{voidptr(&cfg.key_callback)}
	args[6] = unsafe{voidptr(&cfg.tag)}
	i64_accelerator := i64(cfg.accelerator)
	args[7] = unsafe{voidptr(&i64_accelerator)}
	args[8] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_global_menu_add_separator_Cfg {
pub:
	index i64
}

pub fn (s &DisplayServer) global_menu_add_separator(menu_root string, cfg DisplayServer_global_menu_add_separator_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_add_separator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3214812433)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_get_item_index_from_text(menu_root string, text string) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_index_from_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878152881)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(text)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_get_item_index_from_tag(menu_root string, tag Variant) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_index_from_tag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2941063483)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&tag)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_is_item_checked(menu_root string, idx i64) bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_is_item_checked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_is_item_checkable(menu_root string, idx i64) bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_is_item_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_is_item_radio_checkable(menu_root string, idx i64) bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_is_item_radio_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_get_item_callback(menu_root string, idx i64) Callable {
	mut result := Callable{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 748666903)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_get_item_key_callback(menu_root string, idx i64) Callable {
	mut result := Callable{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_key_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 748666903)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_get_item_tag(menu_root string, idx i64) Variant {
	mut result := Variant{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_tag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 330672633)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_get_item_text(menu_root string, idx i64) string {
	mut result := String{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 591067909)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DisplayServer) global_menu_get_item_submenu(menu_root string, idx i64) string {
	mut result := String{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_submenu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 591067909)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DisplayServer) global_menu_get_item_accelerator(menu_root string, idx i64) Key {
	mut result := i64(Key.key_none)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_accelerator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 936065394)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{Key(result)}
}

pub fn (s &DisplayServer) global_menu_is_item_disabled(menu_root string, idx i64) bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_is_item_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_is_item_hidden(menu_root string, idx i64) bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_is_item_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_get_item_tooltip(menu_root string, idx i64) string {
	mut result := String{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 591067909)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DisplayServer) global_menu_get_item_state(menu_root string, idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3422818498)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_get_item_max_states(menu_root string, idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_max_states")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3422818498)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_get_item_icon(menu_root string, idx i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3591713183)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_get_item_indentation_level(menu_root string, idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_indentation_level")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3422818498)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_set_item_checked(menu_root string, idx i64, checked bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_checked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&checked)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_checkable(menu_root string, idx i64, checkable bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&checkable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_radio_checkable(menu_root string, idx i64, checkable bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_radio_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&checkable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_callback(menu_root string, idx i64, callback Callable) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3809915389)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_hover_callbacks(menu_root string, idx i64, callback Callable) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_hover_callbacks")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3809915389)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_key_callback(menu_root string, idx i64, key_callback Callable) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_key_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3809915389)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&key_callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_tag(menu_root string, idx i64, tag Variant) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_tag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 453659863)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&tag)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_text(menu_root string, idx i64, text string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 965966136)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	arg_sn2 := String.new(text)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_submenu(menu_root string, idx i64, submenu string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_submenu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 965966136)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	arg_sn2 := String.new(submenu)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_accelerator(menu_root string, idx i64, keycode Key) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_accelerator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 566943293)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	i64_keycode := i64(keycode)
	args[2] = unsafe{voidptr(&i64_keycode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_disabled(menu_root string, idx i64, disabled bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_hidden(menu_root string, idx i64, hidden bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_hidden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&hidden)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_tooltip(menu_root string, idx i64, tooltip string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 965966136)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	arg_sn2 := String.new(tooltip)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_state(menu_root string, idx i64, state i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3474840532)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&state)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_max_states(menu_root string, idx i64, max_states i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_max_states")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3474840532)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&max_states)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_icon(menu_root string, idx i64, icon Texture2D) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201338066)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_set_item_indentation_level(menu_root string, idx i64, level i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_set_item_indentation_level")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3474840532)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	args[2] = unsafe{voidptr(&level)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_get_item_count(menu_root string) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_item_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) global_menu_remove_item(menu_root string, idx i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_remove_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_clear(menu_root string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(menu_root)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) global_menu_get_system_menu_roots() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("global_menu_get_system_menu_roots")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) tts_is_speaking() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tts_is_speaking")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) tts_is_paused() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tts_is_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) tts_get_voices() Array {
	mut result := Array{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tts_get_voices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) tts_get_voices_for_language(language string) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tts_get_voices_for_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(language)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_tts_speak_Cfg {
pub:
	volume i64
	pitch f64
	rate f64
	utterance_id i64
	interrupt bool
}

pub fn (s &DisplayServer) tts_speak(text string, voice string, cfg DisplayServer_tts_speak_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tts_speak")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 903992738)
	mut args := unsafe { [7]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(voice)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.volume)}
	args[3] = unsafe{voidptr(&cfg.pitch)}
	args[4] = unsafe{voidptr(&cfg.rate)}
	args[5] = unsafe{voidptr(&cfg.utterance_id)}
	args[6] = unsafe{voidptr(&cfg.interrupt)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) tts_pause() {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tts_pause")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) tts_resume() {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tts_resume")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) tts_stop() {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tts_stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) tts_set_utterance_callback(event DisplayServerTTSUtteranceEvent, callable Callable) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tts_set_utterance_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 109679083)
	mut args := unsafe { [2]voidptr{} }
	i64_event := i64(event)
	args[0] = unsafe{voidptr(&i64_event)}
	args[1] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) is_dark_mode_supported() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("is_dark_mode_supported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) is_dark_mode() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("is_dark_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) get_accent_color() Color {
	mut result := Color{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("get_accent_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) get_base_color() Color {
	mut result := Color{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("get_base_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) set_system_theme_change_callback(callable Callable) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("set_system_theme_change_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) mouse_set_mode(mouse_mode DisplayServerMouseMode) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("mouse_set_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 348288463)
	mut args := unsafe { [1]voidptr{} }
	i64_mouse_mode := i64(mouse_mode)
	args[0] = unsafe{voidptr(&i64_mouse_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) mouse_get_mode() DisplayServerMouseMode {
	mut result := i64(DisplayServerMouseMode.mouse_mode_visible)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("mouse_get_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1353961651)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{DisplayServerMouseMode(result)}
}

pub fn (s &DisplayServer) warp_mouse(position Vector2i) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("warp_mouse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) mouse_get_position() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("mouse_get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) mouse_get_button_state() MouseButtonMask {
	mut result := i64(MouseButtonMask.mouse_button_mask_left)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("mouse_get_button_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2512161324)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MouseButtonMask(result)}
}

pub fn (s &DisplayServer) clipboard_set(clipboard string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("clipboard_set")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(clipboard)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) clipboard_get() string {
	mut result := String{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("clipboard_get")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DisplayServer) clipboard_get_image() Image {
	mut result := Image{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("clipboard_get_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4190603485)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) clipboard_has() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("clipboard_has")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) clipboard_has_image() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("clipboard_has_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) clipboard_set_primary(clipboard_primary string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("clipboard_set_primary")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(clipboard_primary)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) clipboard_get_primary() string {
	mut result := String{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("clipboard_get_primary")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DisplayServer) get_display_cutouts() Array {
	mut result := Array{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("get_display_cutouts")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) get_display_safe_area() Rect2i {
	mut result := Rect2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("get_display_safe_area")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 410525958)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) get_screen_count() i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("get_screen_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) get_primary_screen() i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("get_primary_screen")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) get_keyboard_focus_screen() i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("get_keyboard_focus_screen")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) get_screen_from_rect(rect Rect2) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("get_screen_from_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 741354659)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_screen_get_position_Cfg {
pub:
	screen i64
}

pub fn (s &DisplayServer) screen_get_position(cfg DisplayServer_screen_get_position_Cfg) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1725937825)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.screen)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_screen_get_size_Cfg {
pub:
	screen i64
}

pub fn (s &DisplayServer) screen_get_size(cfg DisplayServer_screen_get_size_Cfg) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1725937825)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.screen)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_screen_get_usable_rect_Cfg {
pub:
	screen i64
}

pub fn (s &DisplayServer) screen_get_usable_rect(cfg DisplayServer_screen_get_usable_rect_Cfg) Rect2i {
	mut result := Rect2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_get_usable_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2439012528)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.screen)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_screen_get_dpi_Cfg {
pub:
	screen i64
}

pub fn (s &DisplayServer) screen_get_dpi(cfg DisplayServer_screen_get_dpi_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_get_dpi")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 181039630)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.screen)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_screen_get_scale_Cfg {
pub:
	screen i64
}

pub fn (s &DisplayServer) screen_get_scale(cfg DisplayServer_screen_get_scale_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_get_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 909105437)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.screen)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) is_touchscreen_available() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("is_touchscreen_available")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) screen_get_max_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_get_max_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_screen_get_refresh_rate_Cfg {
pub:
	screen i64
}

pub fn (s &DisplayServer) screen_get_refresh_rate(cfg DisplayServer_screen_get_refresh_rate_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_get_refresh_rate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 909105437)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.screen)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) screen_get_pixel(position Vector2i) Color {
	mut result := Color{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_get_pixel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1532707496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_screen_get_image_Cfg {
pub:
	screen i64
}

pub fn (s &DisplayServer) screen_get_image(cfg DisplayServer_screen_get_image_Cfg) Image {
	mut result := Image{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_get_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3813388802)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.screen)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) screen_get_image_rect(rect Rect2i) Image {
	mut result := Image{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_get_image_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2601441065)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_screen_set_orientation_Cfg {
pub:
	screen i64
}

pub fn (s &DisplayServer) screen_set_orientation(orientation DisplayServerScreenOrientation, cfg DisplayServer_screen_set_orientation_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_set_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2211511631)
	mut args := unsafe { [2]voidptr{} }
	i64_orientation := i64(orientation)
	args[0] = unsafe{voidptr(&i64_orientation)}
	args[1] = unsafe{voidptr(&cfg.screen)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_screen_get_orientation_Cfg {
pub:
	screen i64
}

pub fn (s &DisplayServer) screen_get_orientation(cfg DisplayServer_screen_get_orientation_Cfg) DisplayServerScreenOrientation {
	mut result := i64(DisplayServerScreenOrientation.screen_landscape)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_get_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 133818562)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.screen)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{DisplayServerScreenOrientation(result)}
}

pub fn (s &DisplayServer) screen_set_keep_on(enable bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_set_keep_on")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) screen_is_kept_on() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("screen_is_kept_on")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) get_window_list() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("get_window_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) get_window_at_screen_position(position Vector2i) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("get_window_at_screen_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_get_native_handle_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_native_handle(handle_type DisplayServerHandleType, cfg DisplayServer_window_get_native_handle_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_native_handle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1096425680)
	mut args := unsafe { [2]voidptr{} }
	i64_handle_type := i64(handle_type)
	args[0] = unsafe{voidptr(&i64_handle_type)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) window_get_active_popup() i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_active_popup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) window_set_popup_safe_rect(window i64, rect Rect2i) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_popup_safe_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3317281434)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&window)}
	args[1] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) window_get_popup_safe_rect(window i64) Rect2i {
	mut result := Rect2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_popup_safe_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2161169500)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&window)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_set_title_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_title(title string, cfg DisplayServer_window_set_title_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 441246282)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(title)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_get_title_size_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_title_size(title string, cfg DisplayServer_window_get_title_size_Cfg) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_title_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2925301799)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(title)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_set_mouse_passthrough_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_mouse_passthrough(region PackedVector2Array, cfg DisplayServer_window_set_mouse_passthrough_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_mouse_passthrough")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1993637420)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_get_current_screen_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_current_screen(cfg DisplayServer_window_get_current_screen_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_current_screen")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_set_current_screen_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_current_screen(screen i64, cfg DisplayServer_window_set_current_screen_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_current_screen")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230941749)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&screen)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_get_position_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_position(cfg DisplayServer_window_get_position_Cfg) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_get_position_with_decorations_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_position_with_decorations(cfg DisplayServer_window_get_position_with_decorations_Cfg) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_position_with_decorations")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_set_position_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_position(position Vector2i, cfg DisplayServer_window_set_position_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2019273902)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_get_size_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_size(cfg DisplayServer_window_get_size_Cfg) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_set_size_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_size(size Vector2i, cfg DisplayServer_window_set_size_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2019273902)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_set_rect_changed_callback_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_rect_changed_callback(callback Callable, cfg DisplayServer_window_set_rect_changed_callback_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_rect_changed_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1091192925)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&callback)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_set_window_event_callback_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_window_event_callback(callback Callable, cfg DisplayServer_window_set_window_event_callback_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_window_event_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1091192925)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&callback)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_set_input_event_callback_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_input_event_callback(callback Callable, cfg DisplayServer_window_set_input_event_callback_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_input_event_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1091192925)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&callback)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_set_input_text_callback_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_input_text_callback(callback Callable, cfg DisplayServer_window_set_input_text_callback_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_input_text_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1091192925)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&callback)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_set_drop_files_callback_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_drop_files_callback(callback Callable, cfg DisplayServer_window_set_drop_files_callback_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_drop_files_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1091192925)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&callback)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_get_attached_instance_id_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_attached_instance_id(cfg DisplayServer_window_get_attached_instance_id_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_attached_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_get_max_size_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_max_size(cfg DisplayServer_window_get_max_size_Cfg) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_max_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_set_max_size_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_max_size(max_size Vector2i, cfg DisplayServer_window_set_max_size_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_max_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2019273902)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&max_size)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_get_min_size_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_min_size(cfg DisplayServer_window_get_min_size_Cfg) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_min_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_set_min_size_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_min_size(min_size Vector2i, cfg DisplayServer_window_set_min_size_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_min_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2019273902)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&min_size)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_get_size_with_decorations_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_size_with_decorations(cfg DisplayServer_window_get_size_with_decorations_Cfg) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_size_with_decorations")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_get_mode_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_mode(cfg DisplayServer_window_get_mode_Cfg) DisplayServerWindowMode {
	mut result := i64(DisplayServerWindowMode.window_mode_windowed)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2185728461)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{DisplayServerWindowMode(result)}
}

@[params]
pub struct DisplayServer_window_set_mode_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_mode(mode DisplayServerWindowMode, cfg DisplayServer_window_set_mode_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1319965401)
	mut args := unsafe { [2]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_set_flag_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_flag(flag DisplayServerWindowFlags, enabled bool, cfg DisplayServer_window_set_flag_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_flag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 254894155)
	mut args := unsafe { [3]voidptr{} }
	i64_flag := i64(flag)
	args[0] = unsafe{voidptr(&i64_flag)}
	args[1] = unsafe{voidptr(&enabled)}
	args[2] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_get_flag_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_flag(flag DisplayServerWindowFlags, cfg DisplayServer_window_get_flag_Cfg) bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_flag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 802816991)
	mut args := unsafe { [2]voidptr{} }
	i64_flag := i64(flag)
	args[0] = unsafe{voidptr(&i64_flag)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_set_window_buttons_offset_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_window_buttons_offset(offset Vector2i, cfg DisplayServer_window_set_window_buttons_offset_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_window_buttons_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2019273902)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_get_safe_title_margins_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_safe_title_margins(cfg DisplayServer_window_get_safe_title_margins_Cfg) Vector3i {
	mut result := Vector3i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_safe_title_margins")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2295066620)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_request_attention_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_request_attention(cfg DisplayServer_window_request_attention_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_request_attention")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_move_to_foreground_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_move_to_foreground(cfg DisplayServer_window_move_to_foreground_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_move_to_foreground")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_is_focused_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_is_focused(cfg DisplayServer_window_is_focused_Cfg) bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_is_focused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1051549951)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_can_draw_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_can_draw(cfg DisplayServer_window_can_draw_Cfg) bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_can_draw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1051549951)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) window_set_transient(window_id i64, parent_window_id i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_transient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&window_id)}
	args[1] = unsafe{voidptr(&parent_window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) window_set_exclusive(window_id i64, exclusive bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_exclusive")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&window_id)}
	args[1] = unsafe{voidptr(&exclusive)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_set_ime_active_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_ime_active(active bool, cfg DisplayServer_window_set_ime_active_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_ime_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1661950165)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&active)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_set_ime_position_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_ime_position(position Vector2i, cfg DisplayServer_window_set_ime_position_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_ime_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2019273902)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_set_vsync_mode_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_set_vsync_mode(vsync_mode DisplayServerVSyncMode, cfg DisplayServer_window_set_vsync_mode_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_set_vsync_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2179333492)
	mut args := unsafe { [2]voidptr{} }
	i64_vsync_mode := i64(vsync_mode)
	args[0] = unsafe{voidptr(&i64_vsync_mode)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_get_vsync_mode_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_get_vsync_mode(cfg DisplayServer_window_get_vsync_mode_Cfg) DisplayServerVSyncMode {
	mut result := i64(DisplayServerVSyncMode.vsync_disabled)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_get_vsync_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 578873795)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{DisplayServerVSyncMode(result)}
}

@[params]
pub struct DisplayServer_window_is_maximize_allowed_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_is_maximize_allowed(cfg DisplayServer_window_is_maximize_allowed_Cfg) bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_is_maximize_allowed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1051549951)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) window_maximize_on_title_dbl_click() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_maximize_on_title_dbl_click")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) window_minimize_on_title_dbl_click() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_minimize_on_title_dbl_click")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_window_start_drag_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_start_drag(cfg DisplayServer_window_start_drag_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_start_drag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct DisplayServer_window_start_resize_Cfg {
pub:
	window_id i64
}

pub fn (s &DisplayServer) window_start_resize(edge DisplayServerWindowResizeEdge, cfg DisplayServer_window_start_resize_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("window_start_resize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4009722312)
	mut args := unsafe { [2]voidptr{} }
	i64_edge := i64(edge)
	args[0] = unsafe{voidptr(&i64_edge)}
	args[1] = unsafe{voidptr(&cfg.window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_should_increase_contrast() i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_should_increase_contrast")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) accessibility_should_reduce_animation() i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_should_reduce_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) accessibility_should_reduce_transparency() i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_should_reduce_transparency")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) accessibility_screen_reader_active() i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_screen_reader_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) accessibility_create_element(window_id i64, role DisplayServerAccessibilityRole) RID {
	mut result := RID{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_create_element")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2968347744)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&window_id)}
	i64_role := i64(role)
	args[1] = unsafe{voidptr(&i64_role)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_accessibility_create_sub_element_Cfg {
pub:
	insert_pos i64
}

pub fn (s &DisplayServer) accessibility_create_sub_element(parent_rid RID, role DisplayServerAccessibilityRole, cfg DisplayServer_accessibility_create_sub_element_Cfg) RID {
	mut result := RID{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_create_sub_element")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1949948826)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&parent_rid)}
	i64_role := i64(role)
	args[1] = unsafe{voidptr(&i64_role)}
	args[2] = unsafe{voidptr(&cfg.insert_pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct DisplayServer_accessibility_create_sub_text_edit_elements_Cfg {
pub:
	insert_pos i64
}

pub fn (s &DisplayServer) accessibility_create_sub_text_edit_elements(parent_rid RID, shaped_text RID, min_height f64, cfg DisplayServer_accessibility_create_sub_text_edit_elements_Cfg) RID {
	mut result := RID{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_create_sub_text_edit_elements")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3328635351)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&parent_rid)}
	args[1] = unsafe{voidptr(&shaped_text)}
	args[2] = unsafe{voidptr(&min_height)}
	args[3] = unsafe{voidptr(&cfg.insert_pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) accessibility_has_element(id RID) bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_has_element")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) accessibility_free_element(id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_free_element")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_element_set_meta(id RID, meta Variant) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_element_set_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175752987)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&meta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_element_get_meta(id RID) Variant {
	mut result := Variant{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_element_get_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171304767)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) accessibility_set_window_rect(window_id i64, rect_out Rect2, rect_in Rect2) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_set_window_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2386961724)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&window_id)}
	args[1] = unsafe{voidptr(&rect_out)}
	args[2] = unsafe{voidptr(&rect_in)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_set_window_focused(window_id i64, focused bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_set_window_focused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&window_id)}
	args[1] = unsafe{voidptr(&focused)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_focus(id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_get_window_root(window_id i64) RID {
	mut result := RID{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_get_window_root")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) accessibility_update_set_role(id RID, role DisplayServerAccessibilityRole) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_role")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3352768215)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	i64_role := i64(role)
	args[1] = unsafe{voidptr(&i64_role)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_name(id RID, name string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_extra_info(id RID, name string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_extra_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_description(id RID, description string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(description)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_value(id RID, value string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(value)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_tooltip(id RID, tooltip string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(tooltip)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_bounds(id RID, p_rect Rect2) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_bounds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1378122625)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&p_rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_transform(id RID, transform Transform2D) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_add_child(id RID, child_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_add_child")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&child_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_add_related_controls(id RID, related_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_add_related_controls")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&related_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_add_related_details(id RID, related_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_add_related_details")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&related_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_add_related_described_by(id RID, related_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_add_related_described_by")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&related_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_add_related_flow_to(id RID, related_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_add_related_flow_to")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&related_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_add_related_labeled_by(id RID, related_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_add_related_labeled_by")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&related_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_add_related_radio_group(id RID, related_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_add_related_radio_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&related_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_active_descendant(id RID, other_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_active_descendant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&other_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_next_on_line(id RID, other_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_next_on_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&other_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_previous_on_line(id RID, other_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_previous_on_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&other_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_member_of(id RID, group_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_member_of")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&group_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_in_page_link_target(id RID, other_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_in_page_link_target")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&other_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_error_message(id RID, other_id RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_error_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&other_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_live(id RID, live DisplayServerAccessibilityLiveMode) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_live")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2683302212)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	i64_live := i64(live)
	args[1] = unsafe{voidptr(&i64_live)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_add_action(id RID, action DisplayServerAccessibilityAction, callable Callable) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_add_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2898696987)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	i64_action := i64(action)
	args[1] = unsafe{voidptr(&i64_action)}
	args[2] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_add_custom_action(id RID, action_id i64, action_description string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_add_custom_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4153150897)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&action_id)}
	arg_sn2 := String.new(action_description)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_table_row_count(id RID, count i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_table_row_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_table_column_count(id RID, count i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_table_column_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_table_row_index(id RID, index i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_table_row_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_table_column_index(id RID, index i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_table_column_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_table_cell_position(id RID, row_index i64, column_index i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_table_cell_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&row_index)}
	args[2] = unsafe{voidptr(&column_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_table_cell_span(id RID, row_span i64, column_span i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_table_cell_span")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&row_span)}
	args[2] = unsafe{voidptr(&column_span)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_list_item_count(id RID, size i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_list_item_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_list_item_index(id RID, index i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_list_item_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_list_item_level(id RID, level i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_list_item_level")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&level)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_list_item_selected(id RID, selected bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_list_item_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&selected)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_list_item_expanded(id RID, expanded bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_list_item_expanded")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&expanded)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_popup_type(id RID, popup DisplayServerAccessibilityPopupType) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_popup_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2040885448)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	i64_popup := i64(popup)
	args[1] = unsafe{voidptr(&i64_popup)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_checked(id RID, checekd bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_checked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&checekd)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_num_value(id RID, position f64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_num_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_num_range(id RID, min f64, max f64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_num_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2513314492)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&min)}
	args[2] = unsafe{voidptr(&max)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_num_step(id RID, step f64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_num_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&step)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_num_jump(id RID, jump f64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_num_jump")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&jump)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_scroll_x(id RID, position f64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_scroll_x")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_scroll_x_range(id RID, min f64, max f64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_scroll_x_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2513314492)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&min)}
	args[2] = unsafe{voidptr(&max)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_scroll_y(id RID, position f64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_scroll_y")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_scroll_y_range(id RID, min f64, max f64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_scroll_y_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2513314492)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&min)}
	args[2] = unsafe{voidptr(&max)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_text_decorations(id RID, underline bool, strikethrough bool, overline bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_text_decorations")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1672422386)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&underline)}
	args[2] = unsafe{voidptr(&strikethrough)}
	args[3] = unsafe{voidptr(&overline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_text_align(id RID, align HorizontalAlignment) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_text_align")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3725995085)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	i64_align := i64(align)
	args[1] = unsafe{voidptr(&i64_align)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_text_selection(id RID, text_start_id RID, start_char i64, text_end_id RID, end_char i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_text_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3119144029)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&text_start_id)}
	args[2] = unsafe{voidptr(&start_char)}
	args[3] = unsafe{voidptr(&text_end_id)}
	args[4] = unsafe{voidptr(&end_char)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_flag(id RID, flag DisplayServerAccessibilityFlags, value bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_flag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3758675396)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	i64_flag := i64(flag)
	args[1] = unsafe{voidptr(&i64_flag)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_classname(id RID, gd_classname string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_classname")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(gd_classname)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_placeholder(id RID, placeholder string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(placeholder)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_language(id RID, language string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(language)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_text_orientation(id RID, vertical bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_text_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&vertical)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_list_orientation(id RID, vertical bool) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_list_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&vertical)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_shortcut(id RID, shortcut string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_shortcut")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(shortcut)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_url(id RID, url string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_url")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(url)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_role_description(id RID, description string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_role_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(description)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_state_description(id RID, description string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_state_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(description)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_color_value(id RID, color Color) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_color_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_background_color(id RID, color Color) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_background_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) accessibility_update_set_foreground_color(id RID, color Color) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("accessibility_update_set_foreground_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) ime_get_selection() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("ime_get_selection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) ime_get_text() string {
	mut result := String{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("ime_get_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct DisplayServer_virtual_keyboard_show_Cfg {
pub:
	position Rect2
	gd_type DisplayServerVirtualKeyboardType
	max_length i64
	cursor_start i64
	cursor_end i64
}

pub fn (s &DisplayServer) virtual_keyboard_show(existing_text string, cfg DisplayServer_virtual_keyboard_show_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("virtual_keyboard_show")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3042891259)
	mut args := unsafe { [6]voidptr{} }
	arg_sn0 := String.new(existing_text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.position)}
	i64_gd_type := i64(cfg.gd_type)
	args[2] = unsafe{voidptr(&i64_gd_type)}
	args[3] = unsafe{voidptr(&cfg.max_length)}
	args[4] = unsafe{voidptr(&cfg.cursor_start)}
	args[5] = unsafe{voidptr(&cfg.cursor_end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) virtual_keyboard_hide() {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("virtual_keyboard_hide")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) virtual_keyboard_get_height() i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("virtual_keyboard_get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) has_hardware_keyboard() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("has_hardware_keyboard")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) set_hardware_keyboard_connection_change_callback(callable Callable) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("set_hardware_keyboard_connection_change_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) cursor_set_shape(shape DisplayServerCursorShape) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("cursor_set_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2026291549)
	mut args := unsafe { [1]voidptr{} }
	i64_shape := i64(shape)
	args[0] = unsafe{voidptr(&i64_shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) cursor_get_shape() DisplayServerCursorShape {
	mut result := i64(DisplayServerCursorShape.cursor_arrow)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("cursor_get_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1087724927)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{DisplayServerCursorShape(result)}
}

@[params]
pub struct DisplayServer_cursor_set_custom_image_Cfg {
pub:
	shape DisplayServerCursorShape
	hotspot Vector2
}

pub fn (s &DisplayServer) cursor_set_custom_image(cursor Resource, cfg DisplayServer_cursor_set_custom_image_Cfg) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("cursor_set_custom_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1816663697)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&cursor.ptr)
	i64_shape := i64(cfg.shape)
	args[1] = unsafe{voidptr(&i64_shape)}
	args[2] = unsafe{voidptr(&cfg.hotspot)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) get_swap_cancel_ok() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("get_swap_cancel_ok")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) enable_for_stealing_focus(process_id i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("enable_for_stealing_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&process_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) dialog_show(title string, description string, buttons PackedStringArray, callback Callable) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("dialog_show")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4115553226)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(title)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(description)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&buttons)}
	args[3] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &DisplayServer) dialog_input_text(title string, description string, existing_text string, callback Callable) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("dialog_input_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3088703427)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(title)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(description)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := String.new(existing_text)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct DisplayServer_file_dialog_show_Cfg {
pub:
	parent_window_id i64
}

pub fn (s &DisplayServer) file_dialog_show(title string, current_directory string, filename string, show_hidden bool, mode DisplayServerFileDialogMode, filters PackedStringArray, callback Callable, cfg DisplayServer_file_dialog_show_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("file_dialog_show")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1386825884)
	mut args := unsafe { [8]voidptr{} }
	arg_sn0 := String.new(title)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(current_directory)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := String.new(filename)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&show_hidden)}
	i64_mode := i64(mode)
	args[4] = unsafe{voidptr(&i64_mode)}
	args[5] = unsafe{voidptr(&filters)}
	args[6] = unsafe{voidptr(&callback)}
	args[7] = unsafe{voidptr(&cfg.parent_window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct DisplayServer_file_dialog_with_options_show_Cfg {
pub:
	parent_window_id i64
}

pub fn (s &DisplayServer) file_dialog_with_options_show(title string, current_directory string, root string, filename string, show_hidden bool, mode DisplayServerFileDialogMode, filters PackedStringArray, options Array, callback Callable, cfg DisplayServer_file_dialog_with_options_show_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("file_dialog_with_options_show")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1448789813)
	mut args := unsafe { [10]voidptr{} }
	arg_sn0 := String.new(title)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(current_directory)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := String.new(root)
	args[2] = unsafe{voidptr(&arg_sn2)}
	arg_sn3 := String.new(filename)
	args[3] = unsafe{voidptr(&arg_sn3)}
	args[4] = unsafe{voidptr(&show_hidden)}
	i64_mode := i64(mode)
	args[5] = unsafe{voidptr(&i64_mode)}
	args[6] = unsafe{voidptr(&filters)}
	args[7] = unsafe{voidptr(&options)}
	args[8] = unsafe{voidptr(&callback)}
	args[9] = unsafe{voidptr(&cfg.parent_window_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn2.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &DisplayServer) beep() {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("beep")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051624405)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) keyboard_get_layout_count() i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("keyboard_get_layout_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) keyboard_get_current_layout() i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("keyboard_get_current_layout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) keyboard_set_current_layout(index i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("keyboard_set_current_layout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) keyboard_get_layout_language(index i64) string {
	mut result := String{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("keyboard_get_layout_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DisplayServer) keyboard_get_layout_name(index i64) string {
	mut result := String{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("keyboard_get_layout_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DisplayServer) keyboard_get_keycode_from_physical(keycode Key) Key {
	mut result := i64(Key.key_none)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("keyboard_get_keycode_from_physical")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3447613187)
	mut args := unsafe { [1]voidptr{} }
	i64_keycode := i64(keycode)
	args[0] = unsafe{voidptr(&i64_keycode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Key(result)}
}

pub fn (s &DisplayServer) keyboard_get_label_from_physical(keycode Key) Key {
	mut result := i64(Key.key_none)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("keyboard_get_label_from_physical")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3447613187)
	mut args := unsafe { [1]voidptr{} }
	i64_keycode := i64(keycode)
	args[0] = unsafe{voidptr(&i64_keycode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Key(result)}
}

pub fn (s &DisplayServer) show_emoji_and_symbol_picker() {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("show_emoji_and_symbol_picker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051624405)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) color_picker(callback Callable) bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("color_picker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 151643214)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) process_events() {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("process_events")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) force_process_and_drop_events() {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("force_process_and_drop_events")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) set_native_icon(filename string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("set_native_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(filename)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) set_icon(image Image) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("set_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&image.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) create_status_indicator(icon Texture2D, tooltip string, callback Callable) i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("create_status_indicator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1904285171)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&icon.ptr)
	arg_sn1 := String.new(tooltip)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) status_indicator_set_icon(id i64, icon Texture2D) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("status_indicator_set_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) status_indicator_set_tooltip(id i64, tooltip string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("status_indicator_set_tooltip")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(tooltip)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) status_indicator_set_menu(id i64, menu_rid RID) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("status_indicator_set_menu")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4040184819)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&menu_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) status_indicator_set_callback(id i64, callback Callable) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("status_indicator_set_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 957362965)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) status_indicator_get_rect(id i64) Rect2 {
	mut result := Rect2{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("status_indicator_get_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3327874267)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) delete_status_indicator(id i64) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("delete_status_indicator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) tablet_get_driver_count() i64 {
	mut result := i64(0)
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tablet_get_driver_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) tablet_get_driver_name(idx i64) string {
	mut result := String{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tablet_get_driver_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DisplayServer) tablet_get_current_driver() string {
	mut result := String{}
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tablet_get_current_driver")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &DisplayServer) tablet_set_current_driver(name string) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("tablet_set_current_driver")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) is_window_transparency_available() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("is_window_transparency_available")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DisplayServer) register_additional_output(object Object) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("register_additional_output")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) unregister_additional_output(object Object) {
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("unregister_additional_output")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DisplayServer) has_additional_outputs() bool {
	mut result := false
	classname := StringName.new("DisplayServer")
	fnname := StringName.new("has_additional_outputs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
