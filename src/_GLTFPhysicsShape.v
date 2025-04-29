module gd

pub struct GLTFPhysicsShape {
	Resource
}

pub fn (s &GLTFPhysicsShape) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFPhysicsShape) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn GLTFPhysicsShape.from_node(shape_node CollisionShape3D) GLTFPhysicsShape {
	mut result := GLTFPhysicsShape{}
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("from_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3613751275)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&shape_node.ptr)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct GLTFPhysicsShape_to_node_Cfg {
pub:
	cache_shapes bool
}

pub fn (s &GLTFPhysicsShape) to_node(cfg GLTFPhysicsShape_to_node_Cfg) CollisionShape3D {
	mut result := CollisionShape3D{}
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("to_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 563689933)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.cache_shapes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn GLTFPhysicsShape.from_resource(shape_resource Shape3D) GLTFPhysicsShape {
	mut result := GLTFPhysicsShape{}
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("from_resource")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3845569786)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&shape_resource.ptr)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct GLTFPhysicsShape_to_resource_Cfg {
pub:
	cache_shapes bool
}

pub fn (s &GLTFPhysicsShape) to_resource(cfg GLTFPhysicsShape_to_resource_Cfg) Shape3D {
	mut result := Shape3D{}
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("to_resource")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1913542110)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.cache_shapes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn GLTFPhysicsShape.from_dictionary(dictionary Dictionary) GLTFPhysicsShape {
	mut result := GLTFPhysicsShape{}
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("from_dictionary")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2390691823)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&dictionary)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsShape) to_dictionary() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("to_dictionary")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsShape) get_shape_type() string {
	mut result := String{}
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("get_shape_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GLTFPhysicsShape) set_shape_type(shape_type string) {
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("set_shape_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(shape_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsShape) get_size() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsShape) set_size(size Vector3) {
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("set_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsShape) get_radius() f64 {
	mut result := f64(0)
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("get_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsShape) set_radius(radius f64) {
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("set_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsShape) get_height() f64 {
	mut result := f64(0)
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsShape) set_height(height f64) {
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("set_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&height)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsShape) get_is_trigger() bool {
	mut result := false
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("get_is_trigger")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsShape) set_is_trigger(is_trigger bool) {
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("set_is_trigger")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&is_trigger)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsShape) get_mesh_index() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("get_mesh_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsShape) set_mesh_index(mesh_index i64) {
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("set_mesh_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mesh_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsShape) get_importer_mesh() ImporterMesh {
	mut result := ImporterMesh{}
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("get_importer_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3161779525)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsShape) set_importer_mesh(importer_mesh ImporterMesh) {
	classname := StringName.new("GLTFPhysicsShape")
	fnname := StringName.new("set_importer_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2255166972)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&importer_mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
