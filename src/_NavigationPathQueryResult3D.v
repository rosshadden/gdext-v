module gd

pub enum NavigationPathQueryResult3DPathSegmentType as i64 {
	path_segment_type_region = 0
	path_segment_type_link = 1
}

pub struct NavigationPathQueryResult3D {
	RefCounted
}

pub fn (s &NavigationPathQueryResult3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s NavigationPathQueryResult3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &NavigationPathQueryResult3D) set_path(path PackedVector3Array) {
	classname := StringName.new("NavigationPathQueryResult3D")
	fnname := StringName.new("set_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryResult3D) get_path() PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("NavigationPathQueryResult3D")
	fnname := StringName.new("get_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPathQueryResult3D) set_path_types(path_types PackedInt32Array) {
	classname := StringName.new("NavigationPathQueryResult3D")
	fnname := StringName.new("set_path_types")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path_types)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryResult3D) get_path_types() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("NavigationPathQueryResult3D")
	fnname := StringName.new("get_path_types")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPathQueryResult3D) set_path_rids(path_rids Array) {
	classname := StringName.new("NavigationPathQueryResult3D")
	fnname := StringName.new("set_path_rids")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path_rids)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryResult3D) get_path_rids() Array {
	mut result := Array{}
	classname := StringName.new("NavigationPathQueryResult3D")
	fnname := StringName.new("get_path_rids")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPathQueryResult3D) set_path_owner_ids(path_owner_ids PackedInt64Array) {
	classname := StringName.new("NavigationPathQueryResult3D")
	fnname := StringName.new("set_path_owner_ids")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3709968205)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path_owner_ids)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPathQueryResult3D) get_path_owner_ids() PackedInt64Array {
	mut result := PackedInt64Array{}
	classname := StringName.new("NavigationPathQueryResult3D")
	fnname := StringName.new("get_path_owner_ids")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 235988956)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPathQueryResult3D) reset() {
	classname := StringName.new("NavigationPathQueryResult3D")
	fnname := StringName.new("reset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
