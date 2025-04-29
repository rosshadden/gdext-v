module gd

pub struct JSON {
	Resource
}

pub fn (s &JSON) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s JSON) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct JSON_stringify_Cfg {
pub:
	indent string
	sort_keys bool
	full_precision bool
}

pub fn JSON.stringify(data Variant, cfg JSON_stringify_Cfg) string {
	mut result := String{}
	classname := StringName.new("JSON")
	fnname := StringName.new("stringify")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 462733549)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	arg_sn1 := String.new(cfg.indent)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.sort_keys)}
	args[3] = unsafe{voidptr(&cfg.full_precision)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn JSON.parse_string(json_string string) Variant {
	mut result := Variant{}
	classname := StringName.new("JSON")
	fnname := StringName.new("parse_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 309047738)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(json_string)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct JSON_parse_Cfg {
pub:
	keep_text bool
}

pub fn (s &JSON) parse(json_text string, cfg JSON_parse_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("JSON")
	fnname := StringName.new("parse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 885841341)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(json_text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.keep_text)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &JSON) get_data() Variant {
	mut result := Variant{}
	classname := StringName.new("JSON")
	fnname := StringName.new("get_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JSON) set_data(data Variant) {
	classname := StringName.new("JSON")
	fnname := StringName.new("set_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1114965689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &JSON) get_parsed_text() string {
	mut result := String{}
	classname := StringName.new("JSON")
	fnname := StringName.new("get_parsed_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &JSON) get_error_line() i64 {
	mut result := i64(0)
	classname := StringName.new("JSON")
	fnname := StringName.new("get_error_line")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JSON) get_error_message() string {
	mut result := String{}
	classname := StringName.new("JSON")
	fnname := StringName.new("get_error_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct JSON_from_native_Cfg {
pub:
	full_objects bool
}

pub fn JSON.from_native(variant Variant, cfg JSON_from_native_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("JSON")
	fnname := StringName.new("from_native")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2963479484)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&variant)}
	args[1] = unsafe{voidptr(&cfg.full_objects)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct JSON_to_native_Cfg {
pub:
	allow_objects bool
}

pub fn JSON.to_native(json Variant, cfg JSON_to_native_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("JSON")
	fnname := StringName.new("to_native")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2963479484)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&json)}
	args[1] = unsafe{voidptr(&cfg.allow_objects)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
