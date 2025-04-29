module gd

pub struct AudioStreamPlaybackResampled {
	AudioStreamPlayback
}

pub fn (s &AudioStreamPlaybackResampled) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamPlaybackResampled) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IAudioStreamPlaybackResampledMixResampled {
mut:
	mix_resampled_(dst_buffer &AudioFrame, frame_count i64) i64
}

pub fn (s &AudioStreamPlaybackResampled) gd_mix_resampled(dst_buffer &AudioFrame, frame_count i64) i64 {
	mut result := i64(0)
	classname := StringName.new("AudioStreamPlaybackResampled")
	fnname := StringName.new("_mix_resampled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&dst_buffer)}
	args[1] = unsafe{voidptr(&frame_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAudioStreamPlaybackResampledGetStreamSamplingRate {
mut:
	get_stream_sampling_rate_() f64
}

pub fn (s &AudioStreamPlaybackResampled) gd_get_stream_sampling_rate() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamPlaybackResampled")
	fnname := StringName.new("_get_stream_sampling_rate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamPlaybackResampled) begin_resample() {
	classname := StringName.new("AudioStreamPlaybackResampled")
	fnname := StringName.new("begin_resample")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
