module gd

pub struct AudioEffectEQ {
	AudioEffect
}

pub fn (s &AudioEffectEQ) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffectEQ) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioEffectEQ) set_band_gain_db(band_idx i64, volume_db f64) {
	classname := StringName.new("AudioEffectEQ")
	fnname := StringName.new("set_band_gain_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&band_idx)}
	args[1] = unsafe{voidptr(&volume_db)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectEQ) get_band_gain_db(band_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectEQ")
	fnname := StringName.new("get_band_gain_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&band_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectEQ) get_band_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioEffectEQ")
	fnname := StringName.new("get_band_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
