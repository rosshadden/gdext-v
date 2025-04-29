module gd

pub struct CameraAttributesPractical {
	CameraAttributes
}

pub fn (s &CameraAttributesPractical) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CameraAttributesPractical) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CameraAttributesPractical) set_dof_blur_far_enabled(enabled bool) {
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("set_dof_blur_far_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPractical) is_dof_blur_far_enabled() bool {
	mut result := false
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("is_dof_blur_far_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPractical) set_dof_blur_far_distance(distance f64) {
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("set_dof_blur_far_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&distance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPractical) get_dof_blur_far_distance() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("get_dof_blur_far_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPractical) set_dof_blur_far_transition(distance f64) {
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("set_dof_blur_far_transition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&distance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPractical) get_dof_blur_far_transition() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("get_dof_blur_far_transition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPractical) set_dof_blur_near_enabled(enabled bool) {
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("set_dof_blur_near_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPractical) is_dof_blur_near_enabled() bool {
	mut result := false
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("is_dof_blur_near_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPractical) set_dof_blur_near_distance(distance f64) {
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("set_dof_blur_near_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&distance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPractical) get_dof_blur_near_distance() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("get_dof_blur_near_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPractical) set_dof_blur_near_transition(distance f64) {
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("set_dof_blur_near_transition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&distance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPractical) get_dof_blur_near_transition() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("get_dof_blur_near_transition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPractical) set_dof_blur_amount(amount f64) {
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("set_dof_blur_amount")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPractical) get_dof_blur_amount() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("get_dof_blur_amount")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPractical) set_auto_exposure_max_sensitivity(max_sensitivity f64) {
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("set_auto_exposure_max_sensitivity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_sensitivity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPractical) get_auto_exposure_max_sensitivity() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("get_auto_exposure_max_sensitivity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraAttributesPractical) set_auto_exposure_min_sensitivity(min_sensitivity f64) {
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("set_auto_exposure_min_sensitivity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&min_sensitivity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraAttributesPractical) get_auto_exposure_min_sensitivity() f64 {
	mut result := f64(0)
	classname := StringName.new("CameraAttributesPractical")
	fnname := StringName.new("get_auto_exposure_min_sensitivity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
