module gd

pub enum ResourceLoaderThreadLoadStatus as i64 {
	thread_load_invalid_resource = 0
	thread_load_in_progress = 1
	thread_load_failed = 2
	thread_load_loaded = 3
}

pub enum ResourceLoaderCacheMode as i64 {
	cache_mode_ignore = 0
	cache_mode_reuse = 1
	cache_mode_replace = 2
	cache_mode_ignore_deep = 3
	cache_mode_replace_deep = 4
}

pub struct ResourceLoader {
	Object
}

pub fn ResourceLoader.get_singleton() ResourceLoader {
	sn := StringName.new("ResourceLoader")
	result := ResourceLoader{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &ResourceLoader) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ResourceLoader) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct ResourceLoader_load_threaded_request_Cfg {
pub:
	type_hint string
	use_sub_threads bool
	cache_mode ResourceLoaderCacheMode
}

pub fn (s &ResourceLoader) load_threaded_request(path string, cfg ResourceLoader_load_threaded_request_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("load_threaded_request")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614384323)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(cfg.type_hint)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.use_sub_threads)}
	i64_cache_mode := i64(cfg.cache_mode)
	args[3] = unsafe{voidptr(&i64_cache_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct ResourceLoader_load_threaded_get_status_Cfg {
pub:
	progress Array
}

pub fn (s &ResourceLoader) load_threaded_get_status(path string, cfg ResourceLoader_load_threaded_get_status_Cfg) ResourceLoaderThreadLoadStatus {
	mut result := i64(ResourceLoaderThreadLoadStatus.thread_load_invalid_resource)
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("load_threaded_get_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4137685479)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.progress)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{ResourceLoaderThreadLoadStatus(result)}
}

pub fn (s &ResourceLoader) load_threaded_get(path string) Resource {
	mut result := Resource{}
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("load_threaded_get")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1748875256)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ResourceLoader_load_Cfg {
pub:
	type_hint string
	cache_mode ResourceLoaderCacheMode
}

pub fn (s &ResourceLoader) load(path string, cfg ResourceLoader_load_Cfg) Resource {
	mut result := Resource{}
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("load")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3358495409)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(cfg.type_hint)
	args[1] = unsafe{voidptr(&arg_sn1)}
	i64_cache_mode := i64(cfg.cache_mode)
	args[2] = unsafe{voidptr(&i64_cache_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ResourceLoader) get_recognized_extensions_for_type(gd_type string) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("get_recognized_extensions_for_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ResourceLoader_add_resource_format_loader_Cfg {
pub:
	at_front bool
}

pub fn (s &ResourceLoader) add_resource_format_loader(format_loader ResourceFormatLoader, cfg ResourceLoader_add_resource_format_loader_Cfg) {
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("add_resource_format_loader")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2896595483)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&format_loader.ptr)
	args[1] = unsafe{voidptr(&cfg.at_front)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ResourceLoader) remove_resource_format_loader(format_loader ResourceFormatLoader) {
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("remove_resource_format_loader")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 405397102)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&format_loader.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ResourceLoader) set_abort_on_missing_resources(abort bool) {
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("set_abort_on_missing_resources")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&abort)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ResourceLoader) get_dependencies(path string) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("get_dependencies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ResourceLoader) has_cached(path string) bool {
	mut result := false
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("has_cached")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ResourceLoader) get_cached_ref(path string) Resource {
	mut result := Resource{}
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("get_cached_ref")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1748875256)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct ResourceLoader_exists_Cfg {
pub:
	type_hint string
}

pub fn (s &ResourceLoader) exists(path string, cfg ResourceLoader_exists_Cfg) bool {
	mut result := false
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("exists")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4185558881)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(cfg.type_hint)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ResourceLoader) get_resource_uid(path string) i64 {
	mut result := i64(0)
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("get_resource_uid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1597066294)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ResourceLoader) list_directory(directory_path string) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ResourceLoader")
	fnname := StringName.new("list_directory")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(directory_path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
