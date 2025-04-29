module gd

pub struct PanoramaSkyMaterial {
	Material
}

pub fn (s &PanoramaSkyMaterial) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PanoramaSkyMaterial) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PanoramaSkyMaterial) set_panorama(texture Texture2D) {
	classname := StringName.new("PanoramaSkyMaterial")
	fnname := StringName.new("set_panorama")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PanoramaSkyMaterial) get_panorama() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("PanoramaSkyMaterial")
	fnname := StringName.new("get_panorama")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PanoramaSkyMaterial) set_filtering_enabled(enabled bool) {
	classname := StringName.new("PanoramaSkyMaterial")
	fnname := StringName.new("set_filtering_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PanoramaSkyMaterial) is_filtering_enabled() bool {
	mut result := false
	classname := StringName.new("PanoramaSkyMaterial")
	fnname := StringName.new("is_filtering_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PanoramaSkyMaterial) set_energy_multiplier(multiplier f64) {
	classname := StringName.new("PanoramaSkyMaterial")
	fnname := StringName.new("set_energy_multiplier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&multiplier)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PanoramaSkyMaterial) get_energy_multiplier() f64 {
	mut result := f64(0)
	classname := StringName.new("PanoramaSkyMaterial")
	fnname := StringName.new("get_energy_multiplier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
