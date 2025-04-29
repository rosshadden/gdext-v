module gd

pub struct OpenXRHapticVibration {
	OpenXRHapticBase
}

pub fn (s &OpenXRHapticVibration) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRHapticVibration) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRHapticVibration) set_duration(duration i64) {
	classname := StringName.new("OpenXRHapticVibration")
	fnname := StringName.new("set_duration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&duration)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRHapticVibration) get_duration() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRHapticVibration")
	fnname := StringName.new("get_duration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRHapticVibration) set_frequency(frequency f64) {
	classname := StringName.new("OpenXRHapticVibration")
	fnname := StringName.new("set_frequency")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&frequency)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRHapticVibration) get_frequency() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRHapticVibration")
	fnname := StringName.new("get_frequency")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRHapticVibration) set_amplitude(amplitude f64) {
	classname := StringName.new("OpenXRHapticVibration")
	fnname := StringName.new("set_amplitude")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amplitude)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRHapticVibration) get_amplitude() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRHapticVibration")
	fnname := StringName.new("get_amplitude")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
