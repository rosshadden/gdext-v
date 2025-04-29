module gd

pub struct SpringBoneCollision3D {
	Node3D
}

pub fn (s &SpringBoneCollision3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SpringBoneCollision3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SpringBoneCollision3D) get_skeleton() Skeleton3D {
	mut result := Skeleton3D{}
	classname := StringName.new("SpringBoneCollision3D")
	fnname := StringName.new("get_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1488626673)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneCollision3D) set_bone_name(bone_name string) {
	classname := StringName.new("SpringBoneCollision3D")
	fnname := StringName.new("set_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(bone_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneCollision3D) get_bone_name() string {
	mut result := String{}
	classname := StringName.new("SpringBoneCollision3D")
	fnname := StringName.new("get_bone_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SpringBoneCollision3D) set_bone(bone i64) {
	classname := StringName.new("SpringBoneCollision3D")
	fnname := StringName.new("set_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneCollision3D) get_bone() i64 {
	mut result := i64(0)
	classname := StringName.new("SpringBoneCollision3D")
	fnname := StringName.new("get_bone")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneCollision3D) set_position_offset(offset Vector3) {
	classname := StringName.new("SpringBoneCollision3D")
	fnname := StringName.new("set_position_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneCollision3D) get_position_offset() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("SpringBoneCollision3D")
	fnname := StringName.new("get_position_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpringBoneCollision3D) set_rotation_offset(offset Quaternion) {
	classname := StringName.new("SpringBoneCollision3D")
	fnname := StringName.new("set_rotation_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1727505552)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpringBoneCollision3D) get_rotation_offset() Quaternion {
	mut result := Quaternion{}
	classname := StringName.new("SpringBoneCollision3D")
	fnname := StringName.new("get_rotation_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
