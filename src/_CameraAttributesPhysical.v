module gd

pub struct CameraAttributesPhysical {
	CameraAttributes
}

pub fn (s &CameraAttributesPhysical) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CameraAttributesPhysical) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CameraAttributesPhysical) set_aperture(aperture f64) {
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("set_aperture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&aperture)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPhysical) get_aperture() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("get_aperture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPhysical) set_shutter_speed(shutter_speed f64) {
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("set_shutter_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shutter_speed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPhysical) get_shutter_speed() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("get_shutter_speed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPhysical) set_focal_length(focal_length f64) {
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("set_focal_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&focal_length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPhysical) get_focal_length() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("get_focal_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPhysical) set_focus_distance(focus_distance f64) {
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("set_focus_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&focus_distance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPhysical) get_focus_distance() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("get_focus_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPhysical) set_near(near f64) {
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("set_near")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&near)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPhysical) get_near() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("get_near")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPhysical) set_far(far f64) {
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("set_far")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&far)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPhysical) get_far() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("get_far")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPhysical) get_fov() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("get_fov")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPhysical) set_auto_exposure_max_exposure_value(exposure_value_max f64) {
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("set_auto_exposure_max_exposure_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exposure_value_max)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPhysical) get_auto_exposure_max_exposure_value() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("get_auto_exposure_max_exposure_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPhysical) set_auto_exposure_min_exposure_value(exposure_value_min f64) {
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("set_auto_exposure_min_exposure_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exposure_value_min)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPhysical) get_auto_exposure_min_exposure_value() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPhysical")
	fnname := StringName.new("get_auto_exposure_min_exposure_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
