module gd

pub enum CharacterBody3DMotionMode as i64 {
	motion_mode_grounded = 0
	motion_mode_floating = 1
}

pub enum CharacterBody3DPlatformOnLeave as i64 {
	platform_on_leave_add_velocity = 0
	platform_on_leave_add_upward_velocity = 1
	platform_on_leave_do_nothing = 2
}

pub struct CharacterBody3D {
	PhysicsBody3D
}

pub fn (s &CharacterBody3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CharacterBody3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CharacterBody3D) move_and_slide() bool {
	mut result := false
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("move_and_slide")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) apply_floor_snap() {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("apply_floor_snap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) set_velocity(velocity Vector3) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) get_velocity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) set_safe_margin(margin f64) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_safe_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) get_safe_margin() f64 {
	mut result := f64(0)
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_safe_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) is_floor_stop_on_slope_enabled() bool {
	mut result := false
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("is_floor_stop_on_slope_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) set_floor_stop_on_slope_enabled(enabled bool) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_floor_stop_on_slope_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) set_floor_constant_speed_enabled(enabled bool) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_floor_constant_speed_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) is_floor_constant_speed_enabled() bool {
	mut result := false
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("is_floor_constant_speed_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) set_floor_block_on_wall_enabled(enabled bool) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_floor_block_on_wall_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) is_floor_block_on_wall_enabled() bool {
	mut result := false
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("is_floor_block_on_wall_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) set_slide_on_ceiling_enabled(enabled bool) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_slide_on_ceiling_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) is_slide_on_ceiling_enabled() bool {
	mut result := false
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("is_slide_on_ceiling_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) set_platform_floor_layers(exclude_layer i64) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_platform_floor_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exclude_layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) get_platform_floor_layers() i64 {
	mut result := i64(0)
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_platform_floor_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) set_platform_wall_layers(exclude_layer i64) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_platform_wall_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exclude_layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) get_platform_wall_layers() i64 {
	mut result := i64(0)
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_platform_wall_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) get_max_slides() i64 {
	mut result := i64(0)
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_max_slides")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) set_max_slides(max_slides i64) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_max_slides")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_slides)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) get_floor_max_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_floor_max_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) set_floor_max_angle(radians f64) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_floor_max_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&radians)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) get_floor_snap_length() f64 {
	mut result := f64(0)
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_floor_snap_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) set_floor_snap_length(floor_snap_length f64) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_floor_snap_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&floor_snap_length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) get_wall_min_slide_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_wall_min_slide_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) set_wall_min_slide_angle(radians f64) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_wall_min_slide_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&radians)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) get_up_direction() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_up_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) set_up_direction(up_direction Vector3) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_up_direction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&up_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) set_motion_mode(mode CharacterBody3DMotionMode) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_motion_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2690739026)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) get_motion_mode() CharacterBody3DMotionMode {
	mut result := i64(CharacterBody3DMotionMode.motion_mode_grounded)
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_motion_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3529553604)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{CharacterBody3DMotionMode(result)}
}

pub fn (s &CharacterBody3D) set_platform_on_leave(on_leave_apply_velocity CharacterBody3DPlatformOnLeave) {
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("set_platform_on_leave")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1459986142)
	mut args := unsafe { [1]voidptr{} }
	i64_on_leave_apply_velocity := i64(on_leave_apply_velocity)
	args[0] = unsafe{voidptr(&i64_on_leave_apply_velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharacterBody3D) get_platform_on_leave() CharacterBody3DPlatformOnLeave {
	mut result := i64(CharacterBody3DPlatformOnLeave.platform_on_leave_add_velocity)
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_platform_on_leave")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 996491171)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{CharacterBody3DPlatformOnLeave(result)}
}

pub fn (s &CharacterBody3D) is_on_floor() bool {
	mut result := false
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("is_on_floor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) is_on_floor_only() bool {
	mut result := false
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("is_on_floor_only")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) is_on_ceiling() bool {
	mut result := false
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("is_on_ceiling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) is_on_ceiling_only() bool {
	mut result := false
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("is_on_ceiling_only")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) is_on_wall() bool {
	mut result := false
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("is_on_wall")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) is_on_wall_only() bool {
	mut result := false
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("is_on_wall_only")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) get_floor_normal() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_floor_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) get_wall_normal() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_wall_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) get_last_motion() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_last_motion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) get_position_delta() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_position_delta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) get_real_velocity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_real_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct CharacterBody3D_get_floor_angle_Cfg {
pub:
	up_direction Vector3
}

pub fn (s &CharacterBody3D) get_floor_angle(cfg CharacterBody3D_get_floor_angle_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_floor_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2906300789)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.up_direction)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) get_platform_velocity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_platform_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) get_platform_angular_velocity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_platform_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) get_slide_collision_count() i64 {
	mut result := i64(0)
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_slide_collision_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) get_slide_collision(slide_idx i64) KinematicCollision3D {
	mut result := KinematicCollision3D{}
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_slide_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 107003663)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&slide_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharacterBody3D) get_last_slide_collision() KinematicCollision3D {
	mut result := KinematicCollision3D{}
	classname := StringName.new("CharacterBody3D")
	fnname := StringName.new("get_last_slide_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 186875014)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
