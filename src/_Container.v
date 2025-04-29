module gd

pub struct Container {
	Control
}

pub fn (s &Container) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Container) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IContainerGetAllowedSizeFlagsHorizontal {
mut:
	get_allowed_size_flags_horizontal_() PackedInt32Array
}

pub fn (s &Container) gd_get_allowed_size_flags_horizontal() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("Container")
	fnname := StringName.new("_get_allowed_size_flags_horizontal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IContainerGetAllowedSizeFlagsVertical {
mut:
	get_allowed_size_flags_vertical_() PackedInt32Array
}

pub fn (s &Container) gd_get_allowed_size_flags_vertical() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("Container")
	fnname := StringName.new("_get_allowed_size_flags_vertical")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Container) queue_sort() {
	classname := StringName.new("Container")
	fnname := StringName.new("queue_sort")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Container) fit_child_in_rect(child Control, rect Rect2) {
	classname := StringName.new("Container")
	fnname := StringName.new("fit_child_in_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1993438598)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&child.ptr)
	args[1] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
