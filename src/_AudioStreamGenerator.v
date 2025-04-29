module gd

pub enum AudioStreamGeneratorAudioStreamGeneratorMixRate as i64 {
	mix_rate_output = 0
	mix_rate_input = 1
	mix_rate_custom = 2
	mix_rate_max = 3
}

pub struct AudioStreamGenerator {
	AudioStream
}

pub fn (s &AudioStreamGenerator) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioStreamGenerator) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioStreamGenerator) set_mix_rate(hz f64) {
	classname := StringName.new("AudioStreamGenerator")
	fnname := StringName.new("set_mix_rate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&hz)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamGenerator) get_mix_rate() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamGenerator")
	fnname := StringName.new("get_mix_rate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioStreamGenerator) set_mix_rate_mode(mode AudioStreamGeneratorAudioStreamGeneratorMixRate) {
	classname := StringName.new("AudioStreamGenerator")
	fnname := StringName.new("set_mix_rate_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3354885803)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamGenerator) get_mix_rate_mode() AudioStreamGeneratorAudioStreamGeneratorMixRate {
	mut result := i64(AudioStreamGeneratorAudioStreamGeneratorMixRate.mix_rate_output)
	classname := StringName.new("AudioStreamGenerator")
	fnname := StringName.new("get_mix_rate_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3537132591)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioStreamGeneratorAudioStreamGeneratorMixRate(result)}
}

pub fn (s &AudioStreamGenerator) set_buffer_length(seconds f64) {
	classname := StringName.new("AudioStreamGenerator")
	fnname := StringName.new("set_buffer_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&seconds)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioStreamGenerator) get_buffer_length() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioStreamGenerator")
	fnname := StringName.new("get_buffer_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
