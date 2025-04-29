module gd

pub struct OpenXRAnalogThresholdModifier {
	OpenXRActionBindingModifier
}

pub fn (s &OpenXRAnalogThresholdModifier) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRAnalogThresholdModifier) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRAnalogThresholdModifier) set_on_threshold(on_threshold f64) {
	classname := StringName.new("OpenXRAnalogThresholdModifier")
	fnname := StringName.new("set_on_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&on_threshold)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAnalogThresholdModifier) get_on_threshold() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRAnalogThresholdModifier")
	fnname := StringName.new("get_on_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAnalogThresholdModifier) set_off_threshold(off_threshold f64) {
	classname := StringName.new("OpenXRAnalogThresholdModifier")
	fnname := StringName.new("set_off_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&off_threshold)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAnalogThresholdModifier) get_off_threshold() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRAnalogThresholdModifier")
	fnname := StringName.new("get_off_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAnalogThresholdModifier) set_on_haptic(haptic OpenXRHapticBase) {
	classname := StringName.new("OpenXRAnalogThresholdModifier")
	fnname := StringName.new("set_on_haptic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2998020150)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&haptic.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAnalogThresholdModifier) get_on_haptic() OpenXRHapticBase {
	mut result := OpenXRHapticBase{}
	classname := StringName.new("OpenXRAnalogThresholdModifier")
	fnname := StringName.new("get_on_haptic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 922310751)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRAnalogThresholdModifier) set_off_haptic(haptic OpenXRHapticBase) {
	classname := StringName.new("OpenXRAnalogThresholdModifier")
	fnname := StringName.new("set_off_haptic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2998020150)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&haptic.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRAnalogThresholdModifier) get_off_haptic() OpenXRHapticBase {
	mut result := OpenXRHapticBase{}
	classname := StringName.new("OpenXRAnalogThresholdModifier")
	fnname := StringName.new("get_off_haptic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 922310751)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
