module gd

pub struct VisibleOnScreenNotifier3D {
	VisualInstance3D
}

pub fn (s &VisibleOnScreenNotifier3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisibleOnScreenNotifier3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisibleOnScreenNotifier3D) set_aabb(rect AABB) {
	classname := StringName.new("VisibleOnScreenNotifier3D")
	fnname := StringName.new("set_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisibleOnScreenNotifier3D) is_on_screen() bool {
	mut result := false
	classname := StringName.new("VisibleOnScreenNotifier3D")
	fnname := StringName.new("is_on_screen")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
