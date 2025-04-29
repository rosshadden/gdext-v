module gd

pub enum SplitContainerDraggerVisibility as i64 {
	dragger_visible = 0
	dragger_hidden = 1
	dragger_hidden_collapsed = 2
}

pub struct SplitContainer {
	Container
}

pub fn (s &SplitContainer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SplitContainer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SplitContainer) set_split_offset(offset i64) {
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("set_split_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SplitContainer) get_split_offset() i64 {
	mut result := i64(0)
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("get_split_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SplitContainer) clamp_split_offset() {
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("clamp_split_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SplitContainer) set_collapsed(collapsed bool) {
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("set_collapsed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&collapsed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SplitContainer) is_collapsed() bool {
	mut result := false
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("is_collapsed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SplitContainer) set_dragger_visibility(mode SplitContainerDraggerVisibility) {
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("set_dragger_visibility")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1168273952)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SplitContainer) get_dragger_visibility() SplitContainerDraggerVisibility {
	mut result := i64(SplitContainerDraggerVisibility.dragger_visible)
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("get_dragger_visibility")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 967297479)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{SplitContainerDraggerVisibility(result)}
}

pub fn (s &SplitContainer) set_vertical(vertical bool) {
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("set_vertical")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vertical)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SplitContainer) is_vertical() bool {
	mut result := false
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("is_vertical")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SplitContainer) set_dragging_enabled(dragging_enabled bool) {
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("set_dragging_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&dragging_enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SplitContainer) is_dragging_enabled() bool {
	mut result := false
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("is_dragging_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SplitContainer) set_drag_area_margin_begin(margin i64) {
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("set_drag_area_margin_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SplitContainer) get_drag_area_margin_begin() i64 {
	mut result := i64(0)
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("get_drag_area_margin_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SplitContainer) set_drag_area_margin_end(margin i64) {
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("set_drag_area_margin_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SplitContainer) get_drag_area_margin_end() i64 {
	mut result := i64(0)
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("get_drag_area_margin_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SplitContainer) set_drag_area_offset(offset i64) {
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("set_drag_area_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SplitContainer) get_drag_area_offset() i64 {
	mut result := i64(0)
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("get_drag_area_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SplitContainer) set_drag_area_highlight_in_editor(drag_area_highlight_in_editor bool) {
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("set_drag_area_highlight_in_editor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&drag_area_highlight_in_editor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SplitContainer) is_drag_area_highlight_in_editor_enabled() bool {
	mut result := false
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("is_drag_area_highlight_in_editor_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SplitContainer) get_drag_area_control() Control {
	mut result := Control{}
	classname := StringName.new("SplitContainer")
	fnname := StringName.new("get_drag_area_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 829782337)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
