module gd

pub enum RibbonTrailMeshShape as i64 {
	shape_flat = 0
	shape_cross = 1
}

pub struct RibbonTrailMesh {
	PrimitiveMesh
}

pub fn (s &RibbonTrailMesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RibbonTrailMesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RibbonTrailMesh) set_size(size f64) {
	classname := StringName.new("RibbonTrailMesh")
	fnname := StringName.new("set_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RibbonTrailMesh) get_size() f64 {
	mut result := f64(0)
	classname := StringName.new("RibbonTrailMesh")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RibbonTrailMesh) set_sections(sections i64) {
	classname := StringName.new("RibbonTrailMesh")
	fnname := StringName.new("set_sections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&sections)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RibbonTrailMesh) get_sections() i64 {
	mut result := i64(0)
	classname := StringName.new("RibbonTrailMesh")
	fnname := StringName.new("get_sections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RibbonTrailMesh) set_section_length(section_length f64) {
	classname := StringName.new("RibbonTrailMesh")
	fnname := StringName.new("set_section_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&section_length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RibbonTrailMesh) get_section_length() f64 {
	mut result := f64(0)
	classname := StringName.new("RibbonTrailMesh")
	fnname := StringName.new("get_section_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RibbonTrailMesh) set_section_segments(section_segments i64) {
	classname := StringName.new("RibbonTrailMesh")
	fnname := StringName.new("set_section_segments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&section_segments)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RibbonTrailMesh) get_section_segments() i64 {
	mut result := i64(0)
	classname := StringName.new("RibbonTrailMesh")
	fnname := StringName.new("get_section_segments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RibbonTrailMesh) set_curve(curve Curve) {
	classname := StringName.new("RibbonTrailMesh")
	fnname := StringName.new("set_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RibbonTrailMesh) get_curve() Curve {
	mut result := Curve{}
	classname := StringName.new("RibbonTrailMesh")
	fnname := StringName.new("get_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RibbonTrailMesh) set_shape(shape RibbonTrailMeshShape) {
	classname := StringName.new("RibbonTrailMesh")
	fnname := StringName.new("set_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684440262)
	mut args := unsafe { [1]voidptr{} }
	i64_shape := i64(shape)
	args[0] = unsafe{voidptr(&i64_shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RibbonTrailMesh) get_shape() RibbonTrailMeshShape {
	mut result := i64(RibbonTrailMeshShape.shape_flat)
	classname := StringName.new("RibbonTrailMesh")
	fnname := StringName.new("get_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1317484155)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RibbonTrailMeshShape(result)}
}
