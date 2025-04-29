module gd

pub struct StyleBoxFlat {
	StyleBox
}

pub fn (s &StyleBoxFlat) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s StyleBoxFlat) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &StyleBoxFlat) set_bg_color(color Color) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_bg_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_bg_color() Color {
	mut result := Color{}
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("get_bg_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_border_color(color Color) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_border_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_border_color() Color {
	mut result := Color{}
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("get_border_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_border_width_all(width i64) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_border_width_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_border_width_min() i64 {
	mut result := i64(0)
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("get_border_width_min")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_border_width(margin Side, width i64) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_border_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 437707142)
	mut args := unsafe { [2]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	args[1] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_border_width(margin Side) i64 {
	mut result := i64(0)
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("get_border_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1983885014)
	mut args := unsafe { [1]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_border_blend(blend bool) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_border_blend")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&blend)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_border_blend() bool {
	mut result := false
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("get_border_blend")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_corner_radius_all(radius i64) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_corner_radius_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) set_corner_radius(corner Corner, radius i64) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_corner_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2696158768)
	mut args := unsafe { [2]voidptr{} }
	i64_corner := i64(corner)
	args[0] = unsafe{voidptr(&i64_corner)}
	args[1] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_corner_radius(corner Corner) i64 {
	mut result := i64(0)
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("get_corner_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3982397690)
	mut args := unsafe { [1]voidptr{} }
	i64_corner := i64(corner)
	args[0] = unsafe{voidptr(&i64_corner)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_expand_margin(margin Side, size f64) {
	classname := StringName.new("StyleBoxFlat")
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

pub fn (s &StyleBoxFlat) set_expand_margin_all(size f64) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_expand_margin_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_expand_margin(margin Side) f64 {
	mut result := f64(0)
	classname := StringName.new("StyleBoxFlat")
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

pub fn (s &StyleBoxFlat) set_draw_center(draw_center bool) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_draw_center")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&draw_center)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) is_draw_center_enabled() bool {
	mut result := false
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("is_draw_center_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_skew(skew Vector2) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_skew")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&skew)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_skew() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("get_skew")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_shadow_color(color Color) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_shadow_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_shadow_color() Color {
	mut result := Color{}
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("get_shadow_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_shadow_size(size i64) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_shadow_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_shadow_size() i64 {
	mut result := i64(0)
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("get_shadow_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_shadow_offset(offset Vector2) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_shadow_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_shadow_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("get_shadow_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_anti_aliased(anti_aliased bool) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_anti_aliased")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&anti_aliased)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) is_anti_aliased() bool {
	mut result := false
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("is_anti_aliased")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_aa_size(size f64) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_aa_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_aa_size() f64 {
	mut result := f64(0)
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("get_aa_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &StyleBoxFlat) set_corner_detail(detail i64) {
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("set_corner_detail")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&detail)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &StyleBoxFlat) get_corner_detail() i64 {
	mut result := i64(0)
	classname := StringName.new("StyleBoxFlat")
	fnname := StringName.new("get_corner_detail")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
