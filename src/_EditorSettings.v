module gd

pub struct EditorSettings {
	Resource
}

pub fn (s &EditorSettings) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorSettings) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &EditorSettings) has_setting(name string) bool {
	mut result := false
	classname := StringName.new("EditorSettings")
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

pub fn (s &EditorSettings) set_setting(name string, value Variant) {
	classname := StringName.new("EditorSettings")
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

pub fn (s &EditorSettings) get_setting(name string) Variant {
	mut result := Variant{}
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("get_setting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1868160156)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorSettings) erase(property string) {
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("erase")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorSettings) set_initial_value(name string, value Variant, update_current bool) {
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("set_initial_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1529169264)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	args[2] = unsafe{voidptr(&update_current)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorSettings) add_property_info(info Dictionary) {
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("add_property_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&info)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorSettings) set_project_metadata(section string, key string, data Variant) {
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("set_project_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2504492430)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(section)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(key)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorSettings_get_project_metadata_Cfg {
pub:
	default Variant
}

pub fn (s &EditorSettings) get_project_metadata(section string, key string, cfg EditorSettings_get_project_metadata_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("get_project_metadata")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 89809366)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(section)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(key)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.default)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorSettings) set_favorites(dirs PackedStringArray) {
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("set_favorites")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&dirs)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorSettings) get_favorites() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("get_favorites")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorSettings) set_recent_dirs(dirs PackedStringArray) {
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("set_recent_dirs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&dirs)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorSettings) get_recent_dirs() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("get_recent_dirs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorSettings) set_builtin_action_override(name string, actions_list Array) {
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("set_builtin_action_override")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1209351045)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&actions_list)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorSettings) check_changed_settings_in_group(setting_prefix string) bool {
	mut result := false
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("check_changed_settings_in_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(setting_prefix)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorSettings) get_changed_settings() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("get_changed_settings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorSettings) mark_setting_changed(setting string) {
	classname := StringName.new("EditorSettings")
	fnname := StringName.new("mark_setting_changed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(setting)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
