module gd

pub struct OccluderInstance3D {
	VisualInstance3D
}

pub fn (s &OccluderInstance3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OccluderInstance3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OccluderInstance3D) set_bake_mask(mask i64) {
	classname := StringName.new("OccluderInstance3D")
	fnname := StringName.new("set_bake_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OccluderInstance3D) get_bake_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("OccluderInstance3D")
	fnname := StringName.new("get_bake_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OccluderInstance3D) set_bake_mask_value(layer_number i64, value bool) {
	classname := StringName.new("OccluderInstance3D")
	fnname := StringName.new("set_bake_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OccluderInstance3D) get_bake_mask_value(layer_number i64) bool {
	mut result := false
	classname := StringName.new("OccluderInstance3D")
	fnname := StringName.new("get_bake_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OccluderInstance3D) set_bake_simplification_distance(simplification_distance f64) {
	classname := StringName.new("OccluderInstance3D")
	fnname := StringName.new("set_bake_simplification_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&simplification_distance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OccluderInstance3D) get_bake_simplification_distance() f64 {
	mut result := f64(0)
	classname := StringName.new("OccluderInstance3D")
	fnname := StringName.new("get_bake_simplification_distance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OccluderInstance3D) set_occluder(occluder Occluder3D) {
	classname := StringName.new("OccluderInstance3D")
	fnname := StringName.new("set_occluder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1664878165)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&occluder.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OccluderInstance3D) get_occluder() Occluder3D {
	mut result := Occluder3D{}
	classname := StringName.new("OccluderInstance3D")
	fnname := StringName.new("get_occluder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1696836198)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
