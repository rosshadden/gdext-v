module gd

pub struct CodeHighlighter {
	SyntaxHighlighter
}

pub fn (s &CodeHighlighter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CodeHighlighter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CodeHighlighter) add_keyword_color(keyword string, color Color) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("add_keyword_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1636512886)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(keyword)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) remove_keyword_color(keyword string) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("remove_keyword_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(keyword)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) has_keyword_color(keyword string) bool {
	mut result := false
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("has_keyword_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(keyword)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CodeHighlighter) get_keyword_color(keyword string) Color {
	mut result := Color{}
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("get_keyword_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3855908743)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(keyword)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CodeHighlighter) set_keyword_colors(keywords Dictionary) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("set_keyword_colors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&keywords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) clear_keyword_colors() {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("clear_keyword_colors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) get_keyword_colors() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("get_keyword_colors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CodeHighlighter) add_member_keyword_color(member_keyword string, color Color) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("add_member_keyword_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1636512886)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(member_keyword)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) remove_member_keyword_color(member_keyword string) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("remove_member_keyword_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(member_keyword)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) has_member_keyword_color(member_keyword string) bool {
	mut result := false
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("has_member_keyword_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(member_keyword)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CodeHighlighter) get_member_keyword_color(member_keyword string) Color {
	mut result := Color{}
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("get_member_keyword_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3855908743)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(member_keyword)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CodeHighlighter) set_member_keyword_colors(member_keyword Dictionary) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("set_member_keyword_colors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&member_keyword)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) clear_member_keyword_colors() {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("clear_member_keyword_colors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) get_member_keyword_colors() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("get_member_keyword_colors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct CodeHighlighter_add_color_region_Cfg {
pub:
	line_only bool
}

pub fn (s &CodeHighlighter) add_color_region(start_key string, end_key string, color Color, cfg CodeHighlighter_add_color_region_Cfg) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("add_color_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2924977451)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(start_key)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(end_key)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&color)}
	args[3] = unsafe{voidptr(&cfg.line_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) remove_color_region(start_key string) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("remove_color_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(start_key)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) has_color_region(start_key string) bool {
	mut result := false
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("has_color_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(start_key)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CodeHighlighter) set_color_regions(color_regions Dictionary) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("set_color_regions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color_regions)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) clear_color_regions() {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("clear_color_regions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) get_color_regions() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("get_color_regions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CodeHighlighter) set_function_color(color Color) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("set_function_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) get_function_color() Color {
	mut result := Color{}
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("get_function_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CodeHighlighter) set_number_color(color Color) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("set_number_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) get_number_color() Color {
	mut result := Color{}
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("get_number_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CodeHighlighter) set_symbol_color(color Color) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("set_symbol_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) get_symbol_color() Color {
	mut result := Color{}
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("get_symbol_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CodeHighlighter) set_member_variable_color(color Color) {
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("set_member_variable_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CodeHighlighter) get_member_variable_color() Color {
	mut result := Color{}
	classname := StringName.new("CodeHighlighter")
	fnname := StringName.new("get_member_variable_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
