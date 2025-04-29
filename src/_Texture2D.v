module gd

pub struct Texture2D {
	Texture
}

pub fn (s &Texture2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Texture2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ITexture2DGetWidth {
mut:
	get_width_() i64
}

pub fn (s &Texture2D) gd_get_width() i64 {
	mut result := i64(0)
	classname := StringName.new("Texture2D")
	fnname := StringName.new("_get_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITexture2DGetHeight {
mut:
	get_height_() i64
}

pub fn (s &Texture2D) gd_get_height() i64 {
	mut result := i64(0)
	classname := StringName.new("Texture2D")
	fnname := StringName.new("_get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITexture2DIsPixelOpaque {
mut:
	is_pixel_opaque_(x i64, y i64) bool
}

pub fn (s &Texture2D) gd_is_pixel_opaque(x i64, y i64) bool {
	mut result := false
	classname := StringName.new("Texture2D")
	fnname := StringName.new("_is_pixel_opaque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&x)}
	args[1] = unsafe{voidptr(&y)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITexture2DHasAlpha {
mut:
	has_alpha_() bool
}

pub fn (s &Texture2D) gd_has_alpha() bool {
	mut result := false
	classname := StringName.new("Texture2D")
	fnname := StringName.new("_has_alpha")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ITexture2DDraw {
mut:
	draw_(to_canvas_item RID, pos Vector2, modulate Color, transpose bool)
}

pub fn (s &Texture2D) gd_draw(to_canvas_item RID, pos Vector2, modulate Color, transpose bool) {
	classname := StringName.new("Texture2D")
	fnname := StringName.new("_draw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1384643611)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&to_canvas_item)}
	args[1] = unsafe{voidptr(&pos)}
	args[2] = unsafe{voidptr(&modulate)}
	args[3] = unsafe{voidptr(&transpose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITexture2DDrawRect {
mut:
	draw_rect_(to_canvas_item RID, rect Rect2, tile bool, modulate Color, transpose bool)
}

pub fn (s &Texture2D) gd_draw_rect(to_canvas_item RID, rect Rect2, tile bool, modulate Color, transpose bool) {
	classname := StringName.new("Texture2D")
	fnname := StringName.new("_draw_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3819628907)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&to_canvas_item)}
	args[1] = unsafe{voidptr(&rect)}
	args[2] = unsafe{voidptr(&tile)}
	args[3] = unsafe{voidptr(&modulate)}
	args[4] = unsafe{voidptr(&transpose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ITexture2DDrawRectRegion {
mut:
	draw_rect_region_(to_canvas_item RID, rect Rect2, src_rect Rect2, modulate Color, transpose bool, clip_uv bool)
}

pub fn (s &Texture2D) gd_draw_rect_region(to_canvas_item RID, rect Rect2, src_rect Rect2, modulate Color, transpose bool, clip_uv bool) {
	classname := StringName.new("Texture2D")
	fnname := StringName.new("_draw_rect_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4094143664)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&to_canvas_item)}
	args[1] = unsafe{voidptr(&rect)}
	args[2] = unsafe{voidptr(&src_rect)}
	args[3] = unsafe{voidptr(&modulate)}
	args[4] = unsafe{voidptr(&transpose)}
	args[5] = unsafe{voidptr(&clip_uv)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Texture2D) get_width() i64 {
	mut result := i64(0)
	classname := StringName.new("Texture2D")
	fnname := StringName.new("get_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Texture2D) get_height() i64 {
	mut result := i64(0)
	classname := StringName.new("Texture2D")
	fnname := StringName.new("get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Texture2D) get_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Texture2D")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Texture2D) has_alpha() bool {
	mut result := false
	classname := StringName.new("Texture2D")
	fnname := StringName.new("has_alpha")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Texture2D_draw_Cfg {
pub:
	modulate Color
	transpose bool
}

pub fn (s &Texture2D) draw(canvas_item RID, position Vector2, cfg Texture2D_draw_Cfg) {
	classname := StringName.new("Texture2D")
	fnname := StringName.new("draw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2729649137)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&canvas_item)}
	args[1] = unsafe{voidptr(&position)}
	args[2] = unsafe{voidptr(&cfg.modulate)}
	args[3] = unsafe{voidptr(&cfg.transpose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Texture2D_draw_rect_Cfg {
pub:
	modulate Color
	transpose bool
}

pub fn (s &Texture2D) draw_rect(canvas_item RID, rect Rect2, tile bool, cfg Texture2D_draw_rect_Cfg) {
	classname := StringName.new("Texture2D")
	fnname := StringName.new("draw_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3499451691)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&canvas_item)}
	args[1] = unsafe{voidptr(&rect)}
	args[2] = unsafe{voidptr(&tile)}
	args[3] = unsafe{voidptr(&cfg.modulate)}
	args[4] = unsafe{voidptr(&cfg.transpose)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Texture2D_draw_rect_region_Cfg {
pub:
	modulate Color
	transpose bool
	clip_uv bool
}

pub fn (s &Texture2D) draw_rect_region(canvas_item RID, rect Rect2, src_rect Rect2, cfg Texture2D_draw_rect_region_Cfg) {
	classname := StringName.new("Texture2D")
	fnname := StringName.new("draw_rect_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2963678660)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&canvas_item)}
	args[1] = unsafe{voidptr(&rect)}
	args[2] = unsafe{voidptr(&src_rect)}
	args[3] = unsafe{voidptr(&cfg.modulate)}
	args[4] = unsafe{voidptr(&cfg.transpose)}
	args[5] = unsafe{voidptr(&cfg.clip_uv)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Texture2D) get_image() Image {
	mut result := Image{}
	classname := StringName.new("Texture2D")
	fnname := StringName.new("get_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4190603485)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Texture2D) create_placeholder() Resource {
	mut result := Resource{}
	classname := StringName.new("Texture2D")
	fnname := StringName.new("create_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
