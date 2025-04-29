module gd

pub struct VisibleOnScreenNotifier2D {
	Node2D
}

pub fn (s &VisibleOnScreenNotifier2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisibleOnScreenNotifier2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisibleOnScreenNotifier2D) set_rect(rect Rect2) {
	classname := StringName.new("VisibleOnScreenNotifier2D")
	fnname := StringName.new("set_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisibleOnScreenNotifier2D) get_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("VisibleOnScreenNotifier2D")
	fnname := StringName.new("get_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisibleOnScreenNotifier2D) set_show_rect(show_rect bool) {
	classname := StringName.new("VisibleOnScreenNotifier2D")
	fnname := StringName.new("set_show_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&show_rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisibleOnScreenNotifier2D) is_showing_rect() bool {
	mut result := false
	classname := StringName.new("VisibleOnScreenNotifier2D")
	fnname := StringName.new("is_showing_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisibleOnScreenNotifier2D) is_on_screen() bool {
	mut result := false
	classname := StringName.new("VisibleOnScreenNotifier2D")
	fnname := StringName.new("is_on_screen")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
