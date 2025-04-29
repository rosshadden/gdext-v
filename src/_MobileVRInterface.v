module gd

pub struct MobileVRInterface {
	XRInterface
}

pub fn (s &MobileVRInterface) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MobileVRInterface) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &MobileVRInterface) set_eye_height(eye_height f64) {
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("set_eye_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&eye_height)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MobileVRInterface) get_eye_height() f64 {
	mut result := f64(0)
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("get_eye_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MobileVRInterface) set_iod(iod f64) {
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("set_iod")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&iod)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MobileVRInterface) get_iod() f64 {
	mut result := f64(0)
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("get_iod")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MobileVRInterface) set_display_width(display_width f64) {
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("set_display_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&display_width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MobileVRInterface) get_display_width() f64 {
	mut result := f64(0)
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("get_display_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MobileVRInterface) set_display_to_lens(display_to_lens f64) {
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("set_display_to_lens")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&display_to_lens)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MobileVRInterface) get_display_to_lens() f64 {
	mut result := f64(0)
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("get_display_to_lens")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MobileVRInterface) set_offset_rect(offset_rect Rect2) {
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("set_offset_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset_rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MobileVRInterface) get_offset_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("get_offset_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MobileVRInterface) set_oversample(oversample f64) {
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("set_oversample")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&oversample)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MobileVRInterface) get_oversample() f64 {
	mut result := f64(0)
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("get_oversample")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MobileVRInterface) set_k1(k f64) {
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("set_k1")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&k)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MobileVRInterface) get_k1() f64 {
	mut result := f64(0)
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("get_k1")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MobileVRInterface) set_k2(k f64) {
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("set_k2")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&k)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MobileVRInterface) get_k2() f64 {
	mut result := f64(0)
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("get_k2")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MobileVRInterface) get_vrs_min_radius() f64 {
	mut result := f64(0)
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("get_vrs_min_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MobileVRInterface) set_vrs_min_radius(radius f64) {
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("set_vrs_min_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MobileVRInterface) get_vrs_strength() f64 {
	mut result := f64(0)
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("get_vrs_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MobileVRInterface) set_vrs_strength(strength f64) {
	classname := StringName.new("MobileVRInterface")
	fnname := StringName.new("set_vrs_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&strength)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
