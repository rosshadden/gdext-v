module gd

pub enum ProgressBarFillMode as i64 {
	fill_begin_to_end = 0
	fill_end_to_begin = 1
	fill_top_to_bottom = 2
	fill_bottom_to_top = 3
}

pub struct ProgressBar {
	Range
}

pub fn (s &ProgressBar) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ProgressBar) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ProgressBar) set_fill_mode(mode i64) {
	classname := StringName.new("ProgressBar")
	fnname := StringName.new("set_fill_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProgressBar) get_fill_mode() i64 {
	mut result := i64(0)
	classname := StringName.new("ProgressBar")
	fnname := StringName.new("get_fill_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProgressBar) set_show_percentage(visible bool) {
	classname := StringName.new("ProgressBar")
	fnname := StringName.new("set_show_percentage")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&visible)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProgressBar) is_percentage_shown() bool {
	mut result := false
	classname := StringName.new("ProgressBar")
	fnname := StringName.new("is_percentage_shown")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProgressBar) set_indeterminate(indeterminate bool) {
	classname := StringName.new("ProgressBar")
	fnname := StringName.new("set_indeterminate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&indeterminate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProgressBar) is_indeterminate() bool {
	mut result := false
	classname := StringName.new("ProgressBar")
	fnname := StringName.new("is_indeterminate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ProgressBar) set_editor_preview_indeterminate(preview_indeterminate bool) {
	classname := StringName.new("ProgressBar")
	fnname := StringName.new("set_editor_preview_indeterminate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&preview_indeterminate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ProgressBar) is_editor_preview_indeterminate_enabled() bool {
	mut result := false
	classname := StringName.new("ProgressBar")
	fnname := StringName.new("is_editor_preview_indeterminate_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
