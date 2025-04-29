module gd

pub enum DecalDecalTexture as i64 {
	texture_albedo = 0
	texture_normal = 1
	texture_orm = 2
	texture_emission = 3
	texture_max = 4
}

pub struct Decal {
	VisualInstance3D
}

pub fn (s &Decal) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Decal) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Decal) set_size(size Vector3) {
	classname := StringName.new("Decal")
	fnname := StringName.new("set_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Decal) get_size() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Decal")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Decal) set_texture(gd_type DecalDecalTexture, texture Texture2D) {
	classname := StringName.new("Decal")
	fnname := StringName.new("set_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2086764391)
	mut args := unsafe { [2]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Decal) get_texture(gd_type DecalDecalTexture) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("Decal")
	fnname := StringName.new("get_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3244119503)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Decal) set_emission_energy(energy f64) {
	classname := StringName.new("Decal")
	fnname := StringName.new("set_emission_energy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&energy)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Decal) get_emission_energy() f64 {
	mut result := f64(0)
	classname := StringName.new("Decal")
	fnname := StringName.new("get_emission_energy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Decal) set_albedo_mix(energy f64) {
	classname := StringName.new("Decal")
	fnname := StringName.new("set_albedo_mix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&energy)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Decal) get_albedo_mix() f64 {
	mut result := f64(0)
	classname := StringName.new("Decal")
	fnname := StringName.new("get_albedo_mix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Decal) set_modulate(color Color) {
	classname := StringName.new("Decal")
	fnname := StringName.new("set_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Decal) get_modulate() Color {
	mut result := Color{}
	classname := StringName.new("Decal")
	fnname := StringName.new("get_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Decal) set_upper_fade(fade f64) {
	classname := StringName.new("Decal")
	fnname := StringName.new("set_upper_fade")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&fade)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Decal) get_upper_fade() f64 {
	mut result := f64(0)
	classname := StringName.new("Decal")
	fnname := StringName.new("get_upper_fade")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Decal) set_lower_fade(fade f64) {
	classname := StringName.new("Decal")
	fnname := StringName.new("set_lower_fade")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&fade)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Decal) get_lower_fade() f64 {
	mut result := f64(0)
	classname := StringName.new("Decal")
	fnname := StringName.new("get_lower_fade")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Decal) set_normal_fade(fade f64) {
	classname := StringName.new("Decal")
	fnname := StringName.new("set_normal_fade")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&fade)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Decal) get_normal_fade() f64 {
	mut result := f64(0)
	classname := StringName.new("Decal")
	fnname := StringName.new("get_normal_fade")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Decal) set_enable_distance_fade(enable bool) {
	classname := StringName.new("Decal")
	fnname := StringName.new("set_enable_distance_fade")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Decal) is_distance_fade_enabled() bool {
	mut result := false
	classname := StringName.new("Decal")
	fnname := StringName.new("is_distance_fade_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Decal) set_distance_fade_begin(distance f64) {
	classname := StringName.new("Decal")
	fnname := StringName.new("set_distance_fade_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&distance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Decal) get_distance_fade_begin() f64 {
	mut result := f64(0)
	classname := StringName.new("Decal")
	fnname := StringName.new("get_distance_fade_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Decal) set_distance_fade_length(distance f64) {
	classname := StringName.new("Decal")
	fnname := StringName.new("set_distance_fade_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&distance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Decal) get_distance_fade_length() f64 {
	mut result := f64(0)
	classname := StringName.new("Decal")
	fnname := StringName.new("get_distance_fade_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Decal) set_cull_mask(mask i64) {
	classname := StringName.new("Decal")
	fnname := StringName.new("set_cull_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Decal) get_cull_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("Decal")
	fnname := StringName.new("get_cull_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
