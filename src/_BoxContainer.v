module gd

pub enum BoxContainerAlignmentMode as i64 {
	alignment_begin = 0
	alignment_center = 1
	alignment_end = 2
}

pub struct BoxContainer {
	Container
}

pub fn (s &BoxContainer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s BoxContainer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &BoxContainer) add_spacer(begin bool) Control {
	mut result := Control{}
	classname := StringName.new("BoxContainer")
	fnname := StringName.new("add_spacer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1326660695)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&begin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &BoxContainer) set_alignment(alignment BoxContainerAlignmentMode) {
	classname := StringName.new("BoxContainer")
	fnname := StringName.new("set_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2456745134)
	mut args := unsafe { [1]voidptr{} }
	i64_alignment := i64(alignment)
	args[0] = unsafe{voidptr(&i64_alignment)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BoxContainer) get_alignment() BoxContainerAlignmentMode {
	mut result := i64(BoxContainerAlignmentMode.alignment_begin)
	classname := StringName.new("BoxContainer")
	fnname := StringName.new("get_alignment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1915476527)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{BoxContainerAlignmentMode(result)}
}

pub fn (s &BoxContainer) set_vertical(vertical bool) {
	classname := StringName.new("BoxContainer")
	fnname := StringName.new("set_vertical")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vertical)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &BoxContainer) is_vertical() bool {
	mut result := false
	classname := StringName.new("BoxContainer")
	fnname := StringName.new("is_vertical")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
