module gd

pub struct AudioEffectInstance {
	RefCounted
}

pub fn (s &AudioEffectInstance) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AudioEffectInstance) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IAudioEffectInstanceProcess {
mut:
	process_(src_buffer voidptr, dst_buffer &AudioFrame, frame_count i64)
}

pub fn (s &AudioEffectInstance) gd_process(src_buffer voidptr, dst_buffer &AudioFrame, frame_count i64) {
	classname := StringName.new("AudioEffectInstance")
	fnname := StringName.new("_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1649997291)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&src_buffer)}
	args[1] = unsafe{voidptr(&dst_buffer)}
	args[2] = unsafe{voidptr(&frame_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IAudioEffectInstanceProcessSilence {
mut:
	process_silence_() bool
}

pub fn (s &AudioEffectInstance) gd_process_silence() bool {
	mut result := false
	classname := StringName.new("AudioEffectInstance")
	fnname := StringName.new("_process_silence")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
