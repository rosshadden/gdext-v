module gd

pub struct SkeletonModification2D {
	Resource
}

pub fn (s &SkeletonModification2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SkeletonModification2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ISkeletonModification2DExecute {
mut:
	execute_(delta f64)
}

pub fn (s &SkeletonModification2D) gd_execute(delta f64) {
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("_execute")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ISkeletonModification2DSetupModification {
mut:
	setup_modification_(modification_stack SkeletonModificationStack2D)
}

pub fn (s &SkeletonModification2D) gd_setup_modification(modification_stack SkeletonModificationStack2D) {
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("_setup_modification")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3907307132)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&modification_stack.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface ISkeletonModification2DDrawEditorGizmo {
mut:
	draw_editor_gizmo_()
}

pub fn (s &SkeletonModification2D) gd_draw_editor_gizmo() {
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("_draw_editor_gizmo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2D) set_enabled(enabled bool) {
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("set_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2D) get_enabled() bool {
	mut result := false
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("get_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2D) get_modification_stack() SkeletonModificationStack2D {
	mut result := SkeletonModificationStack2D{}
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("get_modification_stack")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2137761694)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2D) set_is_setup(is_setup bool) {
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("set_is_setup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&is_setup)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2D) get_is_setup() bool {
	mut result := false
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("get_is_setup")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2D) set_execution_mode(execution_mode i64) {
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("set_execution_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&execution_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2D) get_execution_mode() i64 {
	mut result := i64(0)
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("get_execution_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2D) clamp_angle(angle f64, min f64, max f64, invert bool) f64 {
	mut result := f64(0)
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("clamp_angle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1229502682)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&angle)}
	args[1] = unsafe{voidptr(&min)}
	args[2] = unsafe{voidptr(&max)}
	args[3] = unsafe{voidptr(&invert)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SkeletonModification2D) set_editor_draw_gizmo(draw_gizmo bool) {
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("set_editor_draw_gizmo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&draw_gizmo)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SkeletonModification2D) get_editor_draw_gizmo() bool {
	mut result := false
	classname := StringName.new("SkeletonModification2D")
	fnname := StringName.new("get_editor_draw_gizmo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
