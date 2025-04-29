module gd

pub struct RDAttachmentFormat {
	RefCounted
}

pub fn (s &RDAttachmentFormat) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RDAttachmentFormat) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RDAttachmentFormat) set_format(p_member RenderingDeviceDataFormat) {
	classname := StringName.new("RDAttachmentFormat")
	fnname := StringName.new("set_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDAttachmentFormat) get_format() RenderingDeviceDataFormat {
	mut result := i64(RenderingDeviceDataFormat.data_format_r4g4_unorm_pack8)
	classname := StringName.new("RDAttachmentFormat")
	fnname := StringName.new("get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2235804183)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceDataFormat(result)}
}

pub fn (s &RDAttachmentFormat) set_samples(p_member RenderingDeviceTextureSamples) {
	classname := StringName.new("RDAttachmentFormat")
	fnname := StringName.new("set_samples")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3774171498)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDAttachmentFormat) get_samples() RenderingDeviceTextureSamples {
	mut result := i64(RenderingDeviceTextureSamples.texture_samples_1)
	classname := StringName.new("RDAttachmentFormat")
	fnname := StringName.new("get_samples")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 407791724)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceTextureSamples(result)}
}

pub fn (s &RDAttachmentFormat) set_usage_flags(p_member i64) {
	classname := StringName.new("RDAttachmentFormat")
	fnname := StringName.new("set_usage_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDAttachmentFormat) get_usage_flags() i64 {
	mut result := i64(0)
	classname := StringName.new("RDAttachmentFormat")
	fnname := StringName.new("get_usage_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
