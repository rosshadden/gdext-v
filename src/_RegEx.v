module gd

pub struct RegEx {
	RefCounted
}

pub fn (s &RegEx) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RegEx) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct RegEx_create_from_string_Cfg {
pub:
	show_error bool
}

pub fn RegEx.create_from_string(pattern string, cfg RegEx_create_from_string_Cfg) RegEx {
	mut result := RegEx{}
	classname := StringName.new("RegEx")
	fnname := StringName.new("create_from_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4249111514)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(pattern)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.show_error)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RegEx) clear() {
	classname := StringName.new("RegEx")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct RegEx_compile_Cfg {
pub:
	show_error bool
}

pub fn (s &RegEx) compile(pattern string, cfg RegEx_compile_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("RegEx")
	fnname := StringName.new("compile")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3565188097)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(pattern)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.show_error)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct RegEx_search_Cfg {
pub:
	offset i64
	end i64
}

pub fn (s &RegEx) search(subject string, cfg RegEx_search_Cfg) RegExMatch {
	mut result := RegExMatch{}
	classname := StringName.new("RegEx")
	fnname := StringName.new("search")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3365977994)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(subject)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.offset)}
	args[2] = unsafe{voidptr(&cfg.end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct RegEx_search_all_Cfg {
pub:
	offset i64
	end i64
}

pub fn (s &RegEx) search_all(subject string, cfg RegEx_search_all_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("RegEx")
	fnname := StringName.new("search_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 849021363)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(subject)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.offset)}
	args[2] = unsafe{voidptr(&cfg.end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct RegEx_sub_Cfg {
pub:
	all bool
	offset i64
	end i64
}

pub fn (s &RegEx) sub(subject string, replacement string, cfg RegEx_sub_Cfg) string {
	mut result := String{}
	classname := StringName.new("RegEx")
	fnname := StringName.new("sub")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 54019702)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := String.new(subject)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(replacement)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.all)}
	args[3] = unsafe{voidptr(&cfg.offset)}
	args[4] = unsafe{voidptr(&cfg.end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &RegEx) is_valid() bool {
	mut result := false
	classname := StringName.new("RegEx")
	fnname := StringName.new("is_valid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RegEx) get_pattern() string {
	mut result := String{}
	classname := StringName.new("RegEx")
	fnname := StringName.new("get_pattern")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &RegEx) get_group_count() i64 {
	mut result := i64(0)
	classname := StringName.new("RegEx")
	fnname := StringName.new("get_group_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RegEx) get_names() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("RegEx")
	fnname := StringName.new("get_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
