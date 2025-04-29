module gd

pub struct AudioEffectStereoEnhance {
	AudioEffect
}

pub fn (s &AudioEffectStereoEnhance) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffectStereoEnhance) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioEffectStereoEnhance) set_pan_pullout(amount f64) {
	classname := StringName.new("AudioEffectStereoEnhance")
	fnname := StringName.new("set_pan_pullout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectStereoEnhance) get_pan_pullout() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectStereoEnhance")
	fnname := StringName.new("get_pan_pullout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectStereoEnhance) set_time_pullout(amount f64) {
	classname := StringName.new("AudioEffectStereoEnhance")
	fnname := StringName.new("set_time_pullout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectStereoEnhance) get_time_pullout() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectStereoEnhance")
	fnname := StringName.new("get_time_pullout")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectStereoEnhance) set_surround(amount f64) {
	classname := StringName.new("AudioEffectStereoEnhance")
	fnname := StringName.new("set_surround")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectStereoEnhance) get_surround() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectStereoEnhance")
	fnname := StringName.new("get_surround")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
