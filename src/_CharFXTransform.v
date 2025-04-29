module gd

pub struct CharFXTransform {
	RefCounted
}

pub fn (s &CharFXTransform) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CharFXTransform) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CharFXTransform) get_transform() Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("get_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3761352769)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_transform(transform Transform2D) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharFXTransform) get_range() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("get_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2741790807)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_range(range Vector2i) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&range)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharFXTransform) get_elapsed_time() f64 {
	mut result := f64(0)
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("get_elapsed_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_elapsed_time(time f64) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_elapsed_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharFXTransform) is_visible() bool {
	mut result := false
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("is_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_visibility(visibility bool) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_visibility")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&visibility)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharFXTransform) is_outline() bool {
	mut result := false
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("is_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_outline(outline bool) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&outline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharFXTransform) get_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("get_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_offset(offset Vector2) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharFXTransform) get_color() Color {
	mut result := Color{}
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("get_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200896285)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_color(color Color) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharFXTransform) get_environment() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("get_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_environment(environment Dictionary) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&environment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharFXTransform) get_glyph_index() i64 {
	mut result := i64(0)
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("get_glyph_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_glyph_index(glyph_index i64) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_glyph_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&glyph_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharFXTransform) get_relative_index() i64 {
	mut result := i64(0)
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("get_relative_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_relative_index(relative_index i64) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_relative_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&relative_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharFXTransform) get_glyph_count() i64 {
	mut result := i64(0)
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("get_glyph_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_glyph_count(glyph_count i64) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_glyph_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&glyph_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharFXTransform) get_glyph_flags() i64 {
	mut result := i64(0)
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("get_glyph_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_glyph_flags(glyph_flags i64) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_glyph_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&glyph_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CharFXTransform) get_font() RID {
	mut result := RID{}
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("get_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CharFXTransform) set_font(font RID) {
	classname := StringName.new("CharFXTransform")
	fnname := StringName.new("set_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
