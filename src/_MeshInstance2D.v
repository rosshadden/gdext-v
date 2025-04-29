module gd

pub struct MeshInstance2D {
	Node2D
}

pub fn (s &MeshInstance2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MeshInstance2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &MeshInstance2D) set_mesh(mesh Mesh) {
	classname := StringName.new("MeshInstance2D")
	fnname := StringName.new("set_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshInstance2D) get_mesh() Mesh {
	mut result := Mesh{}
	classname := StringName.new("MeshInstance2D")
	fnname := StringName.new("get_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshInstance2D) set_texture(texture Texture2D) {
	classname := StringName.new("MeshInstance2D")
	fnname := StringName.new("set_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshInstance2D) get_texture() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("MeshInstance2D")
	fnname := StringName.new("get_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
