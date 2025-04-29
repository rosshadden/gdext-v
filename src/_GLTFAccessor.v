module gd

pub enum GLTFAccessorGLTFAccessorType as i64 {
	type_scalar = 0
	type_vec2 = 1
	type_vec3 = 2
	type_vec4 = 3
	type_mat2 = 4
	type_mat3 = 5
	type_mat4 = 6
}

pub enum GLTFAccessorGLTFComponentType as i64 {
	component_type_none = 0
	component_type_signed_byte = 5120
	component_type_unsigned_byte = 5121
	component_type_signed_short = 5122
	component_type_unsigned_short = 5123
	component_type_signed_int = 5124
	component_type_unsigned_int = 5125
	component_type_single_float = 5126
	component_type_double_float = 5130
	component_type_half_float = 5131
	component_type_signed_long = 5134
	component_type_unsigned_long = 5135
}

pub struct GLTFAccessor {
	Resource
}

pub fn (s &GLTFAccessor) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFAccessor) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GLTFAccessor) get_buffer_view() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_buffer_view")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_buffer_view(buffer_view i64) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_buffer_view")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer_view)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_byte_offset() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_byte_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_byte_offset(byte_offset i64) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_byte_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&byte_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_component_type() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_component_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_component_type(component_type i64) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_component_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&component_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_normalized() bool {
	mut result := false
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_normalized")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_normalized(normalized bool) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_normalized")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&normalized)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_count() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_count(count i64) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_accessor_type() GLTFAccessorGLTFAccessorType {
	mut result := i64(GLTFAccessorGLTFAccessorType.type_scalar)
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_accessor_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 679305214)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GLTFAccessorGLTFAccessorType(result)}
}

pub fn (s &GLTFAccessor) set_accessor_type(accessor_type GLTFAccessorGLTFAccessorType) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_accessor_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2347728198)
	mut args := unsafe { [1]voidptr{} }
	i64_accessor_type := i64(accessor_type)
	args[0] = unsafe{voidptr(&i64_accessor_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_type() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_type(gd_type i64) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_min() PackedFloat64Array {
	mut result := PackedFloat64Array{}
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_min")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 148677866)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_min(min PackedFloat64Array) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_min")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2576592201)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&min)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_max() PackedFloat64Array {
	mut result := PackedFloat64Array{}
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 148677866)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_max(max PackedFloat64Array) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2576592201)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_sparse_count() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_sparse_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_sparse_count(sparse_count i64) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_sparse_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&sparse_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_sparse_indices_buffer_view() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_sparse_indices_buffer_view")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_sparse_indices_buffer_view(sparse_indices_buffer_view i64) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_sparse_indices_buffer_view")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&sparse_indices_buffer_view)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_sparse_indices_byte_offset() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_sparse_indices_byte_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_sparse_indices_byte_offset(sparse_indices_byte_offset i64) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_sparse_indices_byte_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&sparse_indices_byte_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_sparse_indices_component_type() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_sparse_indices_component_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_sparse_indices_component_type(sparse_indices_component_type i64) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_sparse_indices_component_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&sparse_indices_component_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_sparse_values_buffer_view() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_sparse_values_buffer_view")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_sparse_values_buffer_view(sparse_values_buffer_view i64) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_sparse_values_buffer_view")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&sparse_values_buffer_view)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAccessor) get_sparse_values_byte_offset() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("get_sparse_values_byte_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAccessor) set_sparse_values_byte_offset(sparse_values_byte_offset i64) {
	classname := StringName.new("GLTFAccessor")
	fnname := StringName.new("set_sparse_values_byte_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&sparse_values_byte_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
