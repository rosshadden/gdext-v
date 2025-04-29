module gd

pub struct NavigationMeshGenerator {
	Object
}

pub fn NavigationMeshGenerator.get_singleton() NavigationMeshGenerator {
	sn := StringName.new("NavigationMeshGenerator")
	result := NavigationMeshGenerator{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &NavigationMeshGenerator) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s NavigationMeshGenerator) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &NavigationMeshGenerator) bake(navigation_mesh NavigationMesh, root_node Node) {
	classname := StringName.new("NavigationMeshGenerator")
	fnname := StringName.new("bake")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1401173477)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&navigation_mesh.ptr)
	args[1] = voidptr(&root_node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshGenerator) clear(navigation_mesh NavigationMesh) {
	classname := StringName.new("NavigationMeshGenerator")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2923361153)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&navigation_mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct NavigationMeshGenerator_parse_source_geometry_data_Cfg {
pub:
	callback Callable
}

pub fn (s &NavigationMeshGenerator) parse_source_geometry_data(navigation_mesh NavigationMesh, source_geometry_data NavigationMeshSourceGeometryData3D, root_node Node, cfg NavigationMeshGenerator_parse_source_geometry_data_Cfg) {
	classname := StringName.new("NavigationMeshGenerator")
	fnname := StringName.new("parse_source_geometry_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3172802542)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&navigation_mesh.ptr)
	args[1] = voidptr(&source_geometry_data.ptr)
	args[2] = voidptr(&root_node.ptr)
	args[3] = unsafe{voidptr(&cfg.callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct NavigationMeshGenerator_bake_from_source_geometry_data_Cfg {
pub:
	callback Callable
}

pub fn (s &NavigationMeshGenerator) bake_from_source_geometry_data(navigation_mesh NavigationMesh, source_geometry_data NavigationMeshSourceGeometryData3D, cfg NavigationMeshGenerator_bake_from_source_geometry_data_Cfg) {
	classname := StringName.new("NavigationMeshGenerator")
	fnname := StringName.new("bake_from_source_geometry_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286748856)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&navigation_mesh.ptr)
	args[1] = voidptr(&source_geometry_data.ptr)
	args[2] = unsafe{voidptr(&cfg.callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
