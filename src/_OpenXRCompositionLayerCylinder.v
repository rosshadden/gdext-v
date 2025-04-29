module gd

pub struct OpenXRCompositionLayerCylinder {
	OpenXRCompositionLayer
}

pub fn (s &OpenXRCompositionLayerCylinder) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRCompositionLayerCylinder) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRCompositionLayerCylinder) set_radius(radius f64) {
	classname := StringName.new("OpenXRCompositionLayerCylinder")
	fnname := StringName.new("set_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayerCylinder) get_radius() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRCompositionLayerCylinder")
	fnname := StringName.new("get_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayerCylinder) set_aspect_ratio(aspect_ratio f64) {
	classname := StringName.new("OpenXRCompositionLayerCylinder")
	fnname := StringName.new("set_aspect_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&aspect_ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayerCylinder) get_aspect_ratio() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRCompositionLayerCylinder")
	fnname := StringName.new("get_aspect_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayerCylinder) set_central_angle(angle f64) {
	classname := StringName.new("OpenXRCompositionLayerCylinder")
	fnname := StringName.new("set_central_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayerCylinder) get_central_angle() f64 {
	mut result := f64(0)
	classname := StringName.new("OpenXRCompositionLayerCylinder")
	fnname := StringName.new("get_central_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRCompositionLayerCylinder) set_fallback_segments(segments i64) {
	classname := StringName.new("OpenXRCompositionLayerCylinder")
	fnname := StringName.new("set_fallback_segments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&segments)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OpenXRCompositionLayerCylinder) get_fallback_segments() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRCompositionLayerCylinder")
	fnname := StringName.new("get_fallback_segments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
