module gd

pub struct AudioEffectAmplify {
	AudioEffect
}

pub fn (s &AudioEffectAmplify) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffectAmplify) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioEffectAmplify) set_volume_db(volume f64) {
	classname := StringName.new("AudioEffectAmplify")
	fnname := StringName.new("set_volume_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&volume)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectAmplify) get_volume_db() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectAmplify")
	fnname := StringName.new("get_volume_db")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectAmplify) set_volume_linear(volume f64) {
	classname := StringName.new("AudioEffectAmplify")
	fnname := StringName.new("set_volume_linear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&volume)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectAmplify) get_volume_linear() f64 {
	mut result := f64(0)
	classname := StringName.new("AudioEffectAmplify")
	fnname := StringName.new("get_volume_linear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
