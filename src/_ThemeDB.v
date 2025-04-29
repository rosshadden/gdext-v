module gd

pub struct ThemeDB {
	Object
}

pub fn ThemeDB.get_singleton() ThemeDB {
	sn := StringName.new("ThemeDB")
	result := ThemeDB{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &ThemeDB) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ThemeDB) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ThemeDB) get_default_theme() Theme {
	mut result := Theme{}
	classname := StringName.new("ThemeDB")
	fnname := StringName.new("get_default_theme")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 754276358)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ThemeDB) get_project_theme() Theme {
	mut result := Theme{}
	classname := StringName.new("ThemeDB")
	fnname := StringName.new("get_project_theme")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 754276358)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ThemeDB) set_fallback_base_scale(base_scale f64) {
	classname := StringName.new("ThemeDB")
	fnname := StringName.new("set_fallback_base_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&base_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ThemeDB) get_fallback_base_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("ThemeDB")
	fnname := StringName.new("get_fallback_base_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ThemeDB) set_fallback_font(font Font) {
	classname := StringName.new("ThemeDB")
	fnname := StringName.new("set_fallback_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&font.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ThemeDB) get_fallback_font() Font {
	mut result := Font{}
	classname := StringName.new("ThemeDB")
	fnname := StringName.new("get_fallback_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3656929885)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ThemeDB) set_fallback_font_size(font_size i64) {
	classname := StringName.new("ThemeDB")
	fnname := StringName.new("set_fallback_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&font_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ThemeDB) get_fallback_font_size() i64 {
	mut result := i64(0)
	classname := StringName.new("ThemeDB")
	fnname := StringName.new("get_fallback_font_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ThemeDB) set_fallback_icon(icon Texture2D) {
	classname := StringName.new("ThemeDB")
	fnname := StringName.new("set_fallback_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ThemeDB) get_fallback_icon() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("ThemeDB")
	fnname := StringName.new("get_fallback_icon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 255860311)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ThemeDB) set_fallback_stylebox(stylebox StyleBox) {
	classname := StringName.new("ThemeDB")
	fnname := StringName.new("set_fallback_stylebox")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2797200388)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&stylebox.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ThemeDB) get_fallback_stylebox() StyleBox {
	mut result := StyleBox{}
	classname := StringName.new("ThemeDB")
	fnname := StringName.new("get_fallback_stylebox")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 496040854)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
