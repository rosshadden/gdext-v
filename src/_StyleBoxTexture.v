module gd

pub enum StyleBoxTextureAxisStretchMode as i64 {
	axis_stretch_mode_stretch = 0
	axis_stretch_mode_tile = 1
	axis_stretch_mode_tile_fit = 2
}

pub struct StyleBoxTexture {
	StyleBox
}

pub fn (s &StyleBoxTexture) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s StyleBoxTexture) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &StyleBoxTexture) set_texture(texture Texture2D) {
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("set_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxTexture) get_texture() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("get_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxTexture) set_texture_margin(margin Side, size f64) {
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("set_texture_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
	mut args := unsafe { [2]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxTexture) set_texture_margin_all(size f64) {
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("set_texture_margin_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxTexture) get_texture_margin(margin Side) f64 {
	mut result := f64(0)
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("get_texture_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
	mut args := unsafe { [1]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxTexture) set_expand_margin(margin Side, size f64) {
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("set_expand_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
	mut args := unsafe { [2]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	args[1] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxTexture) set_expand_margin_all(size f64) {
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("set_expand_margin_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxTexture) get_expand_margin(margin Side) f64 {
	mut result := f64(0)
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("get_expand_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
	mut args := unsafe { [1]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxTexture) set_region_rect(region Rect2) {
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("set_region_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxTexture) get_region_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("get_region_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxTexture) set_draw_center(enable bool) {
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("set_draw_center")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxTexture) is_draw_center_enabled() bool {
	mut result := false
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("is_draw_center_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxTexture) set_modulate(color Color) {
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("set_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxTexture) get_modulate() Color {
	mut result := Color{}
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("get_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxTexture) set_h_axis_stretch_mode(mode StyleBoxTextureAxisStretchMode) {
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("set_h_axis_stretch_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2965538783)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxTexture) get_h_axis_stretch_mode() StyleBoxTextureAxisStretchMode {
	mut result := i64(StyleBoxTextureAxisStretchMode.axis_stretch_mode_stretch)
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("get_h_axis_stretch_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3807744063)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{StyleBoxTextureAxisStretchMode(result)}
}

pub fn (s &StyleBoxTexture) set_v_axis_stretch_mode(mode StyleBoxTextureAxisStretchMode) {
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("set_v_axis_stretch_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2965538783)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxTexture) get_v_axis_stretch_mode() StyleBoxTextureAxisStretchMode {
	mut result := i64(StyleBoxTextureAxisStretchMode.axis_stretch_mode_stretch)
	classname := StringName.new("StyleBoxTexture")
	fnname := StringName.new("get_v_axis_stretch_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3807744063)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{StyleBoxTextureAxisStretchMode(result)}
}
