module gd

pub struct GLTFPhysicsBody {
	Resource
}

pub fn (s &GLTFPhysicsBody) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFPhysicsBody) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn GLTFPhysicsBody.from_node(body_node CollisionObject3D) GLTFPhysicsBody {
	mut result := GLTFPhysicsBody{}
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("from_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 420544174)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&body_node.ptr)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsBody) to_node() CollisionObject3D {
	mut result := CollisionObject3D{}
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("to_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3224013656)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn GLTFPhysicsBody.from_dictionary(dictionary Dictionary) GLTFPhysicsBody {
	mut result := GLTFPhysicsBody{}
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("from_dictionary")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1177544336)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&dictionary)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsBody) to_dictionary() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("to_dictionary")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsBody) get_body_type() string {
	mut result := String{}
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("get_body_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GLTFPhysicsBody) set_body_type(body_type string) {
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("set_body_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(body_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsBody) get_mass() f64 {
	mut result := f64(0)
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("get_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsBody) set_mass(mass f64) {
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("set_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mass)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsBody) get_linear_velocity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("get_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsBody) set_linear_velocity(linear_velocity Vector3) {
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("set_linear_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&linear_velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsBody) get_angular_velocity() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("get_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsBody) set_angular_velocity(angular_velocity Vector3) {
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("set_angular_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&angular_velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsBody) get_center_of_mass() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("get_center_of_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsBody) set_center_of_mass(center_of_mass Vector3) {
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("set_center_of_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&center_of_mass)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsBody) get_inertia_diagonal() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("get_inertia_diagonal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsBody) set_inertia_diagonal(inertia_diagonal Vector3) {
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("set_inertia_diagonal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&inertia_diagonal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsBody) get_inertia_orientation() Quaternion {
	mut result := Quaternion{}
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("get_inertia_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsBody) set_inertia_orientation(inertia_orientation Quaternion) {
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("set_inertia_orientation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1727505552)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&inertia_orientation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFPhysicsBody) get_inertia_tensor() Basis {
	mut result := Basis{}
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("get_inertia_tensor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2716978435)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFPhysicsBody) set_inertia_tensor(inertia_tensor Basis) {
	classname := StringName.new("GLTFPhysicsBody")
	fnname := StringName.new("set_inertia_tensor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1055510324)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&inertia_tensor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
