module gd

pub struct OpenXRDpadBindingModifier {
	OpenXRIPBindingModifier
}

pub fn (s &OpenXRDpadBindingModifier) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRDpadBindingModifier) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRDpadBindingModifier) set_action_set(action_set OpenXRActionSet) {
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("set_action_set")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2093310581)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&action_set.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRDpadBindingModifier) get_action_set() OpenXRActionSet {
	mut result := OpenXRActionSet{}
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("get_action_set")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 619941079)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRDpadBindingModifier) set_input_path(input_path string) {
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("set_input_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(input_path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRDpadBindingModifier) get_input_path() string {
	mut result := String{}
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("get_input_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &OpenXRDpadBindingModifier) set_threshold(threshold f64) {
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("set_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&threshold)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRDpadBindingModifier) get_threshold() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("get_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRDpadBindingModifier) set_threshold_released(threshold_released f64) {
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("set_threshold_released")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&threshold_released)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRDpadBindingModifier) get_threshold_released() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("get_threshold_released")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRDpadBindingModifier) set_center_region(center_region f64) {
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("set_center_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&center_region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRDpadBindingModifier) get_center_region() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("get_center_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRDpadBindingModifier) set_wedge_angle(wedge_angle f64) {
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("set_wedge_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&wedge_angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRDpadBindingModifier) get_wedge_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("get_wedge_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRDpadBindingModifier) set_is_sticky(is_sticky bool) {
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("set_is_sticky")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&is_sticky)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRDpadBindingModifier) get_is_sticky() bool {
	mut result := false
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("get_is_sticky")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRDpadBindingModifier) set_on_haptic(haptic OpenXRHapticBase) {
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("set_on_haptic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2998020150)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&haptic.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRDpadBindingModifier) get_on_haptic() OpenXRHapticBase {
	mut result := OpenXRHapticBase{}
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("get_on_haptic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 922310751)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRDpadBindingModifier) set_off_haptic(haptic OpenXRHapticBase) {
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("set_off_haptic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2998020150)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&haptic.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRDpadBindingModifier) get_off_haptic() OpenXRHapticBase {
	mut result := OpenXRHapticBase{}
	classname := StringName.new("OpenXRDpadBindingModifier")
	fnname := StringName.new("get_off_haptic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 922310751)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
