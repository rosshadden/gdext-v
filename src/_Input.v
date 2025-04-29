module gd

pub enum InputMouseMode as i64 {
	mouse_mode_visible = 0
	mouse_mode_hidden = 1
	mouse_mode_captured = 2
	mouse_mode_confined = 3
	mouse_mode_confined_hidden = 4
	mouse_mode_max = 5
}

pub enum InputCursorShape as i64 {
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

pub struct Input {
	Object
}

pub fn Input.get_singleton() Input {
	sn := StringName.new("Input")
	result := Input{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &Input) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Input) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Input) is_anything_pressed() bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_anything_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) is_key_pressed(keycode Key) bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_key_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1938909964)
	mut args := unsafe { [1]voidptr{} }
	i64_keycode := i64(keycode)
	args[0] = unsafe{voidptr(&i64_keycode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) is_physical_key_pressed(keycode Key) bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_physical_key_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1938909964)
	mut args := unsafe { [1]voidptr{} }
	i64_keycode := i64(keycode)
	args[0] = unsafe{voidptr(&i64_keycode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) is_key_label_pressed(keycode Key) bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_key_label_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1938909964)
	mut args := unsafe { [1]voidptr{} }
	i64_keycode := i64(keycode)
	args[0] = unsafe{voidptr(&i64_keycode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) is_mouse_button_pressed(button MouseButton) bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_mouse_button_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1821097125)
	mut args := unsafe { [1]voidptr{} }
	i64_button := i64(button)
	args[0] = unsafe{voidptr(&i64_button)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) is_joy_button_pressed(device i64, button JoyButton) bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_joy_button_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 787208542)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	i64_button := i64(button)
	args[1] = unsafe{voidptr(&i64_button)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Input_is_action_pressed_Cfg {
pub:
	exact_match bool
}

pub fn (s &Input) is_action_pressed(action string, cfg Input_is_action_pressed_Cfg) bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_action_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.exact_match)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Input_is_action_just_pressed_Cfg {
pub:
	exact_match bool
}

pub fn (s &Input) is_action_just_pressed(action string, cfg Input_is_action_just_pressed_Cfg) bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_action_just_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.exact_match)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Input_is_action_just_released_Cfg {
pub:
	exact_match bool
}

pub fn (s &Input) is_action_just_released(action string, cfg Input_is_action_just_released_Cfg) bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_action_just_released")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.exact_match)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Input_get_action_strength_Cfg {
pub:
	exact_match bool
}

