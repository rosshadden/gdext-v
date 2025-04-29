module gd

pub struct PhysicsServer2DExtension {
	PhysicsServer2D
}

pub fn (s &PhysicsServer2DExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsServer2DExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IPhysicsServer2DExtensionWorldBoundaryShapeCreate {
mut:
	world_boundary_shape_create_() RID
}

pub fn (s &PhysicsServer2DExtension) gd_world_boundary_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_world_boundary_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionSeparationRayShapeCreate {
mut:
	separation_ray_shape_create_() RID
}

pub fn (s &PhysicsServer2DExtension) gd_separation_ray_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_separation_ray_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionSegmentShapeCreate {
mut:
	segment_shape_create_() RID
}

pub fn (s &PhysicsServer2DExtension) gd_segment_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_segment_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionCircleShapeCreate {
mut:
	circle_shape_create_() RID
}

pub fn (s &PhysicsServer2DExtension) gd_circle_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_circle_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionRectangleShapeCreate {
mut:
	rectangle_shape_create_() RID
}

pub fn (s &PhysicsServer2DExtension) gd_rectangle_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_rectangle_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionCapsuleShapeCreate {
mut:
	capsule_shape_create_() RID
}

pub fn (s &PhysicsServer2DExtension) gd_capsule_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_capsule_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionConvexPolygonShapeCreate {
mut:
	convex_polygon_shape_create_() RID
}

pub fn (s &PhysicsServer2DExtension) gd_convex_polygon_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_convex_polygon_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionConcavePolygonShapeCreate {
mut:
	concave_polygon_shape_create_() RID
}

pub fn (s &PhysicsServer2DExtension) gd_concave_polygon_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_concave_polygon_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionShapeSetData {
mut:
	shape_set_data_(shape RID, data Variant)
}

pub fn (s &PhysicsServer2DExtension) gd_shape_set_data(shape RID, data Variant) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_shape_set_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175752987)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	args[1] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionShapeSetCustomSolverBias {
mut:
	shape_set_custom_solver_bias_(shape RID, bias f64)
}

