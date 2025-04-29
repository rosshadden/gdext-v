module gd

pub struct RDTextureView {
	RefCounted
}

pub fn (s &RDTextureView) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RDTextureView) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RDTextureView) set_format_override(p_member RenderingDeviceDataFormat) {
	classname := StringName.new("RDTextureView")
	fnname := StringName.new("set_format_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureView) get_format_override() RenderingDeviceDataFormat {
	mut result := i64(RenderingDeviceDataFormat.data_format_r4g4_unorm_pack8)
	classname := StringName.new("RDTextureView")
	fnname := StringName.new("get_format_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2235804183)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceDataFormat(result)}
}

pub fn (s &RDTextureView) set_swizzle_r(p_member RenderingDeviceTextureSwizzle) {
	classname := StringName.new("RDTextureView")
	fnname := StringName.new("set_swizzle_r")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3833362581)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureView) get_swizzle_r() RenderingDeviceTextureSwizzle {
	mut result := i64(RenderingDeviceTextureSwizzle.texture_swizzle_identity)
	classname := StringName.new("RDTextureView")
	fnname := StringName.new("get_swizzle_r")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150792614)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceTextureSwizzle(result)}
}

pub fn (s &RDTextureView) set_swizzle_g(p_member RenderingDeviceTextureSwizzle) {
	classname := StringName.new("RDTextureView")
	fnname := StringName.new("set_swizzle_g")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3833362581)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureView) get_swizzle_g() RenderingDeviceTextureSwizzle {
	mut result := i64(RenderingDeviceTextureSwizzle.texture_swizzle_identity)
	classname := StringName.new("RDTextureView")
	fnname := StringName.new("get_swizzle_g")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150792614)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceTextureSwizzle(result)}
}

pub fn (s &RDTextureView) set_swizzle_b(p_member RenderingDeviceTextureSwizzle) {
	classname := StringName.new("RDTextureView")
	fnname := StringName.new("set_swizzle_b")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3833362581)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureView) get_swizzle_b() RenderingDeviceTextureSwizzle {
	mut result := i64(RenderingDeviceTextureSwizzle.texture_swizzle_identity)
	classname := StringName.new("RDTextureView")
	fnname := StringName.new("get_swizzle_b")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150792614)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceTextureSwizzle(result)}
}

pub fn (s &RDTextureView) set_swizzle_a(p_member RenderingDeviceTextureSwizzle) {
	classname := StringName.new("RDTextureView")
	fnname := StringName.new("set_swizzle_a")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3833362581)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDTextureView) get_swizzle_a() RenderingDeviceTextureSwizzle {
	mut result := i64(RenderingDeviceTextureSwizzle.texture_swizzle_identity)
	classname := StringName.new("RDTextureView")
	fnname := StringName.new("get_swizzle_a")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150792614)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceTextureSwizzle(result)}
}