pub fn (s &Input) get_action_strength(action string, cfg Input_get_action_strength_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("Input")
	fnname := StringName.new("get_action_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 801543509)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.exact_match)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Input_get_action_raw_strength_Cfg {
pub:
	exact_match bool
}

pub fn (s &Input) get_action_raw_strength(action string, cfg Input_get_action_raw_strength_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("Input")
	fnname := StringName.new("get_action_raw_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 801543509)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.exact_match)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) get_axis(negative_action string, positive_action string) f64 {
	mut result := f64(0)
	classname := StringName.new("Input")
	fnname := StringName.new("get_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1958752504)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(negative_action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(positive_action)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Input_get_vector_Cfg {
pub:
	deadzone f64
}

pub fn (s &Input) get_vector(negative_x string, positive_x string, negative_y string, positive_y string, cfg Input_get_vector_Cfg) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Input")
	fnname := StringName.new("get_vector")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2479607902)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := StringName.new(negative_x)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(positive_x)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := StringName.new(negative_y)
	args[2] = unsafe{voidptr(&arg_sn2)}
	arg_sn3 := StringName.new(positive_y)
	args[3] = unsafe{voidptr(&arg_sn3)}
	args[4] = unsafe{voidptr(&cfg.deadzone)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn2.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Input_add_joy_mapping_Cfg {
pub:
	update_existing bool
}

pub fn (s &Input) add_joy_mapping(mapping string, cfg Input_add_joy_mapping_Cfg) {
	classname := StringName.new("Input")
	fnname := StringName.new("add_joy_mapping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1168363258)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(mapping)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.update_existing)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) remove_joy_mapping(guid string) {
	classname := StringName.new("Input")
	fnname := StringName.new("remove_joy_mapping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(guid)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) is_joy_known(device i64) bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_joy_known")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) get_joy_axis(device i64, axis JoyAxis) f64 {
	mut result := f64(0)
	classname := StringName.new("Input")
	fnname := StringName.new("get_joy_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4063175957)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	i64_axis := i64(axis)
	args[1] = unsafe{voidptr(&i64_axis)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) get_joy_name(device i64) string {
	mut result := String{}
	classname := StringName.new("Input")
	fnname := StringName.new("get_joy_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Input) get_joy_guid(device i64) string {
	mut result := String{}
	classname := StringName.new("Input")
	fnname := StringName.new("get_joy_guid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Input) get_joy_info(device i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Input")
	fnname := StringName.new("get_joy_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) should_ignore_device(vendor_id i64, product_id i64) bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("should_ignore_device")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&vendor_id)}
	args[1] = unsafe{voidptr(&product_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) get_connected_joypads() Array {
	mut result := Array{}
	classname := StringName.new("Input")
	fnname := StringName.new("get_connected_joypads")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) get_joy_vibration_strength(device i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Input")
	fnname := StringName.new("get_joy_vibration_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3114997196)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) get_joy_vibration_duration(device i64) f64 {
	mut result := f64(0)
	classname := StringName.new("Input")
	fnname := StringName.new("get_joy_vibration_duration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4025615559)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Input_start_joy_vibration_Cfg {
pub:
	duration f64
}

pub fn (s &Input) start_joy_vibration(device i64, weak_magnitude f64, strong_magnitude f64, cfg Input_start_joy_vibration_Cfg) {
	classname := StringName.new("Input")
	fnname := StringName.new("start_joy_vibration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2576575033)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	args[1] = unsafe{voidptr(&weak_magnitude)}
	args[2] = unsafe{voidptr(&strong_magnitude)}
	args[3] = unsafe{voidptr(&cfg.duration)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) stop_joy_vibration(device i64) {
	classname := StringName.new("Input")
	fnname := StringName.new("stop_joy_vibration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&device)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Input_vibrate_handheld_Cfg {
pub:
	duration_ms i64
	amplitude f64
}

pub fn (s &Input) vibrate_handheld(cfg Input_vibrate_handheld_Cfg) {
	classname := StringName.new("Input")
	fnname := StringName.new("vibrate_handheld")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 544894297)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.duration_ms)}
	args[1] = unsafe{voidptr(&cfg.amplitude)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) get_gravity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Input")
	fnname := StringName.new("get_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) get_accelerometer() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Input")
	fnname := StringName.new("get_accelerometer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) get_magnetometer() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Input")
	fnname := StringName.new("get_magnetometer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) get_gyroscope() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Input")
	fnname := StringName.new("get_gyroscope")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) set_gravity(value Vector3) {
	classname := StringName.new("Input")
	fnname := StringName.new("set_gravity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) set_accelerometer(value Vector3) {
	classname := StringName.new("Input")
	fnname := StringName.new("set_accelerometer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) set_magnetometer(value Vector3) {
	classname := StringName.new("Input")
	fnname := StringName.new("set_magnetometer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) set_gyroscope(value Vector3) {
	classname := StringName.new("Input")
	fnname := StringName.new("set_gyroscope")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) get_last_mouse_velocity() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Input")
	fnname := StringName.new("get_last_mouse_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) get_last_mouse_screen_velocity() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Input")
	fnname := StringName.new("get_last_mouse_screen_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) get_mouse_button_mask() MouseButtonMask {
	mut result := i64(MouseButtonMask.mouse_button_mask_left)
	classname := StringName.new("Input")
	fnname := StringName.new("get_mouse_button_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2512161324)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MouseButtonMask(result)}
}

pub fn (s &Input) set_mouse_mode(mode InputMouseMode) {
	classname := StringName.new("Input")
	fnname := StringName.new("set_mouse_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2228490894)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) get_mouse_mode() InputMouseMode {
	mut result := i64(InputMouseMode.mouse_mode_visible)
	classname := StringName.new("Input")
	fnname := StringName.new("get_mouse_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 965286182)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{InputMouseMode(result)}
}

pub fn (s &Input) warp_mouse(position Vector2) {
	classname := StringName.new("Input")
	fnname := StringName.new("warp_mouse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Input_action_press_Cfg {
pub:
	strength f64
}

pub fn (s &Input) action_press(action string, cfg Input_action_press_Cfg) {
	classname := StringName.new("Input")
	fnname := StringName.new("action_press")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1713091165)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.strength)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) action_release(action string) {
	classname := StringName.new("Input")
	fnname := StringName.new("action_release")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Input_set_default_cursor_shape_Cfg {
pub:
	shape InputCursorShape
}

pub fn (s &Input) set_default_cursor_shape(cfg Input_set_default_cursor_shape_Cfg) {
	classname := StringName.new("Input")
	fnname := StringName.new("set_default_cursor_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2124816902)
	mut args := unsafe { [1]voidptr{} }
	i64_shape := i64(cfg.shape)
	args[0] = unsafe{voidptr(&i64_shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) get_current_cursor_shape() InputCursorShape {
	mut result := i64(InputCursorShape.cursor_arrow)
	classname := StringName.new("Input")
	fnname := StringName.new("get_current_cursor_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3455658929)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{InputCursorShape(result)}
}

@[params]
pub struct Input_set_custom_mouse_cursor_Cfg {
pub:
	shape InputCursorShape
	hotspot Vector2
}

pub fn (s &Input) set_custom_mouse_cursor(image Resource, cfg Input_set_custom_mouse_cursor_Cfg) {
	classname := StringName.new("Input")
	fnname := StringName.new("set_custom_mouse_cursor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 703945977)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&image.ptr)
	i64_shape := i64(cfg.shape)
	args[1] = unsafe{voidptr(&i64_shape)}
	args[2] = unsafe{voidptr(&cfg.hotspot)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) parse_input_event(event InputEvent) {
	classname := StringName.new("Input")
	fnname := StringName.new("parse_input_event")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3754044979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) set_use_accumulated_input(enable bool) {
	classname := StringName.new("Input")
	fnname := StringName.new("set_use_accumulated_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) is_using_accumulated_input() bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_using_accumulated_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) flush_buffered_events() {
	classname := StringName.new("Input")
	fnname := StringName.new("flush_buffered_events")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) set_emulate_mouse_from_touch(enable bool) {
	classname := StringName.new("Input")
	fnname := StringName.new("set_emulate_mouse_from_touch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) is_emulating_mouse_from_touch() bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_emulating_mouse_from_touch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Input) set_emulate_touch_from_mouse(enable bool) {
	classname := StringName.new("Input")
	fnname := StringName.new("set_emulate_touch_from_mouse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Input) is_emulating_touch_from_mouse() bool {
	mut result := false
	classname := StringName.new("Input")
	fnname := StringName.new("is_emulating_touch_from_mouse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
