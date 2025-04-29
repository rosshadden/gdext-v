module gd

pub struct PhysicalBoneSimulator3D {
	SkeletonModifier3D
}

pub fn (s &PhysicalBoneSimulator3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicalBoneSimulator3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PhysicalBoneSimulator3D) is_simulating_physics() bool {
	mut result := false
	classname := StringName.new("PhysicalBoneSimulator3D")
	fnname := StringName.new("is_simulating_physics")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicalBoneSimulator3D) physical_bones_stop_simulation() {
	classname := StringName.new("PhysicalBoneSimulator3D")
	fnname := StringName.new("physical_bones_stop_simulation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct PhysicalBoneSimulator3D_physical_bones_start_simulation_Cfg {
pub:
	bones Array
}

pub fn (s &PhysicalBoneSimulator3D) physical_bones_start_simulation(cfg PhysicalBoneSimulator3D_physical_bones_start_simulation_Cfg) {
	classname := StringName.new("PhysicalBoneSimulator3D")
	fnname := StringName.new("physical_bones_start_simulation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787316981)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.bones)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalBoneSimulator3D) physical_bones_add_collision_exception(exception RID) {
	classname := StringName.new("PhysicalBoneSimulator3D")
	fnname := StringName.new("physical_bones_add_collision_exception")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exception)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicalBoneSimulator3D) physical_bones_remove_collision_exception(exception RID) {
	classname := StringName.new("PhysicalBoneSimulator3D")
	fnname := StringName.new("physical_bones_remove_collision_exception")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&exception)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
