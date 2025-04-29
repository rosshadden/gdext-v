module gd

pub struct XRVRS {
	Object
}

pub fn (s &XRVRS) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRVRS) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRVRS) get_vrs_min_radius() f64 {
	mut result := f64(0)
	classname := StringName.new("XRVRS")
	fnname := StringName.new("get_vrs_min_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRVRS) set_vrs_min_radius(radius f64) {
	classname := StringName.new("XRVRS")
	fnname := StringName.new("set_vrs_min_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRVRS) get_vrs_strength() f64 {
	mut result := f64(0)
	classname := StringName.new("XRVRS")
	fnname := StringName.new("get_vrs_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRVRS) set_vrs_strength(strength f64) {
	classname := StringName.new("XRVRS")
	fnname := StringName.new("set_vrs_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&strength)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRVRS) get_vrs_render_region() Rect2i {
	mut result := Rect2i{}
	classname := StringName.new("XRVRS")
	fnname := StringName.new("get_vrs_render_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 410525958)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRVRS) set_vrs_render_region(render_region Rect2i) {
	classname := StringName.new("XRVRS")
	fnname := StringName.new("set_vrs_render_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1763793166)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&render_region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRVRS) make_vrs_texture(target_size Vector2, eye_foci PackedVector2Array) RID {
	mut result := RID{}
	classname := StringName.new("XRVRS")
	fnname := StringName.new("make_vrs_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3647044786)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&target_size)}
	args[1] = unsafe{voidptr(&eye_foci)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
