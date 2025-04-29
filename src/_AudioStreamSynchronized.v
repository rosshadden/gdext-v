module gd

pub struct AudioStreamSynchronized {
	AudioStream
}

pub fn (s &AudioStreamSynchronized) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamSynchronized) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioStreamSynchronized) set_stream_count(stream_count i64) {
	classname := StringName.new("AudioStreamSynchronized")
	fnname := StringName.new("set_stream_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stream_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamSynchronized) get_stream_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamSynchronized")
	fnname := StringName.new("get_stream_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamSynchronized) set_sync_stream(stream_index i64, audio_stream AudioStream) {
	classname := StringName.new("AudioStreamSynchronized")
	fnname := StringName.new("set_sync_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 111075094)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&stream_index)}
	args[1] = voidptr(&audio_stream.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamSynchronized) get_sync_stream(stream_index i64) AudioStream {
	mut result := AudioStream{}
	classname := StringName.new("AudioStreamSynchronized")
	fnname := StringName.new("get_sync_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2739380747)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stream_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamSynchronized) set_sync_stream_volume(stream_index i64, volume_db f64) {
	classname := StringName.new("AudioStreamSynchronized")
	fnname := StringName.new("set_sync_stream_volume")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&stream_index)}
	args[1] = unsafe{voidptr(&volume_db)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamSynchronized) get_sync_stream_volume(stream_index i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamSynchronized")
	fnname := StringName.new("get_sync_stream_volume")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stream_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
