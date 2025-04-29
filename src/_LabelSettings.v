module gd

pub struct LabelSettings {
	Resource
}

pub fn (s &LabelSettings) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s LabelSettings) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &LabelSettings) set_line_spacing(spacing f64) {
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("set_line_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&spacing)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LabelSettings) get_line_spacing() f64 {
	mut result := f64(0)
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("get_line_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LabelSettings) set_paragraph_spacing(spacing f64) {
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("set_paragraph_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&spacing)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LabelSettings) get_paragraph_spacing() f64 {
	mut result := f64(0)
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("get_paragraph_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LabelSettings) set_font(font Font) {
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("set_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&font.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LabelSettings) get_font() Font {
	mut result := Font{}
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("get_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LabelSettings) set_font_size(size i64) {
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("set_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LabelSettings) get_font_size() i64 {
	mut result := i64(0)
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("get_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LabelSettings) set_font_color(color Color) {
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("set_font_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LabelSettings) get_font_color() Color {
	mut result := Color{}
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("get_font_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LabelSettings) set_outline_size(size i64) {
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("set_outline_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LabelSettings) get_outline_size() i64 {
	mut result := i64(0)
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("get_outline_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LabelSettings) set_outline_color(color Color) {
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("set_outline_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LabelSettings) get_outline_color() Color {
	mut result := Color{}
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("get_outline_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LabelSettings) set_shadow_size(size i64) {
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("set_shadow_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LabelSettings) get_shadow_size() i64 {
	mut result := i64(0)
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("get_shadow_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LabelSettings) set_shadow_color(color Color) {
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("set_shadow_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LabelSettings) get_shadow_color() Color {
	mut result := Color{}
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("get_shadow_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LabelSettings) set_shadow_offset(offset Vector2) {
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("set_shadow_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LabelSettings) get_shadow_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("LabelSettings")
	fnname := StringName.new("get_shadow_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
