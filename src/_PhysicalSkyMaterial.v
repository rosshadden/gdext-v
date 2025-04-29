module gd

pub struct PhysicalSkyMaterial {
	Material
}

pub fn (s &PhysicalSkyMaterial) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicalSkyMaterial) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PhysicalSkyMaterial) set_rayleigh_coefficient(rayleigh f64) {
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("set_rayleigh_coefficient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rayleigh)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalSkyMaterial) get_rayleigh_coefficient() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("get_rayleigh_coefficient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalSkyMaterial) set_rayleigh_color(color Color) {
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("set_rayleigh_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalSkyMaterial) get_rayleigh_color() Color {
	mut result := Color{}
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("get_rayleigh_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalSkyMaterial) set_mie_coefficient(mie f64) {
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("set_mie_coefficient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mie)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalSkyMaterial) get_mie_coefficient() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("get_mie_coefficient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalSkyMaterial) set_mie_eccentricity(eccentricity f64) {
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("set_mie_eccentricity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&eccentricity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalSkyMaterial) get_mie_eccentricity() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("get_mie_eccentricity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalSkyMaterial) set_mie_color(color Color) {
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("set_mie_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalSkyMaterial) get_mie_color() Color {
	mut result := Color{}
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("get_mie_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalSkyMaterial) set_turbidity(turbidity f64) {
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("set_turbidity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&turbidity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalSkyMaterial) get_turbidity() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("get_turbidity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalSkyMaterial) set_sun_disk_scale(scale f64) {
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("set_sun_disk_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalSkyMaterial) get_sun_disk_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("get_sun_disk_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalSkyMaterial) set_ground_color(color Color) {
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("set_ground_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalSkyMaterial) get_ground_color() Color {
	mut result := Color{}
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("get_ground_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalSkyMaterial) set_energy_multiplier(multiplier f64) {
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("set_energy_multiplier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&multiplier)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalSkyMaterial) get_energy_multiplier() f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("get_energy_multiplier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalSkyMaterial) set_use_debanding(use_debanding bool) {
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("set_use_debanding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_debanding)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalSkyMaterial) get_use_debanding() bool {
	mut result := false
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("get_use_debanding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalSkyMaterial) set_night_sky(night_sky Texture2D) {
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("set_night_sky")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&night_sky.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalSkyMaterial) get_night_sky() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("PhysicalSkyMaterial")
	fnname := StringName.new("get_night_sky")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
