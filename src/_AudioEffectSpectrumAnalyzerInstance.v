module gd

pub enum AudioEffectSpectrumAnalyzerInstanceMagnitudeMode as i64 {
	magnitude_average = 0
	magnitude_max = 1
}

pub struct AudioEffectSpectrumAnalyzerInstance {
	AudioEffectInstance
}

pub fn (s &AudioEffectSpectrumAnalyzerInstance) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffectSpectrumAnalyzerInstance) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct AudioEffectSpectrumAnalyzerInstance_get_magnitude_for_frequency_range_Cfg {
pub:
	mode AudioEffectSpectrumAnalyzerInstanceMagnitudeMode
}

pub fn (s &AudioEffectSpectrumAnalyzerInstance) get_magnitude_for_frequency_range(from_hz f64, to_hz f64, cfg AudioEffectSpectrumAnalyzerInstance_get_magnitude_for_frequency_range_Cfg) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("AudioEffectSpectrumAnalyzerInstance")
	fnname := StringName.new("get_magnitude_for_frequency_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 797993915)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&from_hz)}
	args[1] = unsafe{voidptr(&to_hz)}
	i64_mode := i64(cfg.mode)
	args[2] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
