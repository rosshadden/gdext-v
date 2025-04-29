module gd

pub struct PlaceholderMesh {
	Mesh
}

pub fn (s &PlaceholderMesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PlaceholderMesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PlaceholderMesh) set_aabb(aabb AABB) {
	classname := StringName.new("PlaceholderMesh")
	fnname := StringName.new("set_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&aabb)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
