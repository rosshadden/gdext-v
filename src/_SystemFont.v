module gd

pub struct SystemFont {
	Font
}

pub fn (s &SystemFont) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SystemFont) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SystemFont) set_antialiasing(antialiasing TextServerFontAntialiasing) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_antialiasing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1669900)
	mut args := unsafe { [1]voidptr{} }
	i64_antialiasing := i64(antialiasing)
	args[0] = unsafe{voidptr(&i64_antialiasing)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) get_antialiasing() TextServerFontAntialiasing {
	mut result := i64(TextServerFontAntialiasing.font_antialiasing_none)
	classname := StringName.new("SystemFont")
	fnname := StringName.new("get_antialiasing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4262718649)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerFontAntialiasing(result)}
}

pub fn (s &SystemFont) set_disable_embedded_bitmaps(disable_embedded_bitmaps bool) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_disable_embedded_bitmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&disable_embedded_bitmaps)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) get_disable_embedded_bitmaps() bool {
	mut result := false
	classname := StringName.new("SystemFont")
	fnname := StringName.new("get_disable_embedded_bitmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SystemFont) set_generate_mipmaps(generate_mipmaps bool) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_generate_mipmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&generate_mipmaps)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) get_generate_mipmaps() bool {
	mut result := false
	classname := StringName.new("SystemFont")
	fnname := StringName.new("get_generate_mipmaps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SystemFont) set_allow_system_fallback(allow_system_fallback bool) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_allow_system_fallback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&allow_system_fallback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) is_allow_system_fallback() bool {
	mut result := false
	classname := StringName.new("SystemFont")
	fnname := StringName.new("is_allow_system_fallback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SystemFont) set_force_autohinter(force_autohinter bool) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_force_autohinter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&force_autohinter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) is_force_autohinter() bool {
	mut result := false
	classname := StringName.new("SystemFont")
	fnname := StringName.new("is_force_autohinter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SystemFont) set_modulate_color_glyphs(modulate bool) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_modulate_color_glyphs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&modulate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) is_modulate_color_glyphs() bool {
	mut result := false
	classname := StringName.new("SystemFont")
	fnname := StringName.new("is_modulate_color_glyphs")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SystemFont) set_hinting(hinting TextServerHinting) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_hinting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1827459492)
	mut args := unsafe { [1]voidptr{} }
	i64_hinting := i64(hinting)
	args[0] = unsafe{voidptr(&i64_hinting)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) get_hinting() TextServerHinting {
	mut result := i64(TextServerHinting.hinting_none)
	classname := StringName.new("SystemFont")
	fnname := StringName.new("get_hinting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3683214614)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerHinting(result)}
}

pub fn (s &SystemFont) set_subpixel_positioning(subpixel_positioning TextServerSubpixelPositioning) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_subpixel_positioning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4225742182)
	mut args := unsafe { [1]voidptr{} }
	i64_subpixel_positioning := i64(subpixel_positioning)
	args[0] = unsafe{voidptr(&i64_subpixel_positioning)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) get_subpixel_positioning() TextServerSubpixelPositioning {
	mut result := i64(TextServerSubpixelPositioning.subpixel_positioning_disabled)
	classname := StringName.new("SystemFont")
	fnname := StringName.new("get_subpixel_positioning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1069238588)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextServerSubpixelPositioning(result)}
}

pub fn (s &SystemFont) set_keep_rounding_remainders(keep_rounding_remainders bool) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_keep_rounding_remainders")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&keep_rounding_remainders)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) get_keep_rounding_remainders() bool {
	mut result := false
	classname := StringName.new("SystemFont")
	fnname := StringName.new("get_keep_rounding_remainders")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SystemFont) set_multichannel_signed_distance_field(msdf bool) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_multichannel_signed_distance_field")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&msdf)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) is_multichannel_signed_distance_field() bool {
	mut result := false
	classname := StringName.new("SystemFont")
	fnname := StringName.new("is_multichannel_signed_distance_field")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SystemFont) set_msdf_pixel_range(msdf_pixel_range i64) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_msdf_pixel_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&msdf_pixel_range)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) get_msdf_pixel_range() i64 {
	mut result := i64(0)
	classname := StringName.new("SystemFont")
	fnname := StringName.new("get_msdf_pixel_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SystemFont) set_msdf_size(msdf_size i64) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_msdf_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&msdf_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) get_msdf_size() i64 {
	mut result := i64(0)
	classname := StringName.new("SystemFont")
	fnname := StringName.new("get_msdf_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SystemFont) set_oversampling(oversampling f64) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_oversampling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&oversampling)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) get_oversampling() f64 {
	mut result := f64(0)
	classname := StringName.new("SystemFont")
	fnname := StringName.new("get_oversampling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SystemFont) get_font_names() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("SystemFont")
	fnname := StringName.new("get_font_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SystemFont) set_font_names(names PackedStringArray) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_font_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&names)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) get_font_italic() bool {
	mut result := false
	classname := StringName.new("SystemFont")
	fnname := StringName.new("get_font_italic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SystemFont) set_font_italic(italic bool) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_font_italic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&italic)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) set_font_weight(weight i64) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_font_weight")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&weight)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SystemFont) set_font_stretch(stretch i64) {
	classname := StringName.new("SystemFont")
	fnname := StringName.new("set_font_stretch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stretch)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
