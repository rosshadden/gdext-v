module gd

pub enum Camera2DAnchorMode as i64 {
	anchor_mode_fixed_top_left = 0
	anchor_mode_drag_center = 1
}

pub enum Camera2DCamera2DProcessCallback as i64 {
	camera2d_process_physics = 0
	camera2d_process_idle = 1
}

pub struct Camera2D {
	Node2D
}

pub fn (s &Camera2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Camera2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Camera2D) set_offset(offset Vector2) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) get_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_anchor_mode(anchor_mode Camera2DAnchorMode) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_anchor_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2050398218)
	mut args := unsafe { [1]voidptr{} }
	i64_anchor_mode := i64(anchor_mode)
	args[0] = unsafe{voidptr(&i64_anchor_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) get_anchor_mode() Camera2DAnchorMode {
	mut result := i64(Camera2DAnchorMode.anchor_mode_fixed_top_left)
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_anchor_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 155978067)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Camera2DAnchorMode(result)}
}

pub fn (s &Camera2D) set_ignore_rotation(ignore bool) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_ignore_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ignore)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) is_ignoring_rotation() bool {
	mut result := false
	classname := StringName.new("Camera2D")
	fnname := StringName.new("is_ignoring_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_process_callback(mode Camera2DCamera2DProcessCallback) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_process_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4201947462)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) get_process_callback() Camera2DCamera2DProcessCallback {
	mut result := i64(Camera2DCamera2DProcessCallback.camera2d_process_physics)
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_process_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2325344499)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Camera2DCamera2DProcessCallback(result)}
}

pub fn (s &Camera2D) set_enabled(enabled bool) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) is_enabled() bool {
	mut result := false
	classname := StringName.new("Camera2D")
	fnname := StringName.new("is_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) make_current() {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("make_current")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) is_current() bool {
	mut result := false
	classname := StringName.new("Camera2D")
	fnname := StringName.new("is_current")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_limit_enabled(limit_enabled bool) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_limit_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&limit_enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) is_limit_enabled() bool {
	mut result := false
	classname := StringName.new("Camera2D")
	fnname := StringName.new("is_limit_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_limit(margin Side, limit i64) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_limit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 437707142)
	mut args := unsafe { [2]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	args[1] = unsafe{voidptr(&limit)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) get_limit(margin Side) i64 {
	mut result := i64(0)
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_limit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1983885014)
	mut args := unsafe { [1]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_limit_smoothing_enabled(limit_smoothing_enabled bool) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_limit_smoothing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&limit_smoothing_enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) is_limit_smoothing_enabled() bool {
	mut result := false
	classname := StringName.new("Camera2D")
	fnname := StringName.new("is_limit_smoothing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_drag_vertical_enabled(enabled bool) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_drag_vertical_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) is_drag_vertical_enabled() bool {
	mut result := false
	classname := StringName.new("Camera2D")
	fnname := StringName.new("is_drag_vertical_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_drag_horizontal_enabled(enabled bool) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_drag_horizontal_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) is_drag_horizontal_enabled() bool {
	mut result := false
	classname := StringName.new("Camera2D")
	fnname := StringName.new("is_drag_horizontal_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_drag_vertical_offset(offset f64) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_drag_vertical_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) get_drag_vertical_offset() f64 {
	mut result := f64(0)
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_drag_vertical_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_drag_horizontal_offset(offset f64) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_drag_horizontal_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) get_drag_horizontal_offset() f64 {
	mut result := f64(0)
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_drag_horizontal_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_drag_margin(margin Side, drag_margin f64) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_drag_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
	mut args := unsafe { [2]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	args[1] = unsafe{voidptr(&drag_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) get_drag_margin(margin Side) f64 {
	mut result := f64(0)
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_drag_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
	mut args := unsafe { [1]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) get_target_position() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_target_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) get_screen_center_position() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_screen_center_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_zoom(zoom Vector2) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_zoom")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&zoom)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) get_zoom() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_zoom")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_custom_viewport(viewport Node) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_custom_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&viewport.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) get_custom_viewport() Node {
	mut result := Node{}
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_custom_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_position_smoothing_speed(position_smoothing_speed f64) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_position_smoothing_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position_smoothing_speed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) get_position_smoothing_speed() f64 {
	mut result := f64(0)
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_position_smoothing_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_position_smoothing_enabled(position_smoothing_speed bool) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_position_smoothing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position_smoothing_speed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) is_position_smoothing_enabled() bool {
	mut result := false
	classname := StringName.new("Camera2D")
	fnname := StringName.new("is_position_smoothing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_rotation_smoothing_enabled(enabled bool) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_rotation_smoothing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) is_rotation_smoothing_enabled() bool {
	mut result := false
	classname := StringName.new("Camera2D")
	fnname := StringName.new("is_rotation_smoothing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_rotation_smoothing_speed(speed f64) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_rotation_smoothing_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&speed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) get_rotation_smoothing_speed() f64 {
	mut result := f64(0)
	classname := StringName.new("Camera2D")
	fnname := StringName.new("get_rotation_smoothing_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) force_update_scroll() {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("force_update_scroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) reset_smoothing() {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("reset_smoothing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) align() {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("align")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) set_screen_drawing_enabled(screen_drawing_enabled bool) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_screen_drawing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&screen_drawing_enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) is_screen_drawing_enabled() bool {
	mut result := false
	classname := StringName.new("Camera2D")
	fnname := StringName.new("is_screen_drawing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_limit_drawing_enabled(limit_drawing_enabled bool) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_limit_drawing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&limit_drawing_enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) is_limit_drawing_enabled() bool {
	mut result := false
	classname := StringName.new("Camera2D")
	fnname := StringName.new("is_limit_drawing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Camera2D) set_margin_drawing_enabled(margin_drawing_enabled bool) {
	classname := StringName.new("Camera2D")
	fnname := StringName.new("set_margin_drawing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&margin_drawing_enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Camera2D) is_margin_drawing_enabled() bool {
	mut result := false
	classname := StringName.new("Camera2D")
	fnname := StringName.new("is_margin_drawing_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
