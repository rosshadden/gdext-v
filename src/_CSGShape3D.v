module gd

pub enum CSGShape3DOperation as i64 {
	operation_union = 0
	operation_intersection = 1
	operation_subtraction = 2
}

pub struct CSGShape3D {
	GeometryInstance3D
}

pub fn (s &CSGShape3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CSGShape3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CSGShape3D) is_root_shape() bool {
	mut result := false
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("is_root_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CSGShape3D) set_operation(operation CSGShape3DOperation) {
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("set_operation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 811425055)
	mut args := unsafe { [1]voidptr{} }
	i64_operation := i64(operation)
	args[0] = unsafe{voidptr(&i64_operation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CSGShape3D) get_operation() CSGShape3DOperation {
	mut result := i64(CSGShape3DOperation.operation_union)
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("get_operation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2662425879)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{CSGShape3DOperation(result)}
}

pub fn (s &CSGShape3D) set_snap(snap f64) {
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("set_snap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&snap)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CSGShape3D) get_snap() f64 {
	mut result := f64(0)
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("get_snap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CSGShape3D) set_use_collision(operation bool) {
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("set_use_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&operation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CSGShape3D) is_using_collision() bool {
	mut result := false
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("is_using_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CSGShape3D) set_collision_layer(layer i64) {
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("set_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CSGShape3D) get_collision_layer() i64 {
	mut result := i64(0)
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("get_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CSGShape3D) set_collision_mask(mask i64) {
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("set_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CSGShape3D) get_collision_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("get_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CSGShape3D) set_collision_mask_value(layer_number i64, value bool) {
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("set_collision_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CSGShape3D) get_collision_mask_value(layer_number i64) bool {
	mut result := false
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("get_collision_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CSGShape3D) set_collision_layer_value(layer_number i64, value bool) {
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("set_collision_layer_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CSGShape3D) get_collision_layer_value(layer_number i64) bool {
	mut result := false
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("get_collision_layer_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CSGShape3D) set_collision_priority(priority f64) {
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("set_collision_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CSGShape3D) get_collision_priority() f64 {
	mut result := f64(0)
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("get_collision_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CSGShape3D) bake_collision_shape() ConcavePolygonShape3D {
	mut result := ConcavePolygonShape3D{}
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("bake_collision_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36102322)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CSGShape3D) set_calculate_tangents(enabled bool) {
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("set_calculate_tangents")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CSGShape3D) is_calculating_tangents() bool {
	mut result := false
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("is_calculating_tangents")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CSGShape3D) get_meshes() Array {
	mut result := Array{}
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("get_meshes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CSGShape3D) bake_static_mesh() ArrayMesh {
	mut result := ArrayMesh{}
	classname := StringName.new("CSGShape3D")
	fnname := StringName.new("bake_static_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1605880883)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
