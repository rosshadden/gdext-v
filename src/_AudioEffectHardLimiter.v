module gd

pub struct AudioEffectHardLimiter {
	AudioEffect
}

pub fn (s &AudioEffectHardLimiter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffectHardLimiter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioEffectHardLimiter) set_ceiling_db(ceiling f64) {
	classname := StringName.new("AudioEffectHardLimiter")
	fnname := StringName.new("set_ceiling_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ceiling)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectHardLimiter) get_ceiling_db() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectHardLimiter")
	fnname := StringName.new("get_ceiling_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectHardLimiter) set_pre_gain_db(p_pre_gain f64) {
	classname := StringName.new("AudioEffectHardLimiter")
	fnname := StringName.new("set_pre_gain_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_pre_gain)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectHardLimiter) get_pre_gain_db() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectHardLimiter")
	fnname := StringName.new("get_pre_gain_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectHardLimiter) set_release(p_release f64) {
	classname := StringName.new("AudioEffectHardLimiter")
	fnname := StringName.new("set_release")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_release)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectHardLimiter) get_release() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectHardLimiter")
	fnname := StringName.new("get_release")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
