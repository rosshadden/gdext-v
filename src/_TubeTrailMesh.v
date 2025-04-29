module gd

pub struct TubeTrailMesh {
	PrimitiveMesh
}

pub fn (s &TubeTrailMesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TubeTrailMesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TubeTrailMesh) set_radius(radius f64) {
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("set_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TubeTrailMesh) get_radius() f64 {
	mut result := f64(0)
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("get_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TubeTrailMesh) set_radial_steps(radial_steps i64) {
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("set_radial_steps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&radial_steps)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TubeTrailMesh) get_radial_steps() i64 {
	mut result := i64(0)
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("get_radial_steps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TubeTrailMesh) set_sections(sections i64) {
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("set_sections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&sections)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TubeTrailMesh) get_sections() i64 {
	mut result := i64(0)
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("get_sections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TubeTrailMesh) set_section_length(section_length f64) {
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("set_section_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&section_length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TubeTrailMesh) get_section_length() f64 {
	mut result := f64(0)
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("get_section_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TubeTrailMesh) set_section_rings(section_rings i64) {
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("set_section_rings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&section_rings)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TubeTrailMesh) get_section_rings() i64 {
	mut result := i64(0)
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("get_section_rings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TubeTrailMesh) set_cap_top(cap_top bool) {
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("set_cap_top")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cap_top)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TubeTrailMesh) is_cap_top() bool {
	mut result := false
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("is_cap_top")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TubeTrailMesh) set_cap_bottom(cap_bottom bool) {
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("set_cap_bottom")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cap_bottom)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TubeTrailMesh) is_cap_bottom() bool {
	mut result := false
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("is_cap_bottom")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TubeTrailMesh) set_curve(curve Curve) {
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("set_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TubeTrailMesh) get_curve() Curve {
	mut result := Curve{}
	classname := StringName.new("TubeTrailMesh")
	fnname := StringName.new("get_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
