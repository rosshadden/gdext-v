module gd

pub struct Expression {
	RefCounted
}

pub fn (s &Expression) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Expression) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct Expression_parse_Cfg {
pub:
	input_names PackedStringArray
}

pub fn (s &Expression) parse(expression string, cfg Expression_parse_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("Expression")
	fnname := StringName.new("parse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3069722906)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(expression)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.input_names)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct Expression_execute_Cfg {
pub:
	inputs Array
	base_instance Object
	show_error bool
	const_calls_only bool
}

pub fn (s &Expression) execute(cfg Expression_execute_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("Expression")
	fnname := StringName.new("execute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3712471238)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.inputs)}
	args[1] = voidptr(&cfg.base_instance.ptr)
	args[2] = unsafe{voidptr(&cfg.show_error)}
	args[3] = unsafe{voidptr(&cfg.const_calls_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Expression) has_execute_failed() bool {
	mut result := false
	classname := StringName.new("Expression")
	fnname := StringName.new("has_execute_failed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Expression) get_error_text() string {
	mut result := String{}
	classname := StringName.new("Expression")
	fnname := StringName.new("get_error_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
