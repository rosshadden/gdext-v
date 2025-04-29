module gd

pub struct WorldBoundaryShape3D {
	Shape3D
}

pub fn (s &WorldBoundaryShape3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s WorldBoundaryShape3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &WorldBoundaryShape3D) set_plane(plane Plane) {
	classname := StringName.new("WorldBoundaryShape3D")
	fnname := StringName.new("set_plane")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3505987427)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&plane)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WorldBoundaryShape3D) get_plane() Plane {
	mut result := Plane{}
	classname := StringName.new("WorldBoundaryShape3D")
	fnname := StringName.new("get_plane")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2753500971)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
