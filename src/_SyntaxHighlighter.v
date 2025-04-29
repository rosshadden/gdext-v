module gd

pub struct SyntaxHighlighter {
	Resource
}

pub fn (s &SyntaxHighlighter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SyntaxHighlighter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ISyntaxHighlighterGetLineSyntaxHighlighting {
mut:
	get_line_syntax_highlighting_(line i64) Dictionary
}

pub fn (s &SyntaxHighlighter) gd_get_line_syntax_highlighting(line i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("SyntaxHighlighter")
	fnname := StringName.new("_get_line_syntax_highlighting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ISyntaxHighlighterClearHighlightingCache {
mut:
	clear_highlighting_cache_()
}

pub fn (s &SyntaxHighlighter) gd_clear_highlighting_cache() {
	classname := StringName.new("SyntaxHighlighter")
	fnname := StringName.new("_clear_highlighting_cache")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ISyntaxHighlighterUpdateCache {
mut:
	update_cache_()
}

pub fn (s &SyntaxHighlighter) gd_update_cache() {
	classname := StringName.new("SyntaxHighlighter")
	fnname := StringName.new("_update_cache")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SyntaxHighlighter) get_line_syntax_highlighting(line i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("SyntaxHighlighter")
	fnname := StringName.new("get_line_syntax_highlighting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3554694381)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&line)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SyntaxHighlighter) update_cache() {
	classname := StringName.new("SyntaxHighlighter")
	fnname := StringName.new("update_cache")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SyntaxHighlighter) clear_highlighting_cache() {
	classname := StringName.new("SyntaxHighlighter")
	fnname := StringName.new("clear_highlighting_cache")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SyntaxHighlighter) get_text_edit() TextEdit {
	mut result := TextEdit{}
	classname := StringName.new("SyntaxHighlighter")
	fnname := StringName.new("get_text_edit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1893027089)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
