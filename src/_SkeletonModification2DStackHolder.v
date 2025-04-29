module gd

pub struct SkeletonModification2DStackHolder {
	SkeletonModification2D
}

pub fn (s &SkeletonModification2DStackHolder) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SkeletonModification2DStackHolder) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SkeletonModification2DStackHolder) set_held_modification_stack(held_modification_stack SkeletonModificationStack2D) {
	classname := StringName.new("SkeletonModification2DStackHolder")
	fnname := StringName.new("set_held_modification_stack")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3907307132)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&held_modification_stack.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DStackHolder) get_held_modification_stack() SkeletonModificationStack2D {
	mut result := SkeletonModificationStack2D{}
	classname := StringName.new("SkeletonModification2DStackHolder")
	fnname := StringName.new("get_held_modification_stack")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2107508396)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
