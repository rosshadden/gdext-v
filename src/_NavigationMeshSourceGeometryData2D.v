module gd

pub struct NavigationMeshSourceGeometryData2D {
	Resource
}

pub fn (s &NavigationMeshSourceGeometryData2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s NavigationMeshSourceGeometryData2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &NavigationMeshSourceGeometryData2D) clear() {
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData2D) has_data() bool {
	mut result := false
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("has_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationMeshSourceGeometryData2D) set_traversable_outlines(traversable_outlines Array) {
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("set_traversable_outlines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&traversable_outlines)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData2D) get_traversable_outlines() Array {
	mut result := Array{}
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("get_traversable_outlines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationMeshSourceGeometryData2D) set_obstruction_outlines(obstruction_outlines Array) {
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("set_obstruction_outlines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&obstruction_outlines)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData2D) get_obstruction_outlines() Array {
	mut result := Array{}
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("get_obstruction_outlines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationMeshSourceGeometryData2D) append_traversable_outlines(traversable_outlines Array) {
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("append_traversable_outlines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&traversable_outlines)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData2D) append_obstruction_outlines(obstruction_outlines Array) {
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("append_obstruction_outlines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&obstruction_outlines)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData2D) add_traversable_outline(shape_outline PackedVector2Array) {
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("add_traversable_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shape_outline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData2D) add_obstruction_outline(shape_outline PackedVector2Array) {
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("add_obstruction_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shape_outline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData2D) merge(other_geometry NavigationMeshSourceGeometryData2D) {
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("merge")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 742424872)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&other_geometry.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData2D) add_projected_obstruction(vertices PackedVector2Array, carve bool) {
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("add_projected_obstruction")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3882407395)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&vertices)}
	args[1] = unsafe{voidptr(&carve)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData2D) clear_projected_obstructions() {
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("clear_projected_obstructions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData2D) set_projected_obstructions(projected_obstructions Array) {
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("set_projected_obstructions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&projected_obstructions)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationMeshSourceGeometryData2D) get_projected_obstructions() Array {
	mut result := Array{}
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("get_projected_obstructions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationMeshSourceGeometryData2D) get_bounds() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("NavigationMeshSourceGeometryData2D")
	fnname := StringName.new("get_bounds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3248174)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
