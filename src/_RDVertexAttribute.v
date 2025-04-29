module gd

pub struct RDVertexAttribute {
	RefCounted
}

pub fn (s &RDVertexAttribute) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RDVertexAttribute) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RDVertexAttribute) set_location(p_member i64) {
	classname := StringName.new("RDVertexAttribute")
	fnname := StringName.new("set_location")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDVertexAttribute) get_location() i64 {
	mut result := i64(0)
	classname := StringName.new("RDVertexAttribute")
	fnname := StringName.new("get_location")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDVertexAttribute) set_offset(p_member i64) {
	classname := StringName.new("RDVertexAttribute")
	fnname := StringName.new("set_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDVertexAttribute) get_offset() i64 {
	mut result := i64(0)
	classname := StringName.new("RDVertexAttribute")
	fnname := StringName.new("get_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDVertexAttribute) set_format(p_member RenderingDeviceDataFormat) {
	classname := StringName.new("RDVertexAttribute")
	fnname := StringName.new("set_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDVertexAttribute) get_format() RenderingDeviceDataFormat {
	mut result := i64(RenderingDeviceDataFormat.data_format_r4g4_unorm_pack8)
	classname := StringName.new("RDVertexAttribute")
	fnname := StringName.new("get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2235804183)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceDataFormat(result)}
}

pub fn (s &RDVertexAttribute) set_stride(p_member i64) {
	classname := StringName.new("RDVertexAttribute")
	fnname := StringName.new("set_stride")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDVertexAttribute) get_stride() i64 {
	mut result := i64(0)
	classname := StringName.new("RDVertexAttribute")
	fnname := StringName.new("get_stride")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDVertexAttribute) set_frequency(p_member RenderingDeviceVertexFrequency) {
	classname := StringName.new("RDVertexAttribute")
	fnname := StringName.new("set_frequency")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 522141836)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDVertexAttribute) get_frequency() RenderingDeviceVertexFrequency {
	mut result := i64(RenderingDeviceVertexFrequency.vertex_frequency_vertex)
	classname := StringName.new("RDVertexAttribute")
	fnname := StringName.new("get_frequency")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4154106413)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceVertexFrequency(result)}
}
