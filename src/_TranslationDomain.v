module gd

pub struct TranslationDomain {
	RefCounted
}

pub fn (s &TranslationDomain) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TranslationDomain) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TranslationDomain) get_translation_object(locale string) Translation {
	mut result := Translation{}
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("get_translation_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 606768082)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(locale)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TranslationDomain) add_translation(translation Translation) {
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("add_translation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1466479800)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&translation.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TranslationDomain) remove_translation(translation Translation) {
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("remove_translation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1466479800)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&translation.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TranslationDomain) clear() {
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct TranslationDomain_translate_Cfg {
pub:
	context string
}

pub fn (s &TranslationDomain) translate(message string, cfg TranslationDomain_translate_Cfg) string {
	mut result := StringName{}
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("translate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1829228469)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(message)
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
pub struct TranslationDomain_translate_plural_Cfg {
pub:
	context string
}

pub fn (s &TranslationDomain) translate_plural(message string, message_plural string, n i64, cfg TranslationDomain_translate_plural_Cfg) string {
	mut result := StringName{}
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("translate_plural")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 229954002)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(message_plural)
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

pub fn (s &TranslationDomain) is_pseudolocalization_enabled() bool {
	mut result := false
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("is_pseudolocalization_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TranslationDomain) set_pseudolocalization_enabled(enabled bool) {
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("set_pseudolocalization_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TranslationDomain) is_pseudolocalization_accents_enabled() bool {
	mut result := false
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("is_pseudolocalization_accents_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TranslationDomain) set_pseudolocalization_accents_enabled(enabled bool) {
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("set_pseudolocalization_accents_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TranslationDomain) is_pseudolocalization_double_vowels_enabled() bool {
	mut result := false
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("is_pseudolocalization_double_vowels_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TranslationDomain) set_pseudolocalization_double_vowels_enabled(enabled bool) {
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("set_pseudolocalization_double_vowels_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TranslationDomain) is_pseudolocalization_fake_bidi_enabled() bool {
	mut result := false
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("is_pseudolocalization_fake_bidi_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TranslationDomain) set_pseudolocalization_fake_bidi_enabled(enabled bool) {
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("set_pseudolocalization_fake_bidi_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TranslationDomain) is_pseudolocalization_override_enabled() bool {
	mut result := false
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("is_pseudolocalization_override_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TranslationDomain) set_pseudolocalization_override_enabled(enabled bool) {
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("set_pseudolocalization_override_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TranslationDomain) is_pseudolocalization_skip_placeholders_enabled() bool {
	mut result := false
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("is_pseudolocalization_skip_placeholders_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TranslationDomain) set_pseudolocalization_skip_placeholders_enabled(enabled bool) {
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("set_pseudolocalization_skip_placeholders_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TranslationDomain) get_pseudolocalization_expansion_ratio() f64 {
	mut result := f64(0)
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("get_pseudolocalization_expansion_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TranslationDomain) set_pseudolocalization_expansion_ratio(ratio f64) {
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("set_pseudolocalization_expansion_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TranslationDomain) get_pseudolocalization_prefix() string {
	mut result := String{}
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("get_pseudolocalization_prefix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TranslationDomain) set_pseudolocalization_prefix(prefix string) {
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("set_pseudolocalization_prefix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(prefix)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TranslationDomain) get_pseudolocalization_suffix() string {
	mut result := String{}
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("get_pseudolocalization_suffix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TranslationDomain) set_pseudolocalization_suffix(suffix string) {
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("set_pseudolocalization_suffix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(suffix)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TranslationDomain) pseudolocalize(message string) string {
	mut result := StringName{}
	classname := StringName.new("TranslationDomain")
	fnname := StringName.new("pseudolocalize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
