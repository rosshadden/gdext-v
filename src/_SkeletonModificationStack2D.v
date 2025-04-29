module gd

pub struct SkeletonModificationStack2D {
	Resource
}

pub fn (s &SkeletonModificationStack2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SkeletonModificationStack2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SkeletonModificationStack2D) setup() {
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("setup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModificationStack2D) execute(delta f64, execution_mode i64) {
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("execute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1005356550)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&delta)}
	args[1] = unsafe{voidptr(&execution_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModificationStack2D) enable_all_modifications(enabled bool) {
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("enable_all_modifications")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModificationStack2D) get_modification(mod_idx i64) SkeletonModification2D {
	mut result := SkeletonModification2D{}
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("get_modification")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2570274329)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mod_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModificationStack2D) add_modification(modification SkeletonModification2D) {
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("add_modification")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 354162120)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&modification.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModificationStack2D) delete_modification(mod_idx i64) {
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("delete_modification")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mod_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModificationStack2D) set_modification(mod_idx i64, modification SkeletonModification2D) {
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("set_modification")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1098262544)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&mod_idx)}
	args[1] = voidptr(&modification.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModificationStack2D) set_modification_count(count i64) {
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("set_modification_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModificationStack2D) get_modification_count() i64 {
	mut result := i64(0)
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("get_modification_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModificationStack2D) get_is_setup() bool {
	mut result := false
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("get_is_setup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModificationStack2D) set_enabled(enabled bool) {
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("set_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModificationStack2D) get_enabled() bool {
	mut result := false
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("get_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModificationStack2D) set_strength(strength f64) {
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("set_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&strength)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModificationStack2D) get_strength() f64 {
	mut result := f64(0)
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("get_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModificationStack2D) get_skeleton() Skeleton2D {
	mut result := Skeleton2D{}
	classname := StringName.new("SkeletonModificationStack2D")
	fnname := StringName.new("get_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1697361217)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
