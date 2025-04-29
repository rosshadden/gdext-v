module gd

pub struct AudioStream {
	Resource
}

pub fn (s &AudioStream) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStream) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IAudioStreamInstantiatePlayback {
mut:
	instantiate_playback_() AudioStreamPlayback
}

pub fn (s &AudioStream) gd_instantiate_playback() AudioStreamPlayback {
	mut result := AudioStreamPlayback{}
	classname := StringName.new("AudioStream")
	fnname := StringName.new("_instantiate_playback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093715447)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAudioStreamGetStreamName {
mut:
	get_stream_name_() String
}

pub fn (s &AudioStream) gd_get_stream_name() string {
	mut result := String{}
	classname := StringName.new("AudioStream")
	fnname := StringName.new("_get_stream_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IAudioStreamGetLength {
mut:
	get_length_() f64
}

pub fn (s &AudioStream) gd_get_length() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStream")
	fnname := StringName.new("_get_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAudioStreamIsMonophonic {
mut:
	is_monophonic_() bool
}

pub fn (s &AudioStream) gd_is_monophonic() bool {
	mut result := false
	classname := StringName.new("AudioStream")
	fnname := StringName.new("_is_monophonic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAudioStreamGetBpm {
mut:
	get_bpm_() f64
}

pub fn (s &AudioStream) gd_get_bpm() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStream")
	fnname := StringName.new("_get_bpm")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAudioStreamGetBeatCount {
mut:
	get_beat_count_() i64
}

pub fn (s &AudioStream) gd_get_beat_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStream")
	fnname := StringName.new("_get_beat_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAudioStreamGetParameterList {
mut:
	get_parameter_list_() Array
}

pub fn (s &AudioStream) gd_get_parameter_list() Array {
	mut result := Array{}
	classname := StringName.new("AudioStream")
	fnname := StringName.new("_get_parameter_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAudioStreamHasLoop {
mut:
	has_loop_() bool
}

pub fn (s &AudioStream) gd_has_loop() bool {
	mut result := false
	classname := StringName.new("AudioStream")
	fnname := StringName.new("_has_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAudioStreamGetBarBeats {
mut:
	get_bar_beats_() i64
}

pub fn (s &AudioStream) gd_get_bar_beats() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStream")
	fnname := StringName.new("_get_bar_beats")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStream) get_length() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStream")
	fnname := StringName.new("get_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStream) is_monophonic() bool {
	mut result := false
	classname := StringName.new("AudioStream")
	fnname := StringName.new("is_monophonic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStream) instantiate_playback() AudioStreamPlayback {
	mut result := AudioStreamPlayback{}
	classname := StringName.new("AudioStream")
	fnname := StringName.new("instantiate_playback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 210135309)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStream) can_be_sampled() bool {
	mut result := false
	classname := StringName.new("AudioStream")
	fnname := StringName.new("can_be_sampled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStream) generate_sample() AudioSample {
	mut result := AudioSample{}
	classname := StringName.new("AudioStream")
	fnname := StringName.new("generate_sample")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2646048999)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStream) is_meta_stream() bool {
	mut result := false
	classname := StringName.new("AudioStream")
	fnname := StringName.new("is_meta_stream")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
