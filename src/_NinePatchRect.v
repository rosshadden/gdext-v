module gd

pub enum NinePatchRectAxisStretchMode as i64 {
	axis_stretch_mode_stretch = 0
	axis_stretch_mode_tile = 1
	axis_stretch_mode_tile_fit = 2
}

pub struct NinePatchRect {
	Control
}

pub fn (s &NinePatchRect) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s NinePatchRect) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &NinePatchRect) set_texture(texture Texture2D) {
	classname := StringName.new("NinePatchRect")
	fnname := StringName.new("set_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NinePatchRect) get_texture() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("NinePatchRect")
	fnname := StringName.new("get_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NinePatchRect) set_patch_margin(margin Side, value i64) {
	classname := StringName.new("NinePatchRect")
	fnname := StringName.new("set_patch_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 437707142)
	mut args := unsafe { [2]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NinePatchRect) get_patch_margin(margin Side) i64 {
	mut result := i64(0)
	classname := StringName.new("NinePatchRect")
	fnname := StringName.new("get_patch_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1983885014)
	mut args := unsafe { [1]voidptr{} }
	i64_margin := i64(margin)
	args[0] = unsafe{voidptr(&i64_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NinePatchRect) set_region_rect(rect Rect2) {
	classname := StringName.new("NinePatchRect")
	fnname := StringName.new("set_region_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NinePatchRect) get_region_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("NinePatchRect")
	fnname := StringName.new("get_region_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NinePatchRect) set_draw_center(draw_center bool) {
	classname := StringName.new("NinePatchRect")
	fnname := StringName.new("set_draw_center")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&draw_center)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NinePatchRect) is_draw_center_enabled() bool {
	mut result := false
	classname := StringName.new("NinePatchRect")
	fnname := StringName.new("is_draw_center_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NinePatchRect) set_h_axis_stretch_mode(mode NinePatchRectAxisStretchMode) {
	classname := StringName.new("NinePatchRect")
	fnname := StringName.new("set_h_axis_stretch_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3219608417)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NinePatchRect) get_h_axis_stretch_mode() NinePatchRectAxisStretchMode {
	mut result := i64(NinePatchRectAxisStretchMode.axis_stretch_mode_stretch)
	classname := StringName.new("NinePatchRect")
	fnname := StringName.new("get_h_axis_stretch_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3317113799)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NinePatchRectAxisStretchMode(result)}
}

pub fn (s &NinePatchRect) set_v_axis_stretch_mode(mode NinePatchRectAxisStretchMode) {
	classname := StringName.new("NinePatchRect")
	fnname := StringName.new("set_v_axis_stretch_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3219608417)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NinePatchRect) get_v_axis_stretch_mode() NinePatchRectAxisStretchMode {
	mut result := i64(NinePatchRectAxisStretchMode.axis_stretch_mode_stretch)
	classname := StringName.new("NinePatchRect")
	fnname := StringName.new("get_v_axis_stretch_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3317113799)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NinePatchRectAxisStretchMode(result)}
}
