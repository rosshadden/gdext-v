module gd

pub struct AnimatedSprite3D {
	SpriteBase3D
}

pub fn (s &AnimatedSprite3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimatedSprite3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AnimatedSprite3D) set_sprite_frames(sprite_frames SpriteFrames) {
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("set_sprite_frames")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 905781144)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&sprite_frames.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimatedSprite3D) get_sprite_frames() SpriteFrames {
	mut result := SpriteFrames{}
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("get_sprite_frames")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3804851214)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimatedSprite3D) set_animation(name string) {
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("set_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimatedSprite3D) get_animation() string {
	mut result := StringName{}
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("get_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimatedSprite3D) set_autoplay(name string) {
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("set_autoplay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimatedSprite3D) get_autoplay() string {
	mut result := String{}
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("get_autoplay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimatedSprite3D) is_playing() bool {
	mut result := false
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("is_playing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AnimatedSprite3D_play_Cfg {
pub:
	name string
	custom_speed f64
	from_end bool
}

pub fn (s &AnimatedSprite3D) play(cfg AnimatedSprite3D_play_Cfg) {
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("play")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3269405555)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(cfg.name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.custom_speed)}
	args[2] = unsafe{voidptr(&cfg.from_end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AnimatedSprite3D_play_backwards_Cfg {
pub:
	name string
}

pub fn (s &AnimatedSprite3D) play_backwards(cfg AnimatedSprite3D_play_backwards_Cfg) {
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("play_backwards")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3323268493)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(cfg.name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimatedSprite3D) pause() {
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("pause")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimatedSprite3D) stop() {
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimatedSprite3D) set_frame(frame i64) {
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("set_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&frame)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimatedSprite3D) get_frame() i64 {
	mut result := i64(0)
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("get_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimatedSprite3D) set_frame_progress(progress f64) {
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("set_frame_progress")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&progress)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimatedSprite3D) get_frame_progress() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("get_frame_progress")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimatedSprite3D) set_frame_and_progress(frame i64, progress f64) {
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("set_frame_and_progress")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&frame)}
	args[1] = unsafe{voidptr(&progress)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimatedSprite3D) set_speed_scale(speed_scale f64) {
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("set_speed_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&speed_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimatedSprite3D) get_speed_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("get_speed_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimatedSprite3D) get_playing_speed() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimatedSprite3D")
	fnname := StringName.new("get_playing_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
