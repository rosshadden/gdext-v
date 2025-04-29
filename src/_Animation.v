module gd

pub enum AnimationTrackType as i64 {
	type_value = 0
	type_position_3d = 1
	type_rotation_3d = 2
	type_scale_3d = 3
	type_blend_shape = 4
	type_method = 5
	type_bezier = 6
	type_audio = 7
	type_animation = 8
}

pub enum AnimationInterpolationType as i64 {
	interpolation_nearest = 0
	interpolation_linear = 1
	interpolation_cubic = 2
	interpolation_linear_angle = 3
	interpolation_cubic_angle = 4
}

pub enum AnimationUpdateMode as i64 {
	update_continuous = 0
	update_discrete = 1
	update_capture = 2
}

pub enum AnimationLoopMode as i64 {
	loop_none = 0
	loop_linear = 1
	loop_pingpong = 2
}

pub enum AnimationLoopedFlag as i64 {
	looped_flag_none = 0
	looped_flag_end = 1
	looped_flag_start = 2
}

pub enum AnimationFindMode as i64 {
	find_mode_nearest = 0
	find_mode_approx = 1
	find_mode_exact = 2
}

pub struct Animation {
	Resource
}

pub fn (s &Animation) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Animation) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct Animation_add_track_Cfg {
pub:
	at_position i64
}

