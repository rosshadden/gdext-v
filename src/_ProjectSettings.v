module gd

pub struct ProjectSettings {
	Object
}

pub fn ProjectSettings.get_singleton() ProjectSettings {
	sn := StringName.new("ProjectSettings")
	result := ProjectSettings{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &ProjectSettings) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ProjectSettings) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ProjectSettings) has_setting(name string) bool {
	mut result := false
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("has_setting")
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

pub fn (s &ProjectSettings) set_setting(name string, value Variant) {
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("set_setting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct ProjectSettings_get_setting_Cfg {
pub:
	default_value Variant
}

pub fn (s &ProjectSettings) get_setting(name string, cfg ProjectSettings_get_setting_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("get_setting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 223050753)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.default_value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProjectSettings) get_setting_with_override(name string) Variant {
	mut result := Variant{}
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("get_setting_with_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProjectSettings) get_global_class_list() Array {
	mut result := Array{}
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("get_global_class_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProjectSettings) get_setting_with_override_and_custom_features(name string, features PackedStringArray) Variant {
	mut result := Variant{}
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("get_setting_with_override_and_custom_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2434817427)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&features)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProjectSettings) set_order(name string, position i64) {
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("set_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProjectSettings) get_order(name string) i64 {
	mut result := i64(0)
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("get_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProjectSettings) set_initial_value(name string, value Variant) {
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("set_initial_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProjectSettings) set_as_basic(name string, basic bool) {
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("set_as_basic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&basic)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProjectSettings) set_as_internal(name string, internal bool) {
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("set_as_internal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&internal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProjectSettings) add_property_info(hint Dictionary) {
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("add_property_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&hint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProjectSettings) set_restart_if_changed(name string, restart bool) {
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("set_restart_if_changed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&restart)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProjectSettings) clear(name string) {
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProjectSettings) localize_path(path string) string {
	mut result := String{}
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("localize_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ProjectSettings) globalize_path(path string) string {
	mut result := String{}
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("globalize_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ProjectSettings) save() GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("save")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct ProjectSettings_load_resource_pack_Cfg {
pub:
	replace_files bool
	offset i64
}

pub fn (s &ProjectSettings) load_resource_pack(pack string, cfg ProjectSettings_load_resource_pack_Cfg) bool {
	mut result := false
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("load_resource_pack")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 708980503)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(pack)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.replace_files)}
	args[2] = unsafe{voidptr(&cfg.offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProjectSettings) save_custom(file string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ProjectSettings")
	fnname := StringName.new("save_custom")
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
