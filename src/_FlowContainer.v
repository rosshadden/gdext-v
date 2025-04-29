module gd

pub enum FlowContainerAlignmentMode as i64 {
	alignment_begin = 0
	alignment_center = 1
	alignment_end = 2
}

pub enum FlowContainerLastWrapAlignmentMode as i64 {
	last_wrap_alignment_inherit = 0
	last_wrap_alignment_begin = 1
	last_wrap_alignment_center = 2
	last_wrap_alignment_end = 3
}

pub struct FlowContainer {
	Container
}

pub fn (s &FlowContainer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s FlowContainer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &FlowContainer) get_line_count() i64 {
	mut result := i64(0)
	classname := StringName.new("FlowContainer")
	fnname := StringName.new("get_line_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FlowContainer) set_alignment(alignment FlowContainerAlignmentMode) {
	classname := StringName.new("FlowContainer")
	fnname := StringName.new("set_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 575250951)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FlowContainer) get_alignment() FlowContainerAlignmentMode {
	mut result := i64(FlowContainerAlignmentMode.alignment_begin)
	classname := StringName.new("FlowContainer")
	fnname := StringName.new("get_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3749743559)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{FlowContainerAlignmentMode(result)}
}

pub fn (s &FlowContainer) set_last_wrap_alignment(last_wrap_alignment FlowContainerLastWrapAlignmentMode) {
	classname := StringName.new("FlowContainer")
	fnname := StringName.new("set_last_wrap_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899697495)
	mut args := unsafe { [1]voidptr{} }
	i64_last_wrap_alignment := i64(last_wrap_alignment)
	args[0] = unsafe{voidptr(&i64_last_wrap_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FlowContainer) get_last_wrap_alignment() FlowContainerLastWrapAlignmentMode {
	mut result := i64(FlowContainerLastWrapAlignmentMode.last_wrap_alignment_inherit)
	classname := StringName.new("FlowContainer")
	fnname := StringName.new("get_last_wrap_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3743456014)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{FlowContainerLastWrapAlignmentMode(result)}
}

pub fn (s &FlowContainer) set_vertical(vertical bool) {
	classname := StringName.new("FlowContainer")
	fnname := StringName.new("set_vertical")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vertical)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FlowContainer) is_vertical() bool {
	mut result := false
	classname := StringName.new("FlowContainer")
	fnname := StringName.new("is_vertical")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FlowContainer) set_reverse_fill(reverse_fill bool) {
	classname := StringName.new("FlowContainer")
	fnname := StringName.new("set_reverse_fill")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&reverse_fill)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FlowContainer) is_reverse_fill() bool {
	mut result := false
	classname := StringName.new("FlowContainer")
	fnname := StringName.new("is_reverse_fill")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
