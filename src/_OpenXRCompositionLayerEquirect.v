module gd

pub struct OpenXRCompositionLayerEquirect {
	OpenXRCompositionLayer
}

pub fn (s &OpenXRCompositionLayerEquirect) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRCompositionLayerEquirect) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRCompositionLayerEquirect) set_radius(radius f64) {
	classname := StringName.new("OpenXRCompositionLayerEquirect")
	fnname := StringName.new("set_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayerEquirect) get_radius() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRCompositionLayerEquirect")
	fnname := StringName.new("get_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayerEquirect) set_central_horizontal_angle(angle f64) {
	classname := StringName.new("OpenXRCompositionLayerEquirect")
	fnname := StringName.new("set_central_horizontal_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayerEquirect) get_central_horizontal_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRCompositionLayerEquirect")
	fnname := StringName.new("get_central_horizontal_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayerEquirect) set_upper_vertical_angle(angle f64) {
	classname := StringName.new("OpenXRCompositionLayerEquirect")
	fnname := StringName.new("set_upper_vertical_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayerEquirect) get_upper_vertical_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRCompositionLayerEquirect")
	fnname := StringName.new("get_upper_vertical_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayerEquirect) set_lower_vertical_angle(angle f64) {
	classname := StringName.new("OpenXRCompositionLayerEquirect")
	fnname := StringName.new("set_lower_vertical_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayerEquirect) get_lower_vertical_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRCompositionLayerEquirect")
	fnname := StringName.new("get_lower_vertical_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayerEquirect) set_fallback_segments(segments i64) {
	classname := StringName.new("OpenXRCompositionLayerEquirect")
	fnname := StringName.new("set_fallback_segments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&segments)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayerEquirect) get_fallback_segments() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRCompositionLayerEquirect")
	fnname := StringName.new("get_fallback_segments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
