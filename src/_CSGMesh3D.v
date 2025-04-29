module gd

pub struct CSGMesh3D {
	CSGPrimitive3D
}

pub fn (s &CSGMesh3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CSGMesh3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CSGMesh3D) set_mesh(mesh Mesh) {
	classname := StringName.new("CSGMesh3D")
	fnname := StringName.new("set_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CSGMesh3D) get_mesh() Mesh {
	mut result := Mesh{}
	classname := StringName.new("CSGMesh3D")
	fnname := StringName.new("get_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4081188045)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CSGMesh3D) set_material(material Material) {
	classname := StringName.new("CSGMesh3D")
	fnname := StringName.new("set_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CSGMesh3D) get_material() Material {
	mut result := Material{}
	classname := StringName.new("CSGMesh3D")
	fnname := StringName.new("get_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
