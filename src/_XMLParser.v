module gd

pub enum XMLParserNodeType as i64 {
	node_none = 0
	node_element = 1
	node_element_end = 2
	node_text = 3
	node_comment = 4
	node_cdata = 5
	node_unknown = 6
}

pub struct XMLParser {
	RefCounted
}

pub fn (s &XMLParser) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XMLParser) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XMLParser) read() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("XMLParser")
	fnname := StringName.new("read")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &XMLParser) get_node_type() XMLParserNodeType {
	mut result := i64(XMLParserNodeType.node_none)
	classname := StringName.new("XMLParser")
	fnname := StringName.new("get_node_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2984359541)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XMLParserNodeType(result)}
}

pub fn (s &XMLParser) get_node_name() string {
	mut result := String{}
	classname := StringName.new("XMLParser")
	fnname := StringName.new("get_node_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XMLParser) get_node_data() string {
	mut result := String{}
	classname := StringName.new("XMLParser")
	fnname := StringName.new("get_node_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XMLParser) get_node_offset() i64 {
	mut result := i64(0)
	classname := StringName.new("XMLParser")
	fnname := StringName.new("get_node_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XMLParser) get_attribute_count() i64 {
	mut result := i64(0)
	classname := StringName.new("XMLParser")
	fnname := StringName.new("get_attribute_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XMLParser) get_attribute_name(idx i64) string {
	mut result := String{}
	classname := StringName.new("XMLParser")
	fnname := StringName.new("get_attribute_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XMLParser) get_attribute_value(idx i64) string {
	mut result := String{}
	classname := StringName.new("XMLParser")
	fnname := StringName.new("get_attribute_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XMLParser) has_attribute(name string) bool {
	mut result := false
	classname := StringName.new("XMLParser")
	fnname := StringName.new("has_attribute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XMLParser) get_named_attribute_value(name string) string {
	mut result := String{}
	classname := StringName.new("XMLParser")
	fnname := StringName.new("get_named_attribute_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XMLParser) get_named_attribute_value_safe(name string) string {
	mut result := String{}
	classname := StringName.new("XMLParser")
	fnname := StringName.new("get_named_attribute_value_safe")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XMLParser) is_empty() bool {
	mut result := false
	classname := StringName.new("XMLParser")
	fnname := StringName.new("is_empty")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XMLParser) get_current_line() i64 {
	mut result := i64(0)
	classname := StringName.new("XMLParser")
	fnname := StringName.new("get_current_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XMLParser) skip_section() {
	classname := StringName.new("XMLParser")
	fnname := StringName.new("skip_section")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XMLParser) seek(position i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("XMLParser")
	fnname := StringName.new("seek")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &XMLParser) open(file string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("XMLParser")
	fnname := StringName.new("open")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &XMLParser) open_buffer(buffer PackedByteArray) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("XMLParser")
	fnname := StringName.new("open_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}
