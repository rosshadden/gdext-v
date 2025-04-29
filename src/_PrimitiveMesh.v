module gd

pub struct PrimitiveMesh {
	Mesh
}

pub fn (s &PrimitiveMesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PrimitiveMesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IPrimitiveMeshCreateMeshArray {
mut:
	create_mesh_array_() Array
}

pub fn (s &PrimitiveMesh) gd_create_mesh_array() Array {
	mut result := Array{}
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("_create_mesh_array")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PrimitiveMesh) set_material(material Material) {
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("set_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PrimitiveMesh) get_material() Material {
	mut result := Material{}
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("get_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PrimitiveMesh) get_mesh_arrays() Array {
	mut result := Array{}
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("get_mesh_arrays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PrimitiveMesh) set_custom_aabb(aabb AABB) {
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("set_custom_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&aabb)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PrimitiveMesh) get_custom_aabb() AABB {
	mut result := AABB{}
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("get_custom_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PrimitiveMesh) set_flip_faces(flip_faces bool) {
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("set_flip_faces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&flip_faces)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PrimitiveMesh) get_flip_faces() bool {
	mut result := false
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("get_flip_faces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PrimitiveMesh) set_add_uv2(add_uv2 bool) {
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("set_add_uv2")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&add_uv2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PrimitiveMesh) get_add_uv2() bool {
	mut result := false
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("get_add_uv2")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PrimitiveMesh) set_uv2_padding(uv2_padding f64) {
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("set_uv2_padding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&uv2_padding)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PrimitiveMesh) get_uv2_padding() f64 {
	mut result := f64(0)
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("get_uv2_padding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PrimitiveMesh) request_update() {
	classname := StringName.new("PrimitiveMesh")
	fnname := StringName.new("request_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