pub fn (s &PhysicsServer2DExtension) gd_shape_set_custom_solver_bias(shape RID, bias f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_shape_set_custom_solver_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	args[1] = unsafe{voidptr(&bias)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionShapeGetType {
mut:
	shape_get_type_(shape RID) PhysicsServer2DShapeType
}

pub fn (s &PhysicsServer2DExtension) gd_shape_get_type(shape RID) PhysicsServer2DShapeType {
	mut result := i64(PhysicsServer2DShapeType.shape_world_boundary)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_shape_get_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1240598777)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{PhysicsServer2DShapeType(result)}
}

pub interface IPhysicsServer2DExtensionShapeGetData {
mut:
	shape_get_data_(shape RID) Variant
}

pub fn (s &PhysicsServer2DExtension) gd_shape_get_data(shape RID) Variant {
	mut result := Variant{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_shape_get_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171304767)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionShapeGetCustomSolverBias {
mut:
	shape_get_custom_solver_bias_(shape RID) f64
}

pub fn (s &PhysicsServer2DExtension) gd_shape_get_custom_solver_bias(shape RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_shape_get_custom_solver_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionShapeCollide {
mut:
	shape_collide_(shape_a RID, xform_a Transform2D, motion_a Vector2, shape_b RID, xform_b Transform2D, motion_b Vector2, results voidptr, result_max i64, result_count &i32) bool
}

pub fn (s &PhysicsServer2DExtension) gd_shape_collide(shape_a RID, xform_a Transform2D, motion_a Vector2, shape_b RID, xform_b Transform2D, motion_b Vector2, results voidptr, result_max i64, result_count &i32) bool {
	mut result := false
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_shape_collide")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 738864683)
	mut args := unsafe { [9]voidptr{} }
	args[0] = unsafe{voidptr(&shape_a)}
	args[1] = unsafe{voidptr(&xform_a)}
	args[2] = unsafe{voidptr(&motion_a)}
	args[3] = unsafe{voidptr(&shape_b)}
	args[4] = unsafe{voidptr(&xform_b)}
	args[5] = unsafe{voidptr(&motion_b)}
	args[6] = unsafe{voidptr(&results)}
	args[7] = unsafe{voidptr(&result_max)}
	args[8] = unsafe{voidptr(&result_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionSpaceCreate {
mut:
	space_create_() RID
}

pub fn (s &PhysicsServer2DExtension) gd_space_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_space_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionSpaceSetActive {
mut:
	space_set_active_(space RID, active bool)
}

pub fn (s &PhysicsServer2DExtension) gd_space_set_active(space RID, active bool) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_space_set_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	args[1] = unsafe{voidptr(&active)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionSpaceIsActive {
mut:
	space_is_active_(space RID) bool
}

pub fn (s &PhysicsServer2DExtension) gd_space_is_active(space RID) bool {
	mut result := false
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_space_is_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionSpaceSetParam {
mut:
	space_set_param_(space RID, param PhysicsServer2DSpaceParameter, value f64)
}

pub fn (s &PhysicsServer2DExtension) gd_space_set_param(space RID, param PhysicsServer2DSpaceParameter, value f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_space_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 949194586)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionSpaceGetParam {
mut:
	space_get_param_(space RID, param PhysicsServer2DSpaceParameter) f64
}

pub fn (s &PhysicsServer2DExtension) gd_space_get_param(space RID, param PhysicsServer2DSpaceParameter) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_space_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 874111783)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionSpaceGetDirectState {
mut:
	space_get_direct_state_(space RID) PhysicsDirectSpaceState2D
}

pub fn (s &PhysicsServer2DExtension) gd_space_get_direct_state(space RID) PhysicsDirectSpaceState2D {
	mut result := PhysicsDirectSpaceState2D{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_space_get_direct_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160173886)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionSpaceSetDebugContacts {
mut:
	space_set_debug_contacts_(space RID, max_contacts i64)
}

pub fn (s &PhysicsServer2DExtension) gd_space_set_debug_contacts(space RID, max_contacts i64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_space_set_debug_contacts")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	args[1] = unsafe{voidptr(&max_contacts)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionSpaceGetContacts {
mut:
	space_get_contacts_(space RID) PackedVector2Array
}

pub fn (s &PhysicsServer2DExtension) gd_space_get_contacts(space RID) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_space_get_contacts")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2222557395)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionSpaceGetContactCount {
mut:
	space_get_contact_count_(space RID) i64
}

pub fn (s &PhysicsServer2DExtension) gd_space_get_contact_count(space RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_space_get_contact_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionAreaCreate {
mut:
	area_create_() RID
}

pub fn (s &PhysicsServer2DExtension) gd_area_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionAreaSetSpace {
mut:
	area_set_space_(area RID, space RID)
}

pub fn (s &PhysicsServer2DExtension) gd_area_set_space(area RID, space RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_set_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaGetSpace {
mut:
	area_get_space_(area RID) RID
}

pub fn (s &PhysicsServer2DExtension) gd_area_get_space(area RID) RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_get_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionAreaAddShape {
mut:
	area_add_shape_(area RID, shape RID, transform Transform2D, disabled bool)
}

pub fn (s &PhysicsServer2DExtension) gd_area_add_shape(area RID, shape RID, transform Transform2D, disabled bool) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_add_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 888317420)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&shape)}
	args[2] = unsafe{voidptr(&transform)}
	args[3] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaSetShape {
mut:
	area_set_shape_(area RID, shape_idx i64, shape RID)
}

pub fn (s &PhysicsServer2DExtension) gd_area_set_shape(area RID, shape_idx i64, shape RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_set_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&shape_idx)}
	args[2] = unsafe{voidptr(&shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaSetShapeTransform {
mut:
	area_set_shape_transform_(area RID, shape_idx i64, transform Transform2D)
}

pub fn (s &PhysicsServer2DExtension) gd_area_set_shape_transform(area RID, shape_idx i64, transform Transform2D) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_set_shape_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 736082694)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&shape_idx)}
	args[2] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaSetShapeDisabled {
mut:
	area_set_shape_disabled_(area RID, shape_idx i64, disabled bool)
}

pub fn (s &PhysicsServer2DExtension) gd_area_set_shape_disabled(area RID, shape_idx i64, disabled bool) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_set_shape_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2658558584)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&shape_idx)}
	args[2] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaGetShapeCount {
mut:
	area_get_shape_count_(area RID) i64
}

pub fn (s &PhysicsServer2DExtension) gd_area_get_shape_count(area RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_get_shape_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionAreaGetShape {
mut:
	area_get_shape_(area RID, shape_idx i64) RID
}

pub fn (s &PhysicsServer2DExtension) gd_area_get_shape(area RID, shape_idx i64) RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_get_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1066463050)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionAreaGetShapeTransform {
mut:
	area_get_shape_transform_(area RID, shape_idx i64) Transform2D
}

pub fn (s &PhysicsServer2DExtension) gd_area_get_shape_transform(area RID, shape_idx i64) Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_get_shape_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1324854622)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionAreaRemoveShape {
mut:
	area_remove_shape_(area RID, shape_idx i64)
}

