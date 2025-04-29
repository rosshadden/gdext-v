module gd

pub struct Marshalls {
	Object
}

pub fn Marshalls.get_singleton() Marshalls {
	sn := StringName.new("Marshalls")
	result := Marshalls{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &Marshalls) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Marshalls) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct Marshalls_variant_to_base64_Cfg {
pub:
	full_objects bool
}

pub fn (s &Marshalls) variant_to_base64(variant Variant, cfg Marshalls_variant_to_base64_Cfg) string {
	mut result := String{}
	classname := StringName.new("Marshalls")
	fnname := StringName.new("variant_to_base64")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3876248563)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&variant)}
	args[1] = unsafe{voidptr(&cfg.full_objects)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct Marshalls_base64_to_variant_Cfg {
pub:
	allow_objects bool
}

pub fn (s &Marshalls) base64_to_variant(base64_str string, cfg Marshalls_base64_to_variant_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("Marshalls")
	fnname := StringName.new("base64_to_variant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 218087648)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(base64_str)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.allow_objects)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Marshalls) raw_to_base64(array PackedByteArray) string {
	mut result := String{}
	classname := StringName.new("Marshalls")
	fnname := StringName.new("raw_to_base64")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3999417757)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&array)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Marshalls) base64_to_raw(base64_str string) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("Marshalls")
	fnname := StringName.new("base64_to_raw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659035735)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(base64_str)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Marshalls) utf8_to_base64(utf8_str string) string {
	mut result := String{}
	classname := StringName.new("Marshalls")
	fnname := StringName.new("utf8_to_base64")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(utf8_str)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Marshalls) base64_to_utf8(base64_str string) string {
	mut result := String{}
	classname := StringName.new("Marshalls")
	fnname := StringName.new("base64_to_utf8")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(base64_str)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
