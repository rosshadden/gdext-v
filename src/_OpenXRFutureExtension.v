module gd

pub struct OpenXRFutureExtension {
	OpenXRExtensionWrapper
}

pub fn (s &OpenXRFutureExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRFutureExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRFutureExtension) is_active() bool {
	mut result := false
	classname := StringName.new("OpenXRFutureExtension")
	fnname := StringName.new("is_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct OpenXRFutureExtension_register_future_Cfg {
pub:
	on_success Callable
}

pub fn (s &OpenXRFutureExtension) register_future(future i64, cfg OpenXRFutureExtension_register_future_Cfg) OpenXRFutureResult {
	mut result := OpenXRFutureResult{}
	classname := StringName.new("OpenXRFutureExtension")
	fnname := StringName.new("register_future")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1038012256)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&future)}
	args[1] = unsafe{voidptr(&cfg.on_success)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRFutureExtension) cancel_future(future i64) {
	classname := StringName.new("OpenXRFutureExtension")
	fnname := StringName.new("cancel_future")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&future)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