pub fn (s &PhysicsServer2DExtension) gd_area_remove_shape(area RID, shape_idx i64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_remove_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaClearShapes {
mut:
	area_clear_shapes_(area RID)
}

pub fn (s &PhysicsServer2DExtension) gd_area_clear_shapes(area RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_clear_shapes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaAttachObjectInstanceId {
mut:
	area_attach_object_instance_id_(area RID, id i64)
}

pub fn (s &PhysicsServer2DExtension) gd_area_attach_object_instance_id(area RID, id i64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_attach_object_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaGetObjectInstanceId {
mut:
	area_get_object_instance_id_(area RID) i64
}

pub fn (s &PhysicsServer2DExtension) gd_area_get_object_instance_id(area RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_get_object_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionAreaAttachCanvasInstanceId {
mut:
	area_attach_canvas_instance_id_(area RID, id i64)
}

pub fn (s &PhysicsServer2DExtension) gd_area_attach_canvas_instance_id(area RID, id i64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_attach_canvas_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaGetCanvasInstanceId {
mut:
	area_get_canvas_instance_id_(area RID) i64
}

pub fn (s &PhysicsServer2DExtension) gd_area_get_canvas_instance_id(area RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_get_canvas_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionAreaSetParam {
mut:
	area_set_param_(area RID, param PhysicsServer2DAreaParameter, value Variant)
}

pub fn (s &PhysicsServer2DExtension) gd_area_set_param(area RID, param PhysicsServer2DAreaParameter, value Variant) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1257146028)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaSetTransform {
mut:
	area_set_transform_(area RID, transform Transform2D)
}

pub fn (s &PhysicsServer2DExtension) gd_area_set_transform(area RID, transform Transform2D) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaGetParam {
mut:
	area_get_param_(area RID, param PhysicsServer2DAreaParameter) Variant
}

pub fn (s &PhysicsServer2DExtension) gd_area_get_param(area RID, param PhysicsServer2DAreaParameter) Variant {
	mut result := Variant{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3047435120)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionAreaGetTransform {
mut:
	area_get_transform_(area RID) Transform2D
}

pub fn (s &PhysicsServer2DExtension) gd_area_get_transform(area RID) Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_get_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 213527486)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionAreaSetCollisionLayer {
mut:
	area_set_collision_layer_(area RID, layer i64)
}

pub fn (s &PhysicsServer2DExtension) gd_area_set_collision_layer(area RID, layer i64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_set_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaGetCollisionLayer {
mut:
	area_get_collision_layer_(area RID) i64
}

pub fn (s &PhysicsServer2DExtension) gd_area_get_collision_layer(area RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_get_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionAreaSetCollisionMask {
mut:
	area_set_collision_mask_(area RID, mask i64)
}

pub fn (s &PhysicsServer2DExtension) gd_area_set_collision_mask(area RID, mask i64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_set_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaGetCollisionMask {
mut:
	area_get_collision_mask_(area RID) i64
}

pub fn (s &PhysicsServer2DExtension) gd_area_get_collision_mask(area RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_get_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionAreaSetMonitorable {
mut:
	area_set_monitorable_(area RID, monitorable bool)
}

pub fn (s &PhysicsServer2DExtension) gd_area_set_monitorable(area RID, monitorable bool) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_set_monitorable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&monitorable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaSetPickable {
mut:
	area_set_pickable_(area RID, pickable bool)
}

pub fn (s &PhysicsServer2DExtension) gd_area_set_pickable(area RID, pickable bool) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_set_pickable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&pickable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaSetMonitorCallback {
mut:
	area_set_monitor_callback_(area RID, callback Callable)
}

pub fn (s &PhysicsServer2DExtension) gd_area_set_monitor_callback(area RID, callback Callable) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_set_monitor_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionAreaSetAreaMonitorCallback {
mut:
	area_set_area_monitor_callback_(area RID, callback Callable)
}

pub fn (s &PhysicsServer2DExtension) gd_area_set_area_monitor_callback(area RID, callback Callable) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_area_set_area_monitor_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyCreate {
mut:
	body_create_() RID
}

pub fn (s &PhysicsServer2DExtension) gd_body_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetSpace {
mut:
	body_set_space_(body RID, space RID)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_space(body RID, space RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetSpace {
mut:
	body_get_space_(body RID) RID
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_space(body RID) RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetMode {
mut:
	body_set_mode_(body RID, mode PhysicsServer2DBodyMode)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_mode(body RID, mode PhysicsServer2DBodyMode) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1658067650)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_mode := i64(mode)
	args[1] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetMode {
mut:
	body_get_mode_(body RID) PhysicsServer2DBodyMode
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_mode(body RID) PhysicsServer2DBodyMode {
	mut result := i64(PhysicsServer2DBodyMode.body_mode_static)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3261702585)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{PhysicsServer2DBodyMode(result)}
}

pub interface IPhysicsServer2DExtensionBodyAddShape {
mut:
	body_add_shape_(body RID, shape RID, transform Transform2D, disabled bool)
}

pub fn (s &PhysicsServer2DExtension) gd_body_add_shape(body RID, shape RID, transform Transform2D, disabled bool) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_add_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 888317420)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&shape)}
	args[2] = unsafe{voidptr(&transform)}
	args[3] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodySetShape {
mut:
	body_set_shape_(body RID, shape_idx i64, shape RID)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_shape(body RID, shape_idx i64, shape RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&shape_idx)}
	args[2] = unsafe{voidptr(&shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodySetShapeTransform {
mut:
	body_set_shape_transform_(body RID, shape_idx i64, transform Transform2D)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_shape_transform(body RID, shape_idx i64, transform Transform2D) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_shape_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 736082694)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&shape_idx)}
	args[2] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetShapeCount {
mut:
	body_get_shape_count_(body RID) i64
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_shape_count(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_shape_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodyGetShape {
mut:
	body_get_shape_(body RID, shape_idx i64) RID
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_shape(body RID, shape_idx i64) RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1066463050)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodyGetShapeTransform {
mut:
	body_get_shape_transform_(body RID, shape_idx i64) Transform2D
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_shape_transform(body RID, shape_idx i64) Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_shape_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1324854622)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetShapeDisabled {
mut:
	body_set_shape_disabled_(body RID, shape_idx i64, disabled bool)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_shape_disabled(body RID, shape_idx i64, disabled bool) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_shape_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2658558584)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&shape_idx)}
	args[2] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodySetShapeAsOneWayCollision {
mut:
	body_set_shape_as_one_way_collision_(body RID, shape_idx i64, enable bool, margin f64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_shape_as_one_way_collision(body RID, shape_idx i64, enable bool, margin f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_shape_as_one_way_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2556489974)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&shape_idx)}
	args[2] = unsafe{voidptr(&enable)}
	args[3] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyRemoveShape {
mut:
	body_remove_shape_(body RID, shape_idx i64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_remove_shape(body RID, shape_idx i64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_remove_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyClearShapes {
mut:
	body_clear_shapes_(body RID)
}

pub fn (s &PhysicsServer2DExtension) gd_body_clear_shapes(body RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_clear_shapes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyAttachObjectInstanceId {
mut:
	body_attach_object_instance_id_(body RID, id i64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_attach_object_instance_id(body RID, id i64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_attach_object_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetObjectInstanceId {
mut:
	body_get_object_instance_id_(body RID) i64
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_object_instance_id(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_object_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodyAttachCanvasInstanceId {
mut:
	body_attach_canvas_instance_id_(body RID, id i64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_attach_canvas_instance_id(body RID, id i64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_attach_canvas_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetCanvasInstanceId {
mut:
	body_get_canvas_instance_id_(body RID) i64
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_canvas_instance_id(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_canvas_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetContinuousCollisionDetectionMode {
mut:
	body_set_continuous_collision_detection_mode_(body RID, mode PhysicsServer2DCCDMode)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_continuous_collision_detection_mode(body RID, mode PhysicsServer2DCCDMode) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_continuous_collision_detection_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882257015)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_mode := i64(mode)
	args[1] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetContinuousCollisionDetectionMode {
mut:
	body_get_continuous_collision_detection_mode_(body RID) PhysicsServer2DCCDMode
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_continuous_collision_detection_mode(body RID) PhysicsServer2DCCDMode {
	mut result := i64(PhysicsServer2DCCDMode.ccd_mode_disabled)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_continuous_collision_detection_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2661282217)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{PhysicsServer2DCCDMode(result)}
}

pub interface IPhysicsServer2DExtensionBodySetCollisionLayer {
mut:
	body_set_collision_layer_(body RID, layer i64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_collision_layer(body RID, layer i64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetCollisionLayer {
mut:
	body_get_collision_layer_(body RID) i64
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_collision_layer(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetCollisionMask {
mut:
	body_set_collision_mask_(body RID, mask i64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_collision_mask(body RID, mask i64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetCollisionMask {
mut:
	body_get_collision_mask_(body RID) i64
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_collision_mask(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetCollisionPriority {
mut:
	body_set_collision_priority_(body RID, priority f64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_collision_priority(body RID, priority f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_collision_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetCollisionPriority {
mut:
	body_get_collision_priority_(body RID) f64
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_collision_priority(body RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_collision_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetParam {
mut:
	body_set_param_(body RID, param PhysicsServer2DBodyParameter, value Variant)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_param(body RID, param PhysicsServer2DBodyParameter, value Variant) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2715630609)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetParam {
mut:
	body_get_param_(body RID, param PhysicsServer2DBodyParameter) Variant
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_param(body RID, param PhysicsServer2DBodyParameter) Variant {
	mut result := Variant{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3208033526)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodyResetMassProperties {
mut:
	body_reset_mass_properties_(body RID)
}

pub fn (s &PhysicsServer2DExtension) gd_body_reset_mass_properties(body RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_reset_mass_properties")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodySetState {
mut:
	body_set_state_(body RID, state PhysicsServer2DBodyState, value Variant)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_state(body RID, state PhysicsServer2DBodyState, value Variant) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706355209)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_state := i64(state)
	args[1] = unsafe{voidptr(&i64_state)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetState {
mut:
	body_get_state_(body RID, state PhysicsServer2DBodyState) Variant
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_state(body RID, state PhysicsServer2DBodyState) Variant {
	mut result := Variant{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4036367961)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_state := i64(state)
	args[1] = unsafe{voidptr(&i64_state)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodyApplyCentralImpulse {
mut:
	body_apply_central_impulse_(body RID, impulse Vector2)
}

pub fn (s &PhysicsServer2DExtension) gd_body_apply_central_impulse(body RID, impulse Vector2) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_apply_central_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&impulse)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyApplyTorqueImpulse {
mut:
	body_apply_torque_impulse_(body RID, impulse f64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_apply_torque_impulse(body RID, impulse f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_apply_torque_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&impulse)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyApplyImpulse {
mut:
	body_apply_impulse_(body RID, impulse Vector2, position Vector2)
}

pub fn (s &PhysicsServer2DExtension) gd_body_apply_impulse(body RID, impulse Vector2, position Vector2) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_apply_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2762675110)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&impulse)}
	args[2] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyApplyCentralForce {
mut:
	body_apply_central_force_(body RID, force Vector2)
}

pub fn (s &PhysicsServer2DExtension) gd_body_apply_central_force(body RID, force Vector2) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_apply_central_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyApplyForce {
mut:
	body_apply_force_(body RID, force Vector2, position Vector2)
}

pub fn (s &PhysicsServer2DExtension) gd_body_apply_force(body RID, force Vector2, position Vector2) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_apply_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2762675110)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&force)}
	args[2] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyApplyTorque {
mut:
	body_apply_torque_(body RID, torque f64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_apply_torque(body RID, torque f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_apply_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&torque)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyAddConstantCentralForce {
mut:
	body_add_constant_central_force_(body RID, force Vector2)
}

pub fn (s &PhysicsServer2DExtension) gd_body_add_constant_central_force(body RID, force Vector2) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_add_constant_central_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyAddConstantForce {
mut:
	body_add_constant_force_(body RID, force Vector2, position Vector2)
}

pub fn (s &PhysicsServer2DExtension) gd_body_add_constant_force(body RID, force Vector2, position Vector2) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_add_constant_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2762675110)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&force)}
	args[2] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyAddConstantTorque {
mut:
	body_add_constant_torque_(body RID, torque f64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_add_constant_torque(body RID, torque f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_add_constant_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&torque)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodySetConstantForce {
mut:
	body_set_constant_force_(body RID, force Vector2)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_constant_force(body RID, force Vector2) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_constant_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetConstantForce {
mut:
	body_get_constant_force_(body RID) Vector2
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_constant_force(body RID) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_constant_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2440833711)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetConstantTorque {
mut:
	body_set_constant_torque_(body RID, torque f64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_constant_torque(body RID, torque f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_constant_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&torque)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetConstantTorque {
mut:
	body_get_constant_torque_(body RID) f64
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_constant_torque(body RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_constant_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetAxisVelocity {
mut:
	body_set_axis_velocity_(body RID, axis_velocity Vector2)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_axis_velocity(body RID, axis_velocity Vector2) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_axis_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&axis_velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyAddCollisionException {
mut:
	body_add_collision_exception_(body RID, excepted_body RID)
}

pub fn (s &PhysicsServer2DExtension) gd_body_add_collision_exception(body RID, excepted_body RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_add_collision_exception")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&excepted_body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyRemoveCollisionException {
mut:
	body_remove_collision_exception_(body RID, excepted_body RID)
}

pub fn (s &PhysicsServer2DExtension) gd_body_remove_collision_exception(body RID, excepted_body RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_remove_collision_exception")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&excepted_body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetCollisionExceptions {
mut:
	body_get_collision_exceptions_(body RID) Array
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_collision_exceptions(body RID) Array {
	mut result := Array{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_collision_exceptions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetMaxContactsReported {
mut:
	body_set_max_contacts_reported_(body RID, amount i64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_max_contacts_reported(body RID, amount i64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_max_contacts_reported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetMaxContactsReported {
mut:
	body_get_max_contacts_reported_(body RID) i64
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_max_contacts_reported(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_max_contacts_reported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetContactsReportedDepthThreshold {
mut:
	body_set_contacts_reported_depth_threshold_(body RID, threshold f64)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_contacts_reported_depth_threshold(body RID, threshold f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_contacts_reported_depth_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&threshold)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetContactsReportedDepthThreshold {
mut:
	body_get_contacts_reported_depth_threshold_(body RID) f64
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_contacts_reported_depth_threshold(body RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_contacts_reported_depth_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetOmitForceIntegration {
mut:
	body_set_omit_force_integration_(body RID, enable bool)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_omit_force_integration(body RID, enable bool) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_omit_force_integration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyIsOmittingForceIntegration {
mut:
	body_is_omitting_force_integration_(body RID) bool
}

pub fn (s &PhysicsServer2DExtension) gd_body_is_omitting_force_integration(body RID) bool {
	mut result := false
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_is_omitting_force_integration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetStateSyncCallback {
mut:
	body_set_state_sync_callback_(body RID, callable Callable)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_state_sync_callback(body RID, callable Callable) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_state_sync_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodySetForceIntegrationCallback {
mut:
	body_set_force_integration_callback_(body RID, callable Callable, userdata Variant)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_force_integration_callback(body RID, callable Callable, userdata Variant) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_force_integration_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2828036238)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&callable)}
	args[2] = unsafe{voidptr(&userdata)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyCollideShape {
mut:
	body_collide_shape_(body RID, body_shape i64, shape RID, shape_xform Transform2D, motion Vector2, results voidptr, result_max i64, result_count &i32) bool
}

pub fn (s &PhysicsServer2DExtension) gd_body_collide_shape(body RID, body_shape i64, shape RID, shape_xform Transform2D, motion Vector2, results voidptr, result_max i64, result_count &i32) bool {
	mut result := false
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_collide_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2131476465)
	mut args := unsafe { [8]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&body_shape)}
	args[2] = unsafe{voidptr(&shape)}
	args[3] = unsafe{voidptr(&shape_xform)}
	args[4] = unsafe{voidptr(&motion)}
	args[5] = unsafe{voidptr(&results)}
	args[6] = unsafe{voidptr(&result_max)}
	args[7] = unsafe{voidptr(&result_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodySetPickable {
mut:
	body_set_pickable_(body RID, pickable bool)
}

pub fn (s &PhysicsServer2DExtension) gd_body_set_pickable(body RID, pickable bool) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_set_pickable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&pickable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionBodyGetDirectState {
mut:
	body_get_direct_state_(body RID) PhysicsDirectBodyState2D
}

pub fn (s &PhysicsServer2DExtension) gd_body_get_direct_state(body RID) PhysicsDirectBodyState2D {
	mut result := PhysicsDirectBodyState2D{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_get_direct_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1191931871)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionBodyTestMotion {
mut:
	body_test_motion_(body RID, from Transform2D, motion Vector2, margin f64, collide_separation_ray bool, recovery_as_collision bool, gd_result &PhysicsServer2DExtensionMotionResult) bool
}

pub fn (s &PhysicsServer2DExtension) gd_body_test_motion(body RID, from Transform2D, motion Vector2, margin f64, collide_separation_ray bool, recovery_as_collision bool, gd_result &PhysicsServer2DExtensionMotionResult) bool {
	mut result := false
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_body_test_motion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 104979818)
	mut args := unsafe { [7]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&from)}
	args[2] = unsafe{voidptr(&motion)}
	args[3] = unsafe{voidptr(&margin)}
	args[4] = unsafe{voidptr(&collide_separation_ray)}
	args[5] = unsafe{voidptr(&recovery_as_collision)}
	args[6] = unsafe{voidptr(&gd_result)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionJointCreate {
mut:
	joint_create_() RID
}

pub fn (s &PhysicsServer2DExtension) gd_joint_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_joint_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionJointClear {
mut:
	joint_clear_(joint RID)
}

pub fn (s &PhysicsServer2DExtension) gd_joint_clear(joint RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_joint_clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionJointSetParam {
mut:
	joint_set_param_(joint RID, param PhysicsServer2DJointParam, value f64)
}

pub fn (s &PhysicsServer2DExtension) gd_joint_set_param(joint RID, param PhysicsServer2DJointParam, value f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_joint_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3972556514)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionJointGetParam {
mut:
	joint_get_param_(joint RID, param PhysicsServer2DJointParam) f64
}

pub fn (s &PhysicsServer2DExtension) gd_joint_get_param(joint RID, param PhysicsServer2DJointParam) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_joint_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4016448949)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionJointDisableCollisionsBetweenBodies {
mut:
	joint_disable_collisions_between_bodies_(joint RID, disable bool)
}

pub fn (s &PhysicsServer2DExtension) gd_joint_disable_collisions_between_bodies(joint RID, disable bool) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_joint_disable_collisions_between_bodies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&disable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionJointIsDisabledCollisionsBetweenBodies {
mut:
	joint_is_disabled_collisions_between_bodies_(joint RID) bool
}

pub fn (s &PhysicsServer2DExtension) gd_joint_is_disabled_collisions_between_bodies(joint RID) bool {
	mut result := false
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_joint_is_disabled_collisions_between_bodies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionJointMakePin {
mut:
	joint_make_pin_(joint RID, anchor Vector2, body_a RID, body_b RID)
}

pub fn (s &PhysicsServer2DExtension) gd_joint_make_pin(joint RID, anchor Vector2, body_a RID, body_b RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_joint_make_pin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2607799521)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&anchor)}
	args[2] = unsafe{voidptr(&body_a)}
	args[3] = unsafe{voidptr(&body_b)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionJointMakeGroove {
mut:
	joint_make_groove_(joint RID, a_groove1 Vector2, a_groove2 Vector2, b_anchor Vector2, body_a RID, body_b RID)
}

pub fn (s &PhysicsServer2DExtension) gd_joint_make_groove(joint RID, a_groove1 Vector2, a_groove2 Vector2, b_anchor Vector2, body_a RID, body_b RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_joint_make_groove")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 438649616)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&a_groove1)}
	args[2] = unsafe{voidptr(&a_groove2)}
	args[3] = unsafe{voidptr(&b_anchor)}
	args[4] = unsafe{voidptr(&body_a)}
	args[5] = unsafe{voidptr(&body_b)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionJointMakeDampedSpring {
mut:
	joint_make_damped_spring_(joint RID, anchor_a Vector2, anchor_b Vector2, body_a RID, body_b RID)
}

pub fn (s &PhysicsServer2DExtension) gd_joint_make_damped_spring(joint RID, anchor_a Vector2, anchor_b Vector2, body_a RID, body_b RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_joint_make_damped_spring")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1276049561)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&anchor_a)}
	args[2] = unsafe{voidptr(&anchor_b)}
	args[3] = unsafe{voidptr(&body_a)}
	args[4] = unsafe{voidptr(&body_b)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionPinJointSetFlag {
mut:
	pin_joint_set_flag_(joint RID, flag PhysicsServer2DPinJointFlag, enabled bool)
}

pub fn (s &PhysicsServer2DExtension) gd_pin_joint_set_flag(joint RID, flag PhysicsServer2DPinJointFlag, enabled bool) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_pin_joint_set_flag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3520002352)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_flag := i64(flag)
	args[1] = unsafe{voidptr(&i64_flag)}
	args[2] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionPinJointGetFlag {
mut:
	pin_joint_get_flag_(joint RID, flag PhysicsServer2DPinJointFlag) bool
}

pub fn (s &PhysicsServer2DExtension) gd_pin_joint_get_flag(joint RID, flag PhysicsServer2DPinJointFlag) bool {
	mut result := false
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_pin_joint_get_flag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2647867364)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_flag := i64(flag)
	args[1] = unsafe{voidptr(&i64_flag)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionPinJointSetParam {
mut:
	pin_joint_set_param_(joint RID, param PhysicsServer2DPinJointParam, value f64)
}

pub fn (s &PhysicsServer2DExtension) gd_pin_joint_set_param(joint RID, param PhysicsServer2DPinJointParam, value f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_pin_joint_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 550574241)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionPinJointGetParam {
mut:
	pin_joint_get_param_(joint RID, param PhysicsServer2DPinJointParam) f64
}

pub fn (s &PhysicsServer2DExtension) gd_pin_joint_get_param(joint RID, param PhysicsServer2DPinJointParam) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_pin_joint_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 348281383)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionDampedSpringJointSetParam {
mut:
	damped_spring_joint_set_param_(joint RID, param PhysicsServer2DDampedSpringParam, value f64)
}

pub fn (s &PhysicsServer2DExtension) gd_damped_spring_joint_set_param(joint RID, param PhysicsServer2DDampedSpringParam, value f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_damped_spring_joint_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 220564071)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionDampedSpringJointGetParam {
mut:
	damped_spring_joint_get_param_(joint RID, param PhysicsServer2DDampedSpringParam) f64
}

pub fn (s &PhysicsServer2DExtension) gd_damped_spring_joint_get_param(joint RID, param PhysicsServer2DDampedSpringParam) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_damped_spring_joint_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2075871277)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionJointGetType {
mut:
	joint_get_type_(joint RID) PhysicsServer2DJointType
}

pub fn (s &PhysicsServer2DExtension) gd_joint_get_type(joint RID) PhysicsServer2DJointType {
	mut result := i64(PhysicsServer2DJointType.joint_type_pin)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_joint_get_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4262502231)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{PhysicsServer2DJointType(result)}
}

pub interface IPhysicsServer2DExtensionFreeRid {
mut:
	free_rid_(rid RID)
}

pub fn (s &PhysicsServer2DExtension) gd_free_rid(rid RID) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_free_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionSetActive {
mut:
	set_active_(active bool)
}

pub fn (s &PhysicsServer2DExtension) gd_set_active(active bool) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_set_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&active)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionInit {
mut:
	init_()
}

pub fn (s &PhysicsServer2DExtension) gd_init() {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_init")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionStep {
mut:
	step_(step f64)
}

pub fn (s &PhysicsServer2DExtension) gd_step(step f64) {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&step)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionSync {
mut:
	sync_()
}

pub fn (s &PhysicsServer2DExtension) gd_sync() {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_sync")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionFlushQueries {
mut:
	flush_queries_()
}

pub fn (s &PhysicsServer2DExtension) gd_flush_queries() {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_flush_queries")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionEndSync {
mut:
	end_sync_()
}

pub fn (s &PhysicsServer2DExtension) gd_end_sync() {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_end_sync")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionFinish {
mut:
	finish_()
}

pub fn (s &PhysicsServer2DExtension) gd_finish() {
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_finish")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer2DExtensionIsFlushingQueries {
mut:
	is_flushing_queries_() bool
}

pub fn (s &PhysicsServer2DExtension) gd_is_flushing_queries() bool {
	mut result := false
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_is_flushing_queries")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer2DExtensionGetProcessInfo {
mut:
	get_process_info_(process_info PhysicsServer2DProcessInfo) i64
}

pub fn (s &PhysicsServer2DExtension) gd_get_process_info(process_info PhysicsServer2DProcessInfo) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("_get_process_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 576496006)
	mut args := unsafe { [1]voidptr{} }
	i64_process_info := i64(process_info)
	args[0] = unsafe{voidptr(&i64_process_info)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsServer2DExtension) body_test_motion_is_excluding_body(body RID) bool {
	mut result := false
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("body_test_motion_is_excluding_body")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsServer2DExtension) body_test_motion_is_excluding_object(object i64) bool {
	mut result := false
	classname := StringName.new("PhysicsServer2DExtension")
	fnname := StringName.new("body_test_motion_is_excluding_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&object)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
