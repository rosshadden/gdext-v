module gd

pub struct RegExMatch {
	RefCounted
}

pub fn (s &RegExMatch) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RegExMatch) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RegExMatch) get_subject() string {
	mut result := String{}
	classname := StringName.new("RegExMatch")
	fnname := StringName.new("get_subject")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &RegExMatch) get_group_count() i64 {
	mut result := i64(0)
	classname := StringName.new("RegExMatch")
	fnname := StringName.new("get_group_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RegExMatch) get_names() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("RegExMatch")
	fnname := StringName.new("get_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RegExMatch) get_strings() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("RegExMatch")
	fnname := StringName.new("get_strings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct RegExMatch_get_string_Cfg {
pub:
	name Variant
}

pub fn (s &RegExMatch) get_string(cfg RegExMatch_get_string_Cfg) string {
	mut result := String{}
	classname := StringName.new("RegExMatch")
	fnname := StringName.new("get_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 687115856)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.name)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct RegExMatch_get_start_Cfg {
pub:
	name Variant
}

pub fn (s &RegExMatch) get_start(cfg RegExMatch_get_start_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("RegExMatch")
	fnname := StringName.new("get_start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 490464691)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.name)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct RegExMatch_get_end_Cfg {
pub:
	name Variant
}

pub fn (s &RegExMatch) get_end(cfg RegExMatch_get_end_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("RegExMatch")
	fnname := StringName.new("get_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 490464691)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.name)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
