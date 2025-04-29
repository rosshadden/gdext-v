module gd

pub struct GLTFBufferView {
	Resource
}

pub fn (s &GLTFBufferView) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFBufferView) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GLTFBufferView) load_buffer_view_data(state GLTFState) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("load_buffer_view_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3945446907)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&state.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFBufferView) get_buffer() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("get_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFBufferView) set_buffer(buffer i64) {
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("set_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFBufferView) get_byte_offset() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("get_byte_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFBufferView) set_byte_offset(byte_offset i64) {
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("set_byte_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&byte_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFBufferView) get_byte_length() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("get_byte_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFBufferView) set_byte_length(byte_length i64) {
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("set_byte_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&byte_length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFBufferView) get_byte_stride() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("get_byte_stride")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFBufferView) set_byte_stride(byte_stride i64) {
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("set_byte_stride")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&byte_stride)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFBufferView) get_indices() bool {
	mut result := false
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("get_indices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFBufferView) set_indices(indices bool) {
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("set_indices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&indices)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFBufferView) get_vertex_attributes() bool {
	mut result := false
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("get_vertex_attributes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFBufferView) set_vertex_attributes(is_attributes bool) {
	classname := StringName.new("GLTFBufferView")
	fnname := StringName.new("set_vertex_attributes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&is_attributes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
