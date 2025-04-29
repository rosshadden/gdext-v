module gd

pub enum SkeletonModifier3DBoneAxis as i64 {
	bone_axis_plus_x = 0
	bone_axis_minus_x = 1
	bone_axis_plus_y = 2
	bone_axis_minus_y = 3
	bone_axis_plus_z = 4
	bone_axis_minus_z = 5
}

pub struct SkeletonModifier3D {
	Node3D
}

pub fn (s &SkeletonModifier3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SkeletonModifier3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ISkeletonModifier3DProcessModificationWithDelta {
mut:
	process_modification_with_delta_(delta f64)
}

pub fn (s &SkeletonModifier3D) gd_process_modification_with_delta(delta f64) {
	classname := StringName.new("SkeletonModifier3D")
	fnname := StringName.new("_process_modification_with_delta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ISkeletonModifier3DProcessModification {
mut:
	process_modification_()
}

pub fn (s &SkeletonModifier3D) gd_process_modification() {
	classname := StringName.new("SkeletonModifier3D")
	fnname := StringName.new("_process_modification")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModifier3D) get_skeleton() Skeleton3D {
	mut result := Skeleton3D{}
	classname := StringName.new("SkeletonModifier3D")
	fnname := StringName.new("get_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1488626673)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModifier3D) set_active(active bool) {
	classname := StringName.new("SkeletonModifier3D")
	fnname := StringName.new("set_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&active)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModifier3D) is_active() bool {
	mut result := false
	classname := StringName.new("SkeletonModifier3D")
	fnname := StringName.new("is_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModifier3D) set_influence(influence f64) {
	classname := StringName.new("SkeletonModifier3D")
	fnname := StringName.new("set_influence")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&influence)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModifier3D) get_influence() f64 {
	mut result := f64(0)
	classname := StringName.new("SkeletonModifier3D")
	fnname := StringName.new("get_influence")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
