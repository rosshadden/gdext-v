module gd

pub struct Occluder3D {
	Resource
}

pub fn (s &Occluder3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Occluder3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Occluder3D) get_vertices() PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("Occluder3D")
	fnname := StringName.new("get_vertices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Occluder3D) get_indices() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("Occluder3D")
	fnname := StringName.new("get_indices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
