module gd

pub enum Side as i64 {
	side_left = 0
	side_top = 1
	side_right = 2
	side_bottom = 3
}

pub enum Corner as i64 {
	corner_top_left = 0
	corner_top_right = 1
	corner_bottom_right = 2
	corner_bottom_left = 3
}

pub enum Orientation as i64 {
	vertical = 1
	horizontal = 0
}

pub enum ClockDirection as i64 {
	clockwise = 0
	counterclockwise = 1
}

pub enum HorizontalAlignment as i64 {
	horizontal_alignment_left = 0
	horizontal_alignment_center = 1
	horizontal_alignment_right = 2
	horizontal_alignment_fill = 3
}

pub enum VerticalAlignment as i64 {
	vertical_alignment_top = 0
	vertical_alignment_center = 1
	vertical_alignment_bottom = 2
	vertical_alignment_fill = 3
}

pub enum InlineAlignment as i64 {
	inline_alignment_top_to = 0
	inline_alignment_center_to = 1
	inline_alignment_baseline_to = 3
	inline_alignment_bottom_to = 2
	inline_alignment_to_center = 4
	inline_alignment_to_baseline = 8
	inline_alignment_to_bottom = 12
	inline_alignment_center = 5
	inline_alignment_bottom = 14
}

pub enum EulerOrder as i64 {
	euler_order_xyz = 0
	euler_order_xzy = 1
	euler_order_yxz = 2
	euler_order_yzx = 3
	euler_order_zxy = 4
	euler_order_zyx = 5
}

