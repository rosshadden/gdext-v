module gd

pub struct CameraAttributes {
	Resource
}

pub fn (s &CameraAttributes) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CameraAttributes) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CameraAttributes) set_exposure_multiplier(multiplier f64) {
	classname := StringName.new("CameraAttributes")
	fnname := StringName.new("set_exposure_multiplier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&multiplier)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributes) get_exposure_multiplier() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributes")
	fnname := StringName.new("get_exposure_multiplier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributes) set_exposure_sensitivity(sensitivity f64) {
	classname := StringName.new("CameraAttributes")
	fnname := StringName.new("set_exposure_sensitivity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&sensitivity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributes) get_exposure_sensitivity() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributes")
	fnname := StringName.new("get_exposure_sensitivity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributes) set_auto_exposure_enabled(enabled bool) {
	classname := StringName.new("CameraAttributes")
	fnname := StringName.new("set_auto_exposure_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributes) is_auto_exposure_enabled() bool {
	mut result := false
	classname := StringName.new("CameraAttributes")
	fnname := StringName.new("is_auto_exposure_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributes) set_auto_exposure_speed(exposure_speed f64) {
	classname := StringName.new("CameraAttributes")
	fnname := StringName.new("set_auto_exposure_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exposure_speed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributes) get_auto_exposure_speed() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributes")
	fnname := StringName.new("get_auto_exposure_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributes) set_auto_exposure_scale(exposure_grey f64) {
	classname := StringName.new("CameraAttributes")
	fnname := StringName.new("set_auto_exposure_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exposure_grey)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributes) get_auto_exposure_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributes")
	fnname := StringName.new("get_auto_exposure_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
