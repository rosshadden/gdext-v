module gd

pub struct PhysicalBone2D {
	RigidBody2D
}

pub fn (s &PhysicalBone2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicalBone2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PhysicalBone2D) get_joint() Joint2D {
	mut result := Joint2D{}
	classname := StringName.new("PhysicalBone2D")
	fnname := StringName.new("get_joint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3582132112)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalBone2D) get_auto_configure_joint() bool {
	mut result := false
	classname := StringName.new("PhysicalBone2D")
	fnname := StringName.new("get_auto_configure_joint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalBone2D) set_auto_configure_joint(auto_configure_joint bool) {
	classname := StringName.new("PhysicalBone2D")
	fnname := StringName.new("set_auto_configure_joint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&auto_configure_joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalBone2D) set_simulate_physics(simulate_physics bool) {
	classname := StringName.new("PhysicalBone2D")
	fnname := StringName.new("set_simulate_physics")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&simulate_physics)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalBone2D) get_simulate_physics() bool {
	mut result := false
	classname := StringName.new("PhysicalBone2D")
	fnname := StringName.new("get_simulate_physics")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalBone2D) is_simulating_physics() bool {
	mut result := false
	classname := StringName.new("PhysicalBone2D")
	fnname := StringName.new("is_simulating_physics")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalBone2D) set_bone2d_nodepath(nodepath NodePath) {
	classname := StringName.new("PhysicalBone2D")
	fnname := StringName.new("set_bone2d_nodepath")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&nodepath)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalBone2D) get_bone2d_nodepath() NodePath {
	mut result := NodePath{}
	classname := StringName.new("PhysicalBone2D")
	fnname := StringName.new("get_bone2d_nodepath")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalBone2D) set_bone2d_index(bone_index i64) {
	classname := StringName.new("PhysicalBone2D")
	fnname := StringName.new("set_bone2d_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bone_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalBone2D) get_bone2d_index() i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicalBone2D")
	fnname := StringName.new("get_bone2d_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalBone2D) set_follow_bone_when_simulating(follow_bone bool) {
	classname := StringName.new("PhysicalBone2D")
	fnname := StringName.new("set_follow_bone_when_simulating")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&follow_bone)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalBone2D) get_follow_bone_when_simulating() bool {
	mut result := false
	classname := StringName.new("PhysicalBone2D")
	fnname := StringName.new("get_follow_bone_when_simulating")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
