module gd

pub enum GDExtensionManagerLoadStatus as i64 {
	load_status_ok = 0
	load_status_failed = 1
	load_status_already_loaded = 2
	load_status_not_loaded = 3
	load_status_needs_restart = 4
}

pub struct GDExtensionManager {
	Object
}

pub fn GDExtensionManager.get_singleton() GDExtensionManager {
	sn := StringName.new("GDExtensionManager")
	result := GDExtensionManager{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &GDExtensionManager) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GDExtensionManager) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GDExtensionManager) load_extension(path string) GDExtensionManagerLoadStatus {
	mut result := i64(GDExtensionManagerLoadStatus.load_status_ok)
	classname := StringName.new("GDExtensionManager")
	fnname := StringName.new("load_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4024158731)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDExtensionManagerLoadStatus(result)}
}

pub fn (s &GDExtensionManager) reload_extension(path string) GDExtensionManagerLoadStatus {
	mut result := i64(GDExtensionManagerLoadStatus.load_status_ok)
	classname := StringName.new("GDExtensionManager")
	fnname := StringName.new("reload_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4024158731)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDExtensionManagerLoadStatus(result)}
}

pub fn (s &GDExtensionManager) unload_extension(path string) GDExtensionManagerLoadStatus {
	mut result := i64(GDExtensionManagerLoadStatus.load_status_ok)
	classname := StringName.new("GDExtensionManager")
	fnname := StringName.new("unload_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4024158731)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDExtensionManagerLoadStatus(result)}
}

pub fn (s &GDExtensionManager) is_extension_loaded(path string) bool {
	mut result := false
	classname := StringName.new("GDExtensionManager")
	fnname := StringName.new("is_extension_loaded")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GDExtensionManager) get_loaded_extensions() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("GDExtensionManager")
	fnname := StringName.new("get_loaded_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GDExtensionManager) get_extension(path string) GDExtension {
	mut result := GDExtension{}
	classname := StringName.new("GDExtensionManager")
	fnname := StringName.new("get_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 49743343)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