pub enum Key as i64 {
	key_none = 0
	key_special = 4194304
	key_escape = 4194305
	key_tab = 4194306
	key_backtab = 4194307
	key_backspace = 4194308
	key_enter = 4194309
	key_kp_enter = 4194310
	key_insert = 4194311
	key_delete = 4194312
	key_pause = 4194313
	key_print = 4194314
	key_sysreq = 4194315
	key_clear = 4194316
	key_home = 4194317
	key_end = 4194318
	key_left = 4194319
	key_up = 4194320
	key_right = 4194321
	key_down = 4194322
	key_pageup = 4194323
	key_pagedown = 4194324
	key_shift = 4194325
	key_ctrl = 4194326
	key_meta = 4194327
	key_alt = 4194328
	key_capslock = 4194329
	key_numlock = 4194330
	key_scrolllock = 4194331
	key_f1 = 4194332
	key_f2 = 4194333
	key_f3 = 4194334
	key_f4 = 4194335
	key_f5 = 4194336
	key_f6 = 4194337
	key_f7 = 4194338
	key_f8 = 4194339
	key_f9 = 4194340
	key_f10 = 4194341
	key_f11 = 4194342
	key_f12 = 4194343
	key_f13 = 4194344
	key_f14 = 4194345
	key_f15 = 4194346
	key_f16 = 4194347
	key_f17 = 4194348
	key_f18 = 4194349
	key_f19 = 4194350
	key_f20 = 4194351
	key_f21 = 4194352
	key_f22 = 4194353
	key_f23 = 4194354
	key_f24 = 4194355
	key_f25 = 4194356
	key_f26 = 4194357
	key_f27 = 4194358
	key_f28 = 4194359
	key_f29 = 4194360
	key_f30 = 4194361
	key_f31 = 4194362
	key_f32 = 4194363
	key_f33 = 4194364
	key_f34 = 4194365
	key_f35 = 4194366
	key_kp_multiply = 4194433
	key_kp_divide = 4194434
	key_kp_subtract = 4194435
	key_kp_period = 4194436
	key_kp_add = 4194437
	key_kp_0 = 4194438
	key_kp_1 = 4194439
	key_kp_2 = 4194440
	key_kp_3 = 4194441
	key_kp_4 = 4194442
	key_kp_5 = 4194443
	key_kp_6 = 4194444
	key_kp_7 = 4194445
	key_kp_8 = 4194446
	key_kp_9 = 4194447
	key_menu = 4194370
	key_hyper = 4194371
	key_help = 4194373
	key_back = 4194376
	key_forward = 4194377
	key_stop = 4194378
	key_refresh = 4194379
	key_volumedown = 4194380
	key_volumemute = 4194381
	key_volumeup = 4194382
	key_mediaplay = 4194388
	key_mediastop = 4194389
	key_mediaprevious = 4194390
	key_medianext = 4194391
	key_mediarecord = 4194392
	key_homepage = 4194393
	key_favorites = 4194394
	key_search = 4194395
	key_standby = 4194396
	key_openurl = 4194397
	key_launchmail = 4194398
	key_launchmedia = 4194399
	key_launch0 = 4194400
	key_launch1 = 4194401
	key_launch2 = 4194402
	key_launch3 = 4194403
	key_launch4 = 4194404
	key_launch5 = 4194405
	key_launch6 = 4194406
	key_launch7 = 4194407
	key_launch8 = 4194408
	key_launch9 = 4194409
	key_launcha = 4194410
	key_launchb = 4194411
	key_launchc = 4194412
	key_launchd = 4194413
	key_launche = 4194414
	key_launchf = 4194415
	key_globe = 4194416
	key_keyboard = 4194417
	key_jis_eisu = 4194418
	key_jis_kana = 4194419
	key_unknown = 8388607
	key_space = 32
	key_exclam = 33
	key_quotedbl = 34
	key_numbersign = 35
	key_dollar = 36
	key_percent = 37
	key_ampersand = 38
	key_apostrophe = 39
	key_parenleft = 40
	key_parenright = 41
	key_asterisk = 42
	key_plus = 43
	key_comma = 44
	key_minus = 45
	key_period = 46
	key_slash = 47
	key_0 = 48
	key_1 = 49
	key_2 = 50
	key_3 = 51
	key_4 = 52
	key_5 = 53
	key_6 = 54
	key_7 = 55
	key_8 = 56
	key_9 = 57
	key_colon = 58
	key_semicolon = 59
	key_less = 60
	key_equal = 61
	key_greater = 62
	key_question = 63
	key_at = 64
	key_a = 65
	key_b = 66
	key_c = 67
	key_d = 68
	key_e = 69
	key_f = 70
	key_g = 71
	key_h = 72
	key_i = 73
	key_j = 74
	key_k = 75
	key_l = 76
	key_m = 77
	key_n = 78
	key_o = 79
	key_p = 80
	key_q = 81
	key_r = 82
	key_s = 83
	key_t = 84
	key_u = 85
	key_v = 86
	key_w = 87
	key_x = 88
	key_y = 89
	key_z = 90
	key_bracketleft = 91
	key_backslash = 92
	key_bracketright = 93
	key_asciicircum = 94
	key_underscore = 95
	key_quoteleft = 96
	key_braceleft = 123
	key_bar = 124
	key_braceright = 125
	key_asciitilde = 126
	key_yen = 165
	key_section = 167
}

pub enum KeyModifierMask as i64 {
	key_code_mask = 8388607
	key_modifier_mask = 2130706432
	key_mask_cmd_or_ctrl = 16777216
	key_mask_shift = 33554432
	key_mask_alt = 67108864
	key_mask_meta = 134217728
	key_mask_ctrl = 268435456
	key_mask_kpad = 536870912
	key_mask_group_switch = 1073741824
}

pub enum KeyLocation as i64 {
	key_location_unspecified = 0
	key_location_left = 1
	key_location_right = 2
}

pub enum MouseButton as i64 {
	mouse_button_none = 0
	mouse_button_left = 1
	mouse_button_right = 2
	mouse_button_middle = 3
	mouse_button_wheel_up = 4
	mouse_button_wheel_down = 5
	mouse_button_wheel_left = 6
	mouse_button_wheel_right = 7
	mouse_button_xbutton1 = 8
	mouse_button_xbutton2 = 9
}

pub enum MouseButtonMask as i64 {
	mouse_button_mask_left = 1
	mouse_button_mask_right = 2
	mouse_button_mask_middle = 4
	mouse_button_mask_mb_xbutton1 = 128
	mouse_button_mask_mb_xbutton2 = 256
}

