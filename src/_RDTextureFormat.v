module gd

pub struct RDTextureFormat {
	RefCounted
}

pub fn (s &RDTextureFormat) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RDTextureFormat) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RDTextureFormat) set_format(p_member RenderingDeviceDataFormat) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("set_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureFormat) get_format() RenderingDeviceDataFormat {
	mut result := i64(RenderingDeviceDataFormat.data_format_r4g4_unorm_pack8)
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2235804183)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceDataFormat(result)}
}

pub fn (s &RDTextureFormat) set_width(p_member i64) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("set_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureFormat) get_width() i64 {
	mut result := i64(0)
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("get_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDTextureFormat) set_height(p_member i64) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("set_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureFormat) get_height() i64 {
	mut result := i64(0)
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDTextureFormat) set_depth(p_member i64) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("set_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureFormat) get_depth() i64 {
	mut result := i64(0)
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("get_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDTextureFormat) set_array_layers(p_member i64) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("set_array_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureFormat) get_array_layers() i64 {
	mut result := i64(0)
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("get_array_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDTextureFormat) set_mipmaps(p_member i64) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("set_mipmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureFormat) get_mipmaps() i64 {
	mut result := i64(0)
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("get_mipmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDTextureFormat) set_texture_type(p_member RenderingDeviceTextureType) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("set_texture_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 652343381)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureFormat) get_texture_type() RenderingDeviceTextureType {
	mut result := i64(RenderingDeviceTextureType.texture_type_1d)
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("get_texture_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4036357416)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceTextureType(result)}
}

pub fn (s &RDTextureFormat) set_samples(p_member RenderingDeviceTextureSamples) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("set_samples")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3774171498)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureFormat) get_samples() RenderingDeviceTextureSamples {
	mut result := i64(RenderingDeviceTextureSamples.texture_samples_1)
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("get_samples")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 407791724)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceTextureSamples(result)}
}

pub fn (s &RDTextureFormat) set_usage_bits(p_member RenderingDeviceTextureUsageBits) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("set_usage_bits")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 245642367)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureFormat) get_usage_bits() RenderingDeviceTextureUsageBits {
	mut result := i64(RenderingDeviceTextureUsageBits.texture_usage_sampling_bit)
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("get_usage_bits")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1313398998)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceTextureUsageBits(result)}
}

pub fn (s &RDTextureFormat) set_is_resolve_buffer(p_member bool) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("set_is_resolve_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureFormat) get_is_resolve_buffer() bool {
	mut result := false
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("get_is_resolve_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDTextureFormat) set_is_discardable(p_member bool) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("set_is_discardable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureFormat) get_is_discardable() bool {
	mut result := false
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("get_is_discardable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDTextureFormat) add_shareable_format(format RenderingDeviceDataFormat) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("add_shareable_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
	mut args := unsafe { [1]voidptr{} }
	i64_format := i64(format)
	args[0] = unsafe{voidptr(&i64_format)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureFormat) remove_shareable_format(format RenderingDeviceDataFormat) {
	classname := StringName.new("RDTextureFormat")
	fnname := StringName.new("remove_shareable_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
	mut args := unsafe { [1]voidptr{} }
	i64_format := i64(format)
	args[0] = unsafe{voidptr(&i64_format)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
