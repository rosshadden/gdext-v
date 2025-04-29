module gd

pub struct AudioEffectLimiter {
	AudioEffect
}

pub fn (s &AudioEffectLimiter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffectLimiter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioEffectLimiter) set_ceiling_db(ceiling f64) {
	classname := StringName.new("AudioEffectLimiter")
	fnname := StringName.new("set_ceiling_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ceiling)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectLimiter) get_ceiling_db() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectLimiter")
	fnname := StringName.new("get_ceiling_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectLimiter) set_threshold_db(threshold f64) {
	classname := StringName.new("AudioEffectLimiter")
	fnname := StringName.new("set_threshold_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&threshold)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectLimiter) get_threshold_db() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectLimiter")
	fnname := StringName.new("get_threshold_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectLimiter) set_soft_clip_db(soft_clip f64) {
	classname := StringName.new("AudioEffectLimiter")
	fnname := StringName.new("set_soft_clip_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&soft_clip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectLimiter) get_soft_clip_db() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectLimiter")
	fnname := StringName.new("get_soft_clip_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectLimiter) set_soft_clip_ratio(soft_clip f64) {
	classname := StringName.new("AudioEffectLimiter")
	fnname := StringName.new("set_soft_clip_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&soft_clip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectLimiter) get_soft_clip_ratio() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectLimiter")
	fnname := StringName.new("get_soft_clip_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
