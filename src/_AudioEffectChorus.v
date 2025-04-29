module gd

pub struct AudioEffectChorus {
	AudioEffect
}

pub fn (s &AudioEffectChorus) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffectChorus) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioEffectChorus) set_voice_count(voices i64) {
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("set_voice_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&voices)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectChorus) get_voice_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("get_voice_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectChorus) set_voice_delay_ms(voice_idx i64, delay_ms f64) {
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("set_voice_delay_ms")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&voice_idx)}
	args[1] = unsafe{voidptr(&delay_ms)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectChorus) get_voice_delay_ms(voice_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("get_voice_delay_ms")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&voice_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectChorus) set_voice_rate_hz(voice_idx i64, rate_hz f64) {
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("set_voice_rate_hz")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&voice_idx)}
	args[1] = unsafe{voidptr(&rate_hz)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectChorus) get_voice_rate_hz(voice_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("get_voice_rate_hz")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&voice_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectChorus) set_voice_depth_ms(voice_idx i64, depth_ms f64) {
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("set_voice_depth_ms")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&voice_idx)}
	args[1] = unsafe{voidptr(&depth_ms)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectChorus) get_voice_depth_ms(voice_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("get_voice_depth_ms")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&voice_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectChorus) set_voice_level_db(voice_idx i64, level_db f64) {
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("set_voice_level_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&voice_idx)}
	args[1] = unsafe{voidptr(&level_db)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectChorus) get_voice_level_db(voice_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("get_voice_level_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&voice_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectChorus) set_voice_cutoff_hz(voice_idx i64, cutoff_hz f64) {
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("set_voice_cutoff_hz")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&voice_idx)}
	args[1] = unsafe{voidptr(&cutoff_hz)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectChorus) get_voice_cutoff_hz(voice_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("get_voice_cutoff_hz")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&voice_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectChorus) set_voice_pan(voice_idx i64, pan f64) {
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("set_voice_pan")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&voice_idx)}
	args[1] = unsafe{voidptr(&pan)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectChorus) get_voice_pan(voice_idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("get_voice_pan")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&voice_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectChorus) set_wet(amount f64) {
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("set_wet")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectChorus) get_wet() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("get_wet")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectChorus) set_dry(amount f64) {
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("set_dry")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectChorus) get_dry() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectChorus")
	fnname := StringName.new("get_dry")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
