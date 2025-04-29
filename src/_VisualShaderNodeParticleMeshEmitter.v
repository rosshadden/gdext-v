module gd

pub struct VisualShaderNodeParticleMeshEmitter {
	VisualShaderNodeParticleEmitter
}

pub fn (s &VisualShaderNodeParticleMeshEmitter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeParticleMeshEmitter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeParticleMeshEmitter) set_mesh(mesh Mesh) {
	classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
	fnname := StringName.new("set_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeParticleMeshEmitter) get_mesh() Mesh {
	mut result := Mesh{}
	classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
	fnname := StringName.new("get_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeParticleMeshEmitter) set_use_all_surfaces(enabled bool) {
	classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
	fnname := StringName.new("set_use_all_surfaces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeParticleMeshEmitter) is_use_all_surfaces() bool {
	mut result := false
	classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
	fnname := StringName.new("is_use_all_surfaces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeParticleMeshEmitter) set_surface_index(surface_index i64) {
	classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
	fnname := StringName.new("set_surface_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surface_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeParticleMeshEmitter) get_surface_index() i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
	fnname := StringName.new("get_surface_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