pub enum JoyButton as i64 {
	joy_button_invalid = -1
	joy_button_a = 0
	joy_button_b = 1
	joy_button_x = 2
	joy_button_y = 3
	joy_button_back = 4
	joy_button_guide = 5
	joy_button_start = 6
	joy_button_left_stick = 7
	joy_button_right_stick = 8
	joy_button_left_shoulder = 9
	joy_button_right_shoulder = 10
	joy_button_dpad_up = 11
	joy_button_dpad_down = 12
	joy_button_dpad_left = 13
	joy_button_dpad_right = 14
	joy_button_misc1 = 15
	joy_button_paddle1 = 16
	joy_button_paddle2 = 17
	joy_button_paddle3 = 18
	joy_button_paddle4 = 19
	joy_button_touchpad = 20
	joy_button_sdl_max = 21
	joy_button_max = 128
}

pub enum JoyAxis as i64 {
	joy_axis_invalid = -1
	joy_axis_left_x = 0
	joy_axis_left_y = 1
	joy_axis_right_x = 2
	joy_axis_right_y = 3
	joy_axis_trigger_left = 4
	joy_axis_trigger_right = 5
	joy_axis_sdl_max = 6
	joy_axis_max = 10
}

pub enum MIDIMessage as i64 {
	midi_message_none = 0
	midi_message_note_off = 8
	midi_message_note_on = 9
	midi_message_aftertouch = 10
	midi_message_control_change = 11
	midi_message_program_change = 12
	midi_message_channel_pressure = 13
	midi_message_pitch_bend = 14
	midi_message_system_exclusive = 240
	midi_message_quarter_frame = 241
	midi_message_song_position_pointer = 242
	midi_message_song_select = 243
	midi_message_tune_request = 246
	midi_message_timing_clock = 248
	midi_message_start = 250
	midi_message_continue = 251
	midi_message_stop = 252
	midi_message_active_sensing = 254
	midi_message_system_reset = 255
}

pub enum GDError as i64 {
	ok = 0
	failed = 1
	err_unavailable = 2
	err_unconfigured = 3
	err_unauthorized = 4
	err_parameter_range_error = 5
	err_out_of_memory = 6
	err_file_not_found = 7
	err_file_bad_drive = 8
	err_file_bad_path = 9
	err_file_no_permission = 10
	err_file_already_in_use = 11
	err_file_cant_open = 12
	err_file_cant_write = 13
	err_file_cant_read = 14
	err_file_unrecognized = 15
	err_file_corrupt = 16
	err_file_missing_dependencies = 17
	err_file_eof = 18
	err_cant_open = 19
	err_cant_create = 20
	err_query_failed = 21
	err_already_in_use = 22
	err_locked = 23
	err_timeout = 24
	err_cant_connect = 25
	err_cant_resolve = 26
	err_connection_error = 27
	err_cant_acquire_resource = 28
	err_cant_fork = 29
	err_invalid_data = 30
	err_invalid_parameter = 31
	err_already_exists = 32
	err_does_not_exist = 33
	err_database_cant_read = 34
	err_database_cant_write = 35
	err_compilation_failed = 36
	err_method_not_found = 37
	err_link_failed = 38
	err_script_failed = 39
	err_cyclic_link = 40
	err_invalid_declaration = 41
	err_duplicate_symbol = 42
	err_parse_error = 43
	err_busy = 44
	err_skip = 45
	err_help = 46
	err_bug = 47
	err_printer_on_fire = 48
}

pub enum PropertyHint as i64 {
	property_hint_none = 0
	property_hint_range = 1
	property_hint_enum = 2
	property_hint_enum_suggestion = 3
	property_hint_exp_easing = 4
	property_hint_link = 5
	property_hint_flags = 6
	property_hint_layers_2d_render = 7
	property_hint_layers_2d_physics = 8
	property_hint_layers_2d_navigation = 9
	property_hint_layers_3d_render = 10
	property_hint_layers_3d_physics = 11
	property_hint_layers_3d_navigation = 12
	property_hint_layers_avoidance = 37
	property_hint_file = 13
	property_hint_dir = 14
	property_hint_global_file = 15
	property_hint_global_dir = 16
	property_hint_resource_type = 17
	property_hint_multiline_text = 18
	property_hint_expression = 19
	property_hint_placeholder_text = 20
	property_hint_color_no_alpha = 21
	property_hint_object_id = 22
	property_hint_type_string = 23
	property_hint_node_path_to_edited_node = 24
	property_hint_object_too_big = 25
	property_hint_node_path_valid_types = 26
	property_hint_save_file = 27
	property_hint_global_save_file = 28
	property_hint_int_is_objectid = 29
	property_hint_int_is_pointer = 30
	property_hint_array_type = 31
	property_hint_dictionary_type = 38
	property_hint_locale_id = 32
	property_hint_localizable_string = 33
	property_hint_node_type = 34
	property_hint_hide_quaternion_edit = 35
	property_hint_password = 36
	property_hint_tool_button = 39
	property_hint_oneshot = 40
	property_hint_max = 42
}

