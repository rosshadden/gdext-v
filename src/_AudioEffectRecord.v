module gd

pub struct AudioEffectRecord {
	AudioEffect
}

pub fn (s &AudioEffectRecord) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffectRecord) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AudioEffectRecord) set_recording_active(record bool) {
	classname := StringName.new("AudioEffectRecord")
	fnname := StringName.new("set_recording_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&record)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectRecord) is_recording_active() bool {
	mut result := false
	classname := StringName.new("AudioEffectRecord")
	fnname := StringName.new("is_recording_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AudioEffectRecord) set_format(format AudioStreamWAVFormat) {
	classname := StringName.new("AudioEffectRecord")
	fnname := StringName.new("set_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 60648488)
	mut args := unsafe { [1]voidptr{} }
	i64_format := i64(format)
	args[0] = unsafe{voidptr(&i64_format)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AudioEffectRecord) get_format() AudioStreamWAVFormat {
	mut result := i64(AudioStreamWAVFormat.format_8_bits)
	classname := StringName.new("AudioEffectRecord")
	fnname := StringName.new("get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3151724922)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AudioStreamWAVFormat(result)}
}

pub fn (s &AudioEffectRecord) get_recording() AudioStreamWAV {
	mut result := AudioStreamWAV{}
	classname := StringName.new("AudioEffectRecord")
	fnname := StringName.new("get_recording")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2964110865)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
