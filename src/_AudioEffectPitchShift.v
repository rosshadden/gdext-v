module gd

pub enum AudioEffectPitchShiftFFTSize as i64 {
	fft_size_256 = 0
	fft_size_512 = 1
	fft_size_1024 = 2
	fft_size_2048 = 3
	fft_size_4096 = 4
	fft_size_max = 5
}

pub struct AudioEffectPitchShift {
	AudioEffect
}

pub fn (s &AudioEffectPitchShift) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffectPitchShift) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioEffectPitchShift) set_pitch_scale(rate f64) {
	classname := StringName.new("AudioEffectPitchShift")
	fnname := StringName.new("set_pitch_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectPitchShift) get_pitch_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectPitchShift")
	fnname := StringName.new("get_pitch_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectPitchShift) set_oversampling(amount i64) {
	classname := StringName.new("AudioEffectPitchShift")
	fnname := StringName.new("set_oversampling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectPitchShift) get_oversampling() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioEffectPitchShift")
	fnname := StringName.new("get_oversampling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectPitchShift) set_fft_size(size AudioEffectPitchShiftFFTSize) {
	classname := StringName.new("AudioEffectPitchShift")
	fnname := StringName.new("set_fft_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323518741)
	mut args := unsafe { [1]voidptr{} }
	i64_size := i64(size)
	args[0] = unsafe{voidptr(&i64_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectPitchShift) get_fft_size() AudioEffectPitchShiftFFTSize {
	mut result := i64(AudioEffectPitchShiftFFTSize.fft_size_256)
	classname := StringName.new("AudioEffectPitchShift")
	fnname := StringName.new("get_fft_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2361246789)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioEffectPitchShiftFFTSize(result)}
}
