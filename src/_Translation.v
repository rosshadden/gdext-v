module gd

pub struct Translation {
	Resource
}

pub fn (s &Translation) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Translation) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ITranslationGetPluralMessage {
mut:
	get_plural_message_(src_message StringName, src_plural_message StringName, n i64, context StringName) StringName
}

pub fn (s &Translation) gd_get_plural_message(src_message string, src_plural_message string, n i64, context string) string {
	mut result := StringName{}
	classname := StringName.new("Translation")
	fnname := StringName.new("_get_plural_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1970324172)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(src_message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(src_plural_message)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&n)}
	arg_sn3 := StringName.new(context)
	args[3] = unsafe{voidptr(&arg_sn3)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface ITranslationGetMessage {
mut:
	get_message_(src_message StringName, context StringName) StringName
}

pub fn (s &Translation) gd_get_message(src_message string, context string) string {
	mut result := StringName{}
	classname := StringName.new("Translation")
	fnname := StringName.new("_get_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3639719779)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(src_message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(context)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Translation) set_locale(locale string) {
	classname := StringName.new("Translation")
	fnname := StringName.new("set_locale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(locale)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Translation) get_locale() string {
	mut result := String{}
	classname := StringName.new("Translation")
	fnname := StringName.new("get_locale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct Translation_add_message_Cfg {
pub:
	context string
}

pub fn (s &Translation) add_message(src_message string, xlated_message string, cfg Translation_add_message_Cfg) {
	classname := StringName.new("Translation")
	fnname := StringName.new("add_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3898530326)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(src_message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(xlated_message)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := StringName.new(cfg.context)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Translation_add_plural_message_Cfg {
pub:
	context string
}

pub fn (s &Translation) add_plural_message(src_message string, xlated_messages PackedStringArray, cfg Translation_add_plural_message_Cfg) {
	classname := StringName.new("Translation")
	fnname := StringName.new("add_plural_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2356982266)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(src_message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&xlated_messages)}
	arg_sn2 := StringName.new(cfg.context)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Translation_get_message_Cfg {
pub:
	context string
}

pub fn (s &Translation) get_message(src_message string, cfg Translation_get_message_Cfg) string {
	mut result := StringName{}
	classname := StringName.new("Translation")
	fnname := StringName.new("get_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1829228469)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(src_message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.context)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct Translation_get_plural_message_Cfg {
pub:
	context string
}

pub fn (s &Translation) get_plural_message(src_message string, src_plural_message string, n i64, cfg Translation_get_plural_message_Cfg) string {
	mut result := StringName{}
	classname := StringName.new("Translation")
	fnname := StringName.new("get_plural_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 229954002)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(src_message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(src_plural_message)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&n)}
	arg_sn3 := StringName.new(cfg.context)
	args[3] = unsafe{voidptr(&arg_sn3)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct Translation_erase_message_Cfg {
pub:
	context string
}

pub fn (s &Translation) erase_message(src_message string, cfg Translation_erase_message_Cfg) {
	classname := StringName.new("Translation")
	fnname := StringName.new("erase_message")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3959009644)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(src_message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.context)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Translation) get_message_list() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("Translation")
	fnname := StringName.new("get_message_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Translation) get_translated_message_list() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("Translation")
	fnname := StringName.new("get_translated_message_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Translation) get_message_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Translation")
	fnname := StringName.new("get_message_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
