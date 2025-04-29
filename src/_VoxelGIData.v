module gd

pub struct VoxelGIData {
	Resource
}

pub fn (s &VoxelGIData) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VoxelGIData) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VoxelGIData) allocate(to_cell_xform Transform3D, aabb AABB, octree_size Vector3, octree_cells PackedByteArray, data_cells PackedByteArray, distance_field PackedByteArray, level_counts PackedInt32Array) {
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("allocate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4041601946)
	mut args := unsafe { [7]voidptr{} }
	args[0] = unsafe{voidptr(&to_cell_xform)}
	args[1] = unsafe{voidptr(&aabb)}
	args[2] = unsafe{voidptr(&octree_size)}
	args[3] = unsafe{voidptr(&octree_cells)}
	args[4] = unsafe{voidptr(&data_cells)}
	args[5] = unsafe{voidptr(&distance_field)}
	args[6] = unsafe{voidptr(&level_counts)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGIData) get_bounds() AABB {
	mut result := AABB{}
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("get_bounds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGIData) get_octree_size() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("get_octree_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGIData) get_to_cell_xform() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("get_to_cell_xform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGIData) get_octree_cells() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("get_octree_cells")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGIData) get_data_cells() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("get_data_cells")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGIData) get_level_counts() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("get_level_counts")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGIData) set_dynamic_range(dynamic_range f64) {
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("set_dynamic_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&dynamic_range)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGIData) get_dynamic_range() f64 {
	mut result := f64(0)
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("get_dynamic_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGIData) set_energy(energy f64) {
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("set_energy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&energy)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGIData) get_energy() f64 {
	mut result := f64(0)
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("get_energy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGIData) set_bias(bias f64) {
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("set_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bias)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGIData) get_bias() f64 {
	mut result := f64(0)
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("get_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGIData) set_normal_bias(bias f64) {
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("set_normal_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bias)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGIData) get_normal_bias() f64 {
	mut result := f64(0)
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("get_normal_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGIData) set_propagation(propagation f64) {
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("set_propagation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&propagation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGIData) get_propagation() f64 {
	mut result := f64(0)
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("get_propagation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGIData) set_interior(interior bool) {
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("set_interior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&interior)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGIData) is_interior() bool {
	mut result := false
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("is_interior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGIData) set_use_two_bounces(enable bool) {
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("set_use_two_bounces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGIData) is_using_two_bounces() bool {
	mut result := false
	classname := StringName.new("VoxelGIData")
	fnname := StringName.new("is_using_two_bounces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
