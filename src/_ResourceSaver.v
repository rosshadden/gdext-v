module gd

pub enum ResourceSaverSaverFlags as i64 {
	flag_none = 0
	flag_relative_paths = 1
	flag_bundle_resources = 2
	flag_change_path = 4
	flag_omit_editor_properties = 8
	flag_save_big_endian = 16
	flag_compress = 32
	flag_replace_subresource_paths = 64
}

pub struct ResourceSaver {
	Object
}

pub fn ResourceSaver.get_singleton() ResourceSaver {
	sn := StringName.new("ResourceSaver")
	result := ResourceSaver{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &ResourceSaver) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ResourceSaver) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct ResourceSaver_save_Cfg {
pub:
	path string
	flags ResourceSaverSaverFlags
}

pub fn (s &ResourceSaver) save(resource Resource, cfg ResourceSaver_save_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ResourceSaver")
	fnname := StringName.new("save")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2983274697)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&resource.ptr)
	arg_sn1 := String.new(cfg.path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	i64_flags := i64(cfg.flags)
	args[2] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ResourceSaver) get_recognized_extensions(gd_type Resource) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ResourceSaver")
	fnname := StringName.new("get_recognized_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4223597960)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gd_type.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ResourceSaver_add_resource_format_saver_Cfg {
pub:
	at_front bool
}

pub fn (s &ResourceSaver) add_resource_format_saver(format_saver ResourceFormatSaver, cfg ResourceSaver_add_resource_format_saver_Cfg) {
	classname := StringName.new("ResourceSaver")
	fnname := StringName.new("add_resource_format_saver")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 362894272)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&format_saver.ptr)
	args[1] = unsafe{voidptr(&cfg.at_front)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ResourceSaver) remove_resource_format_saver(format_saver ResourceFormatSaver) {
	classname := StringName.new("ResourceSaver")
	fnname := StringName.new("remove_resource_format_saver")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3373026878)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&format_saver.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct ResourceSaver_get_resource_id_for_path_Cfg {
pub:
	generate bool
}

pub fn (s &ResourceSaver) get_resource_id_for_path(path string, cfg ResourceSaver_get_resource_id_for_path_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("ResourceSaver")
	fnname := StringName.new("get_resource_id_for_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 150756522)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.generate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
