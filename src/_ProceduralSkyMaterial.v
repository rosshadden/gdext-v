module gd

pub struct ProceduralSkyMaterial {
	Material
}

pub fn (s &ProceduralSkyMaterial) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ProceduralSkyMaterial) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ProceduralSkyMaterial) set_sky_top_color(color Color) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_sky_top_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_sky_top_color() Color {
	mut result := Color{}
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_sky_top_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_sky_horizon_color(color Color) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_sky_horizon_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_sky_horizon_color() Color {
	mut result := Color{}
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_sky_horizon_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_sky_curve(curve f64) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_sky_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&curve)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_sky_curve() f64 {
	mut result := f64(0)
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_sky_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_sky_energy_multiplier(multiplier f64) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_sky_energy_multiplier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&multiplier)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_sky_energy_multiplier() f64 {
	mut result := f64(0)
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_sky_energy_multiplier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_sky_cover(sky_cover Texture2D) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_sky_cover")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&sky_cover.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_sky_cover() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_sky_cover")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_sky_cover_modulate(color Color) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_sky_cover_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_sky_cover_modulate() Color {
	mut result := Color{}
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_sky_cover_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_ground_bottom_color(color Color) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_ground_bottom_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_ground_bottom_color() Color {
	mut result := Color{}
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_ground_bottom_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_ground_horizon_color(color Color) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_ground_horizon_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_ground_horizon_color() Color {
	mut result := Color{}
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_ground_horizon_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_ground_curve(curve f64) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_ground_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&curve)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_ground_curve() f64 {
	mut result := f64(0)
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_ground_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_ground_energy_multiplier(energy f64) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_ground_energy_multiplier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&energy)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_ground_energy_multiplier() f64 {
	mut result := f64(0)
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_ground_energy_multiplier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_sun_angle_max(degrees f64) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_sun_angle_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&degrees)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_sun_angle_max() f64 {
	mut result := f64(0)
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_sun_angle_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_sun_curve(curve f64) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_sun_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&curve)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_sun_curve() f64 {
	mut result := f64(0)
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_sun_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_use_debanding(use_debanding bool) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_use_debanding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_debanding)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_use_debanding() bool {
	mut result := false
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_use_debanding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProceduralSkyMaterial) set_energy_multiplier(multiplier f64) {
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("set_energy_multiplier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&multiplier)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProceduralSkyMaterial) get_energy_multiplier() f64 {
	mut result := f64(0)
	classname := StringName.new("ProceduralSkyMaterial")
	fnname := StringName.new("get_energy_multiplier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
