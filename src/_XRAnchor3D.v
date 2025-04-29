module gd

pub struct XRAnchor3D {
	XRNode3D
}

pub fn (s &XRAnchor3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRAnchor3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRAnchor3D) get_size() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("XRAnchor3D")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRAnchor3D) get_plane() Plane {
	mut result := Plane{}
	classname := StringName.new("XRAnchor3D")
	fnname := StringName.new("get_plane")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2753500971)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
