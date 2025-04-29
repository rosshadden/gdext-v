module gd

pub struct SpinBox {
	Range
}

pub fn (s &SpinBox) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SpinBox) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SpinBox) set_horizontal_alignment(alignment HorizontalAlignment) {
	classname := StringName.new("SpinBox")
	fnname := StringName.new("set_horizontal_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpinBox) get_horizontal_alignment() HorizontalAlignment {
	mut result := i64(HorizontalAlignment.horizontal_alignment_left)
	classname := StringName.new("SpinBox")
	fnname := StringName.new("get_horizontal_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{HorizontalAlignment(result)}
}

pub fn (s &SpinBox) set_suffix(suffix string) {
	classname := StringName.new("SpinBox")
	fnname := StringName.new("set_suffix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(suffix)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpinBox) get_suffix() string {
	mut result := String{}
	classname := StringName.new("SpinBox")
	fnname := StringName.new("get_suffix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SpinBox) set_prefix(prefix string) {
	classname := StringName.new("SpinBox")
	fnname := StringName.new("set_prefix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(prefix)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpinBox) get_prefix() string {
	mut result := String{}
	classname := StringName.new("SpinBox")
	fnname := StringName.new("get_prefix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SpinBox) set_editable(enabled bool) {
	classname := StringName.new("SpinBox")
	fnname := StringName.new("set_editable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpinBox) set_custom_arrow_step(arrow_step f64) {
	classname := StringName.new("SpinBox")
	fnname := StringName.new("set_custom_arrow_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&arrow_step)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpinBox) get_custom_arrow_step() f64 {
	mut result := f64(0)
	classname := StringName.new("SpinBox")
	fnname := StringName.new("get_custom_arrow_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpinBox) is_editable() bool {
	mut result := false
	classname := StringName.new("SpinBox")
	fnname := StringName.new("is_editable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpinBox) set_update_on_text_changed(enabled bool) {
	classname := StringName.new("SpinBox")
	fnname := StringName.new("set_update_on_text_changed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpinBox) get_update_on_text_changed() bool {
	mut result := false
	classname := StringName.new("SpinBox")
	fnname := StringName.new("get_update_on_text_changed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpinBox) set_select_all_on_focus(enabled bool) {
	classname := StringName.new("SpinBox")
	fnname := StringName.new("set_select_all_on_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpinBox) is_select_all_on_focus() bool {
	mut result := false
	classname := StringName.new("SpinBox")
	fnname := StringName.new("is_select_all_on_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpinBox) apply() {
	classname := StringName.new("SpinBox")
	fnname := StringName.new("apply")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpinBox) get_line_edit() LineEdit {
	mut result := LineEdit{}
	classname := StringName.new("SpinBox")
	fnname := StringName.new("get_line_edit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4071694264)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
