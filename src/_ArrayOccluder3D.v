module gd

pub struct ArrayOccluder3D {
	Occluder3D
}

pub fn (s &ArrayOccluder3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ArrayOccluder3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ArrayOccluder3D) set_arrays(vertices PackedVector3Array, indices PackedInt32Array) {
	classname := StringName.new("ArrayOccluder3D")
	fnname := StringName.new("set_arrays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3233972621)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&vertices)}
	args[1] = unsafe{voidptr(&indices)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayOccluder3D) set_vertices(vertices PackedVector3Array) {
	classname := StringName.new("ArrayOccluder3D")
	fnname := StringName.new("set_vertices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vertices)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayOccluder3D) set_indices(indices PackedInt32Array) {
	classname := StringName.new("ArrayOccluder3D")
	fnname := StringName.new("set_indices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&indices)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
