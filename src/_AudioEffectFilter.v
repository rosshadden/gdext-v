module gd

pub enum AudioEffectFilterFilterDB as i64 {
	filter_6db = 0
	filter_12db = 1
	filter_18db = 2
	filter_24db = 3
}

pub struct AudioEffectFilter {
	AudioEffect
}

pub fn (s &AudioEffectFilter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffectFilter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioEffectFilter) set_cutoff(freq f64) {
	classname := StringName.new("AudioEffectFilter")
	fnname := StringName.new("set_cutoff")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&freq)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectFilter) get_cutoff() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectFilter")
	fnname := StringName.new("get_cutoff")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectFilter) set_resonance(amount f64) {
	classname := StringName.new("AudioEffectFilter")
	fnname := StringName.new("set_resonance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectFilter) get_resonance() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectFilter")
	fnname := StringName.new("get_resonance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectFilter) set_gain(amount f64) {
	classname := StringName.new("AudioEffectFilter")
	fnname := StringName.new("set_gain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectFilter) get_gain() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectFilter")
	fnname := StringName.new("get_gain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectFilter) set_db(amount AudioEffectFilterFilterDB) {
	classname := StringName.new("AudioEffectFilter")
	fnname := StringName.new("set_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 771740901)
	mut args := unsafe { [1]voidptr{} }
	i64_amount := i64(amount)
	args[0] = unsafe{voidptr(&i64_amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectFilter) get_db() AudioEffectFilterFilterDB {
	mut result := i64(AudioEffectFilterFilterDB.filter_6db)
	classname := StringName.new("AudioEffectFilter")
	fnname := StringName.new("get_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3981721890)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioEffectFilterFilterDB(result)}
}
