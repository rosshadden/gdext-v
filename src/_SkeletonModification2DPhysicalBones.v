module gd

pub struct SkeletonModification2DPhysicalBones {
	SkeletonModification2D
}

pub fn (s &SkeletonModification2DPhysicalBones) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SkeletonModification2DPhysicalBones) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SkeletonModification2DPhysicalBones) set_physical_bone_chain_length(length i64) {
	classname := StringName.new("SkeletonModification2DPhysicalBones")
	fnname := StringName.new("set_physical_bone_chain_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DPhysicalBones) get_physical_bone_chain_length() i64 {
	mut result := i64(0)
	classname := StringName.new("SkeletonModification2DPhysicalBones")
	fnname := StringName.new("get_physical_bone_chain_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DPhysicalBones) set_physical_bone_node(joint_idx i64, physicalbone2d_node NodePath) {
	classname := StringName.new("SkeletonModification2DPhysicalBones")
	fnname := StringName.new("set_physical_bone_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	args[1] = unsafe{voidptr(&physicalbone2d_node)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2DPhysicalBones) get_physical_bone_node(joint_idx i64) NodePath {
	mut result := NodePath{}
	classname := StringName.new("SkeletonModification2DPhysicalBones")
	fnname := StringName.new("get_physical_bone_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2DPhysicalBones) fetch_physical_bones() {
	classname := StringName.new("SkeletonModification2DPhysicalBones")
	fnname := StringName.new("fetch_physical_bones")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct SkeletonModification2DPhysicalBones_start_simulation_Cfg {
pub:
	bones Array
}

pub fn (s &SkeletonModification2DPhysicalBones) start_simulation(cfg SkeletonModification2DPhysicalBones_start_simulation_Cfg) {
	classname := StringName.new("SkeletonModification2DPhysicalBones")
	fnname := StringName.new("start_simulation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787316981)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.bones)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct SkeletonModification2DPhysicalBones_stop_simulation_Cfg {
pub:
	bones Array
}

pub fn (s &SkeletonModification2DPhysicalBones) stop_simulation(cfg SkeletonModification2DPhysicalBones_stop_simulation_Cfg) {
	classname := StringName.new("SkeletonModification2DPhysicalBones")
	fnname := StringName.new("stop_simulation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787316981)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.bones)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