pub fn (s &Animation) add_track(gd_type AnimationTrackType, cfg Animation_add_track_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("add_track")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3843682357)
	mut args := unsafe { [2]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&cfg.at_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) remove_track(track_idx i64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("remove_track")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) get_track_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("get_track_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) track_get_type(track_idx i64) AnimationTrackType {
	mut result := i64(AnimationTrackType.type_value)
	classname := StringName.new("Animation")
	fnname := StringName.new("track_get_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3445944217)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationTrackType(result)}
}

pub fn (s &Animation) track_get_path(track_idx i64) NodePath {
	mut result := NodePath{}
	classname := StringName.new("Animation")
	fnname := StringName.new("track_get_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) track_set_path(track_idx i64, path NodePath) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_set_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) find_track(path NodePath, gd_type AnimationTrackType) i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("find_track")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 245376003)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	i64_gd_type := i64(gd_type)
	args[1] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) track_move_up(track_idx i64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_move_up")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_move_down(track_idx i64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_move_down")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_move_to(track_idx i64, to_idx i64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_move_to")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&to_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_swap(track_idx i64, with_idx i64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_swap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&with_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_set_imported(track_idx i64, imported bool) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_set_imported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&imported)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_is_imported(track_idx i64) bool {
	mut result := false
	classname := StringName.new("Animation")
	fnname := StringName.new("track_is_imported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) track_set_enabled(track_idx i64, enabled bool) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_set_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_is_enabled(track_idx i64) bool {
	mut result := false
	classname := StringName.new("Animation")
	fnname := StringName.new("track_is_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) position_track_insert_key(track_idx i64, time f64, position Vector3) i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("position_track_insert_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2540608232)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time)}
	args[2] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) rotation_track_insert_key(track_idx i64, time f64, rotation Quaternion) i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("rotation_track_insert_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4165004800)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time)}
	args[2] = unsafe{voidptr(&rotation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) scale_track_insert_key(track_idx i64, time f64, scale Vector3) i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("scale_track_insert_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2540608232)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time)}
	args[2] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) blend_shape_track_insert_key(track_idx i64, time f64, amount f64) i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("blend_shape_track_insert_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1534913637)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time)}
	args[2] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Animation_position_track_interpolate_Cfg {
pub:
	backward bool
}

pub fn (s &Animation) position_track_interpolate(track_idx i64, time_sec f64, cfg Animation_position_track_interpolate_Cfg) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Animation")
	fnname := StringName.new("position_track_interpolate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3530011197)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time_sec)}
	args[2] = unsafe{voidptr(&cfg.backward)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Animation_rotation_track_interpolate_Cfg {
pub:
	backward bool
}

pub fn (s &Animation) rotation_track_interpolate(track_idx i64, time_sec f64, cfg Animation_rotation_track_interpolate_Cfg) Quaternion {
	mut result := Quaternion{}
	classname := StringName.new("Animation")
	fnname := StringName.new("rotation_track_interpolate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915876792)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time_sec)}
	args[2] = unsafe{voidptr(&cfg.backward)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Animation_scale_track_interpolate_Cfg {
pub:
	backward bool
}

pub fn (s &Animation) scale_track_interpolate(track_idx i64, time_sec f64, cfg Animation_scale_track_interpolate_Cfg) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Animation")
	fnname := StringName.new("scale_track_interpolate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3530011197)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time_sec)}
	args[2] = unsafe{voidptr(&cfg.backward)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Animation_blend_shape_track_interpolate_Cfg {
pub:
	backward bool
}

pub fn (s &Animation) blend_shape_track_interpolate(track_idx i64, time_sec f64, cfg Animation_blend_shape_track_interpolate_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("blend_shape_track_interpolate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2482365182)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time_sec)}
	args[2] = unsafe{voidptr(&cfg.backward)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Animation_track_insert_key_Cfg {
pub:
	transition f64
}

pub fn (s &Animation) track_insert_key(track_idx i64, time f64, key Variant, cfg Animation_track_insert_key_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("track_insert_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 808952278)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time)}
	args[2] = unsafe{voidptr(&key)}
	args[3] = unsafe{voidptr(&cfg.transition)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) track_remove_key(track_idx i64, key_idx i64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_remove_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_remove_key_at_time(track_idx i64, time f64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_remove_key_at_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_set_key_value(track_idx i64, key i64, value Variant) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_set_key_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2060538656)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_set_key_transition(track_idx i64, key_idx i64, transition f64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_set_key_transition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	args[2] = unsafe{voidptr(&transition)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_set_key_time(track_idx i64, key_idx i64, time f64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_set_key_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	args[2] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_get_key_transition(track_idx i64, key_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("track_get_key_transition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) track_get_key_count(track_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("track_get_key_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) track_get_key_value(track_idx i64, key_idx i64) Variant {
	mut result := Variant{}
	classname := StringName.new("Animation")
	fnname := StringName.new("track_get_key_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 678354945)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) track_get_key_time(track_idx i64, key_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("track_get_key_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Animation_track_find_key_Cfg {
pub:
	find_mode AnimationFindMode
	limit bool
	backward bool
}

pub fn (s &Animation) track_find_key(track_idx i64, time f64, cfg Animation_track_find_key_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("track_find_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4230953007)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time)}
	i64_find_mode := i64(cfg.find_mode)
	args[2] = unsafe{voidptr(&i64_find_mode)}
	args[3] = unsafe{voidptr(&cfg.limit)}
	args[4] = unsafe{voidptr(&cfg.backward)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) track_set_interpolation_type(track_idx i64, interpolation AnimationInterpolationType) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_set_interpolation_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4112932513)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	i64_interpolation := i64(interpolation)
	args[1] = unsafe{voidptr(&i64_interpolation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_get_interpolation_type(track_idx i64) AnimationInterpolationType {
	mut result := i64(AnimationInterpolationType.interpolation_nearest)
	classname := StringName.new("Animation")
	fnname := StringName.new("track_get_interpolation_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530756894)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationInterpolationType(result)}
}

pub fn (s &Animation) track_set_interpolation_loop_wrap(track_idx i64, interpolation bool) {
	classname := StringName.new("Animation")
	fnname := StringName.new("track_set_interpolation_loop_wrap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&interpolation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) track_get_interpolation_loop_wrap(track_idx i64) bool {
	mut result := false
	classname := StringName.new("Animation")
	fnname := StringName.new("track_get_interpolation_loop_wrap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) track_is_compressed(track_idx i64) bool {
	mut result := false
	classname := StringName.new("Animation")
	fnname := StringName.new("track_is_compressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) value_track_set_update_mode(track_idx i64, mode AnimationUpdateMode) {
	classname := StringName.new("Animation")
	fnname := StringName.new("value_track_set_update_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2854058312)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	i64_mode := i64(mode)
	args[1] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) value_track_get_update_mode(track_idx i64) AnimationUpdateMode {
	mut result := i64(AnimationUpdateMode.update_continuous)
	classname := StringName.new("Animation")
	fnname := StringName.new("value_track_get_update_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1440326473)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationUpdateMode(result)}
}

@[params]
pub struct Animation_value_track_interpolate_Cfg {
pub:
	backward bool
}

pub fn (s &Animation) value_track_interpolate(track_idx i64, time_sec f64, cfg Animation_value_track_interpolate_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("Animation")
	fnname := StringName.new("value_track_interpolate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 747269075)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time_sec)}
	args[2] = unsafe{voidptr(&cfg.backward)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) method_track_get_name(track_idx i64, key_idx i64) string {
	mut result := StringName{}
	classname := StringName.new("Animation")
	fnname := StringName.new("method_track_get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 351665558)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Animation) method_track_get_params(track_idx i64, key_idx i64) Array {
	mut result := Array{}
	classname := StringName.new("Animation")
	fnname := StringName.new("method_track_get_params")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2345056839)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Animation_bezier_track_insert_key_Cfg {
pub:
	in_handle Vector2
	out_handle Vector2
}

pub fn (s &Animation) bezier_track_insert_key(track_idx i64, time f64, value f64, cfg Animation_bezier_track_insert_key_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("bezier_track_insert_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3656773645)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time)}
	args[2] = unsafe{voidptr(&value)}
	args[3] = unsafe{voidptr(&cfg.in_handle)}
	args[4] = unsafe{voidptr(&cfg.out_handle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) bezier_track_set_key_value(track_idx i64, key_idx i64, value f64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("bezier_track_set_key_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Animation_bezier_track_set_key_in_handle_Cfg {
pub:
	balanced_value_time_ratio f64
}

pub fn (s &Animation) bezier_track_set_key_in_handle(track_idx i64, key_idx i64, in_handle Vector2, cfg Animation_bezier_track_set_key_in_handle_Cfg) {
	classname := StringName.new("Animation")
	fnname := StringName.new("bezier_track_set_key_in_handle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1719223284)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	args[2] = unsafe{voidptr(&in_handle)}
	args[3] = unsafe{voidptr(&cfg.balanced_value_time_ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Animation_bezier_track_set_key_out_handle_Cfg {
pub:
	balanced_value_time_ratio f64
}

pub fn (s &Animation) bezier_track_set_key_out_handle(track_idx i64, key_idx i64, out_handle Vector2, cfg Animation_bezier_track_set_key_out_handle_Cfg) {
	classname := StringName.new("Animation")
	fnname := StringName.new("bezier_track_set_key_out_handle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1719223284)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	args[2] = unsafe{voidptr(&out_handle)}
	args[3] = unsafe{voidptr(&cfg.balanced_value_time_ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) bezier_track_get_key_value(track_idx i64, key_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("bezier_track_get_key_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) bezier_track_get_key_in_handle(track_idx i64, key_idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Animation")
	fnname := StringName.new("bezier_track_get_key_in_handle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) bezier_track_get_key_out_handle(track_idx i64, key_idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Animation")
	fnname := StringName.new("bezier_track_get_key_out_handle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) bezier_track_interpolate(track_idx i64, time f64) f64 {
	mut result := f64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("bezier_track_interpolate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1900462983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Animation_audio_track_insert_key_Cfg {
pub:
	start_offset f64
	end_offset f64
}

pub fn (s &Animation) audio_track_insert_key(track_idx i64, time f64, stream Resource, cfg Animation_audio_track_insert_key_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("audio_track_insert_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4021027286)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time)}
	args[2] = voidptr(&stream.ptr)
	args[3] = unsafe{voidptr(&cfg.start_offset)}
	args[4] = unsafe{voidptr(&cfg.end_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) audio_track_set_key_stream(track_idx i64, key_idx i64, stream Resource) {
	classname := StringName.new("Animation")
	fnname := StringName.new("audio_track_set_key_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3886397084)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	args[2] = voidptr(&stream.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) audio_track_set_key_start_offset(track_idx i64, key_idx i64, offset f64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("audio_track_set_key_start_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	args[2] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) audio_track_set_key_end_offset(track_idx i64, key_idx i64, offset f64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("audio_track_set_key_end_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	args[2] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) audio_track_get_key_stream(track_idx i64, key_idx i64) Resource {
	mut result := Resource{}
	classname := StringName.new("Animation")
	fnname := StringName.new("audio_track_get_key_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 635277205)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) audio_track_get_key_start_offset(track_idx i64, key_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("audio_track_get_key_start_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) audio_track_get_key_end_offset(track_idx i64, key_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("audio_track_get_key_end_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) audio_track_set_use_blend(track_idx i64, enable bool) {
	classname := StringName.new("Animation")
	fnname := StringName.new("audio_track_set_use_blend")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) audio_track_is_use_blend(track_idx i64) bool {
	mut result := false
	classname := StringName.new("Animation")
	fnname := StringName.new("audio_track_is_use_blend")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) animation_track_insert_key(track_idx i64, time f64, animation string) i64 {
	mut result := i64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("animation_track_insert_key")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 158676774)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&time)}
	arg_sn2 := StringName.new(animation)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) animation_track_set_key_animation(track_idx i64, key_idx i64, animation string) {
	classname := StringName.new("Animation")
	fnname := StringName.new("animation_track_set_key_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 117615382)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	arg_sn2 := StringName.new(animation)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) animation_track_get_key_animation(track_idx i64, key_idx i64) string {
	mut result := StringName{}
	classname := StringName.new("Animation")
	fnname := StringName.new("animation_track_get_key_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 351665558)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = unsafe{voidptr(&key_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Animation) add_marker(name string, time f64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("add_marker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4135858297)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) remove_marker(name string) {
	classname := StringName.new("Animation")
	fnname := StringName.new("remove_marker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) has_marker(name string) bool {
	mut result := false
	classname := StringName.new("Animation")
	fnname := StringName.new("has_marker")
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

pub fn (s &Animation) get_marker_at_time(time f64) string {
	mut result := StringName{}
	classname := StringName.new("Animation")
	fnname := StringName.new("get_marker_at_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4079494655)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Animation) get_next_marker(time f64) string {
	mut result := StringName{}
	classname := StringName.new("Animation")
	fnname := StringName.new("get_next_marker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4079494655)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Animation) get_prev_marker(time f64) string {
	mut result := StringName{}
	classname := StringName.new("Animation")
	fnname := StringName.new("get_prev_marker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4079494655)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Animation) get_marker_time(name string) f64 {
	mut result := f64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("get_marker_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2349060816)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) get_marker_names() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("Animation")
	fnname := StringName.new("get_marker_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) get_marker_color(name string) Color {
	mut result := Color{}
	classname := StringName.new("Animation")
	fnname := StringName.new("get_marker_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3742943038)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) set_marker_color(name string, color Color) {
	classname := StringName.new("Animation")
	fnname := StringName.new("set_marker_color")
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

pub fn (s &Animation) set_length(time_sec f64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("set_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time_sec)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) get_length() f64 {
	mut result := f64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("get_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) set_loop_mode(loop_mode AnimationLoopMode) {
	classname := StringName.new("Animation")
	fnname := StringName.new("set_loop_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3155355575)
	mut args := unsafe { [1]voidptr{} }
	i64_loop_mode := i64(loop_mode)
	args[0] = unsafe{voidptr(&i64_loop_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) get_loop_mode() AnimationLoopMode {
	mut result := i64(AnimationLoopMode.loop_none)
	classname := StringName.new("Animation")
	fnname := StringName.new("get_loop_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1988889481)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationLoopMode(result)}
}

pub fn (s &Animation) set_step(size_sec f64) {
	classname := StringName.new("Animation")
	fnname := StringName.new("set_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size_sec)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) get_step() f64 {
	mut result := f64(0)
	classname := StringName.new("Animation")
	fnname := StringName.new("get_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Animation) clear() {
	classname := StringName.new("Animation")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) copy_track(track_idx i64, to_animation Animation) {
	classname := StringName.new("Animation")
	fnname := StringName.new("copy_track")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 148001024)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&track_idx)}
	args[1] = voidptr(&to_animation.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Animation_optimize_Cfg {
pub:
	allowed_velocity_err f64
	allowed_angular_err f64
	precision i64
}

pub fn (s &Animation) optimize(cfg Animation_optimize_Cfg) {
	classname := StringName.new("Animation")
	fnname := StringName.new("optimize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3303583852)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.allowed_velocity_err)}
	args[1] = unsafe{voidptr(&cfg.allowed_angular_err)}
	args[2] = unsafe{voidptr(&cfg.precision)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Animation_compress_Cfg {
pub:
	page_size i64
	fps i64
	split_tolerance f64
}

pub fn (s &Animation) compress(cfg Animation_compress_Cfg) {
	classname := StringName.new("Animation")
	fnname := StringName.new("compress")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3608408117)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.page_size)}
	args[1] = unsafe{voidptr(&cfg.fps)}
	args[2] = unsafe{voidptr(&cfg.split_tolerance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Animation) is_capture_included() bool {
	mut result := false
	classname := StringName.new("Animation")
	fnname := StringName.new("is_capture_included")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