pub enum PropertyUsageFlags as i64 {
	property_usage_none = 0
	property_usage_storage = 2
	property_usage_editor = 4
	property_usage_internal = 8
	property_usage_checkable = 16
	property_usage_checked = 32
	property_usage_group = 64
	property_usage_category = 128
	property_usage_subgroup = 256
	property_usage_class_is_bitfield = 512
	property_usage_no_instance_state = 1024
	property_usage_restart_if_changed = 2048
	property_usage_script_variable = 4096
	property_usage_store_if_null = 8192
	property_usage_update_all_if_modified = 16384
	property_usage_script_default_value = 32768
	property_usage_class_is_enum = 65536
	property_usage_nil_is_variant = 131072
	property_usage_array = 262144
	property_usage_always_duplicate = 524288
	property_usage_never_duplicate = 1048576
	property_usage_high_end_gfx = 2097152
	property_usage_node_path_from_scene_root = 4194304
	property_usage_resource_not_persistent = 8388608
	property_usage_keying_increments = 16777216
	property_usage_deferred_set_resource = 33554432
	property_usage_editor_instantiate_object = 67108864
	property_usage_editor_basic_setting = 134217728
	property_usage_read_only = 268435456
	property_usage_secret = 536870912
	property_usage_default = 6
}

pub enum MethodFlags as i64 {
	method_flag_normal = 1
	method_flag_editor = 2
	method_flag_const = 4
	method_flag_virtual = 8
	method_flag_vararg = 16
	method_flag_static = 32
	method_flag_object_core = 64
	method_flag_virtual_required = 128
}

pub enum VariantType as i64 {
	type_nil = 0
	type_bool = 1
	type_int = 2
	type_float = 3
	type_string = 4
	type_vector2 = 5
	type_vector2i = 6
	type_rect2 = 7
	type_rect2i = 8
	type_vector3 = 9
	type_vector3i = 10
	type_transform2d = 11
	type_vector4 = 12
	type_vector4i = 13
	type_plane = 14
	type_quaternion = 15
	type_aabb = 16
	type_basis = 17
	type_transform3d = 18
	type_projection = 19
	type_color = 20
	type_string_name = 21
	type_node_path = 22
	type_rid = 23
	type_object = 24
	type_callable = 25
	type_signal = 26
	type_dictionary = 27
	type_array = 28
	type_packed_byte_array = 29
	type_packed_int32_array = 30
	type_packed_int64_array = 31
	type_packed_float32_array = 32
	type_packed_float64_array = 33
	type_packed_string_array = 34
	type_packed_vector2_array = 35
	type_packed_vector3_array = 36
	type_packed_color_array = 37
	type_packed_vector4_array = 38
	type_max = 39
}

pub enum VariantOperator as i64 {
	op_equal = 0
	op_not_equal = 1
	op_less = 2
	op_less_equal = 3
	op_greater = 4
	op_greater_equal = 5
	op_add = 6
	op_subtract = 7
	op_multiply = 8
	op_divide = 9
	op_negate = 10
	op_positive = 11
	op_module = 12
	op_power = 13
	op_shift_left = 14
	op_shift_right = 15
	op_bit_and = 16
	op_bit_or = 17
	op_bit_xor = 18
	op_bit_negate = 19
	op_and = 20
	op_or = 21
	op_xor = 22
	op_not = 23
	op_in = 24
	op_max = 25
}
