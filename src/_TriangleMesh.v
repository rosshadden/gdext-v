module gd

pub struct TriangleMesh {
	RefCounted
}

pub fn (s &TriangleMesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TriangleMesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TriangleMesh) create_from_faces(faces PackedVector3Array) bool {
	mut result := false
	classname := StringName.new("TriangleMesh")
	fnname := StringName.new("create_from_faces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2637816732)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&faces)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TriangleMesh) get_faces() PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("TriangleMesh")
	fnname := StringName.new("get_faces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TriangleMesh) intersect_segment(begin Vector3, end Vector3) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("TriangleMesh")
	fnname := StringName.new("intersect_segment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3648293151)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&begin)}
	args[1] = unsafe{voidptr(&end)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TriangleMesh) intersect_ray(begin Vector3, dir Vector3) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("TriangleMesh")
	fnname := StringName.new("intersect_ray")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3648293151)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&begin)}
	args[1] = unsafe{voidptr(&dir)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
