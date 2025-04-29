module gd

pub struct CanvasGroup {
	Node2D
}

pub fn (s &CanvasGroup) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CanvasGroup) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CanvasGroup) set_fit_margin(fit_margin f64) {
	classname := StringName.new("CanvasGroup")
	fnname := StringName.new("set_fit_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&fit_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasGroup) get_fit_margin() f64 {
	mut result := f64(0)
	classname := StringName.new("CanvasGroup")
	fnname := StringName.new("get_fit_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CanvasGroup) set_clear_margin(clear_margin f64) {
	classname := StringName.new("CanvasGroup")
	fnname := StringName.new("set_clear_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&clear_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasGroup) get_clear_margin() f64 {
	mut result := f64(0)
	classname := StringName.new("CanvasGroup")
	fnname := StringName.new("get_clear_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CanvasGroup) set_use_mipmaps(use_mipmaps bool) {
	classname := StringName.new("CanvasGroup")
	fnname := StringName.new("set_use_mipmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_mipmaps)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasGroup) is_using_mipmaps() bool {
	mut result := false
	classname := StringName.new("CanvasGroup")
	fnname := StringName.new("is_using_mipmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
