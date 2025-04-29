module gd

pub struct VideoStreamPlayer {
	Control
}

pub fn (s &VideoStreamPlayer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VideoStreamPlayer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VideoStreamPlayer) set_stream(stream VideoStream) {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("set_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2317102564)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&stream.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) get_stream() VideoStream {
	mut result := VideoStream{}
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("get_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 438621487)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStreamPlayer) play() {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("play")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) stop() {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("stop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) is_playing() bool {
	mut result := false
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("is_playing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStreamPlayer) set_paused(paused bool) {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("set_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&paused)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) is_paused() bool {
	mut result := false
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("is_paused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStreamPlayer) set_loop(loop bool) {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("set_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&loop)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) has_loop() bool {
	mut result := false
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("has_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStreamPlayer) set_volume(volume f64) {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("set_volume")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&volume)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) get_volume() f64 {
	mut result := f64(0)
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("get_volume")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStreamPlayer) set_volume_db(db f64) {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("set_volume_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&db)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) get_volume_db() f64 {
	mut result := f64(0)
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("get_volume_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStreamPlayer) set_audio_track(track i64) {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("set_audio_track")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&track)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) get_audio_track() i64 {
	mut result := i64(0)
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("get_audio_track")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStreamPlayer) get_stream_name() string {
	mut result := String{}
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("get_stream_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &VideoStreamPlayer) get_stream_length() f64 {
	mut result := f64(0)
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("get_stream_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStreamPlayer) set_stream_position(position f64) {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("set_stream_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) get_stream_position() f64 {
	mut result := f64(0)
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("get_stream_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStreamPlayer) set_autoplay(enabled bool) {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("set_autoplay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) has_autoplay() bool {
	mut result := false
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("has_autoplay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStreamPlayer) set_expand(enable bool) {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("set_expand")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) has_expand() bool {
	mut result := false
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("has_expand")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStreamPlayer) set_buffering_msec(msec i64) {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("set_buffering_msec")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&msec)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) get_buffering_msec() i64 {
	mut result := i64(0)
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("get_buffering_msec")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStreamPlayer) set_bus(bus string) {
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("set_bus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(bus)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStreamPlayer) get_bus() string {
	mut result := StringName{}
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("get_bus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &VideoStreamPlayer) get_video_texture() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("VideoStreamPlayer")
	fnname := StringName.new("get_video_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
