module gd

pub enum PlaneMeshOrientation as i64 {
	face_x = 0
	face_y = 1
	face_z = 2
}

pub struct PlaneMesh {
	PrimitiveMesh
}

pub fn (s &PlaneMesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PlaneMesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PlaneMesh) set_size(size Vector2) {
	classname := StringName.new("PlaneMesh")
	fnname := StringName.new("set_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PlaneMesh) get_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PlaneMesh")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PlaneMesh) set_subdivide_width(subdivide i64) {
	classname := StringName.new("PlaneMesh")
	fnname := StringName.new("set_subdivide_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&subdivide)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PlaneMesh) get_subdivide_width() i64 {
	mut result := i64(0)
	classname := StringName.new("PlaneMesh")
	fnname := StringName.new("get_subdivide_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PlaneMesh) set_subdivide_depth(subdivide i64) {
	classname := StringName.new("PlaneMesh")
	fnname := StringName.new("set_subdivide_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&subdivide)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PlaneMesh) get_subdivide_depth() i64 {
	mut result := i64(0)
	classname := StringName.new("PlaneMesh")
	fnname := StringName.new("get_subdivide_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PlaneMesh) set_center_offset(offset Vector3) {
	classname := StringName.new("PlaneMesh")
	fnname := StringName.new("set_center_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PlaneMesh) get_center_offset() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PlaneMesh")
	fnname := StringName.new("get_center_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PlaneMesh) set_orientation(orientation PlaneMeshOrientation) {
	classname := StringName.new("PlaneMesh")
	fnname := StringName.new("set_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2751399687)
	mut args := unsafe { [1]voidptr{} }
	i64_orientation := i64(orientation)
	args[0] = unsafe{voidptr(&i64_orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PlaneMesh) get_orientation() PlaneMeshOrientation {
	mut result := i64(PlaneMeshOrientation.face_x)
	classname := StringName.new("PlaneMesh")
	fnname := StringName.new("get_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227599250)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{PlaneMeshOrientation(result)}
}
