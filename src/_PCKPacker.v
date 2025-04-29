module gd

pub struct PCKPacker {
	RefCounted
}

pub fn (s &PCKPacker) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PCKPacker) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct PCKPacker_pck_start_Cfg {
pub:
	alignment i64
	key string
	encrypt_directory bool
}

pub fn (s &PCKPacker) pck_start(pck_path string, cfg PCKPacker_pck_start_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PCKPacker")
	fnname := StringName.new("pck_start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 508410629)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(pck_path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.alignment)}
	arg_sn2 := String.new(cfg.key)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.encrypt_directory)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct PCKPacker_add_file_Cfg {
pub:
	encrypt bool
}

pub fn (s &PCKPacker) add_file(target_path string, source_path string, cfg PCKPacker_add_file_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PCKPacker")
	fnname := StringName.new("add_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2215643711)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(target_path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(source_path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.encrypt)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &PCKPacker) add_file_removal(target_path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PCKPacker")
	fnname := StringName.new("add_file_removal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(target_path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct PCKPacker_flush_Cfg {
pub:
	verbose bool
}

pub fn (s &PCKPacker) flush(cfg PCKPacker_flush_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("PCKPacker")
	fnname := StringName.new("flush")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1633102583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.verbose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}
