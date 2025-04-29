module gd

pub struct NavigationMeshSourceGeometryData3D {
	Resource
}

pub fn (s &NavigationMeshSourceGeometryData3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s NavigationMeshSourceGeometryData3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &NavigationMeshSourceGeometryData3D) set_vertices(vertices PackedFloat32Array) {
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("set_vertices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vertices)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData3D) get_vertices() PackedFloat32Array {
	mut result := PackedFloat32Array{}
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("get_vertices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationMeshSourceGeometryData3D) set_indices(indices PackedInt32Array) {
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("set_indices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&indices)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData3D) get_indices() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("get_indices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationMeshSourceGeometryData3D) append_arrays(vertices PackedFloat32Array, indices PackedInt32Array) {
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("append_arrays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3117535015)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&vertices)}
	args[1] = unsafe{voidptr(&indices)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData3D) clear() {
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData3D) has_data() bool {
	mut result := false
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("has_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationMeshSourceGeometryData3D) add_mesh(mesh Mesh, xform Transform3D) {
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("add_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 975462459)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&mesh.ptr)
	args[1] = unsafe{voidptr(&xform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData3D) add_mesh_array(mesh_array Array, xform Transform3D) {
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("add_mesh_array")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235710913)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&mesh_array)}
	args[1] = unsafe{voidptr(&xform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData3D) add_faces(faces PackedVector3Array, xform Transform3D) {
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("add_faces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1440358797)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&faces)}
	args[1] = unsafe{voidptr(&xform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData3D) merge(other_geometry NavigationMeshSourceGeometryData3D) {
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("merge")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 655828145)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&other_geometry.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData3D) add_projected_obstruction(vertices PackedVector3Array, elevation f64, height f64, carve bool) {
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("add_projected_obstruction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3351846707)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&vertices)}
	args[1] = unsafe{voidptr(&elevation)}
	args[2] = unsafe{voidptr(&height)}
	args[3] = unsafe{voidptr(&carve)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData3D) clear_projected_obstructions() {
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("clear_projected_obstructions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData3D) set_projected_obstructions(projected_obstructions Array) {
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("set_projected_obstructions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&projected_obstructions)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData3D) get_projected_obstructions() Array {
	mut result := Array{}
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("get_projected_obstructions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationMeshSourceGeometryData3D) get_bounds() AABB {
	mut result := AABB{}
	classname := StringName.new("NavigationMeshSourceGeometryData3D")
	fnname := StringName.new("get_bounds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1021181044)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
