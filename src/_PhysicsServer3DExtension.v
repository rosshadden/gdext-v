module gd

pub struct PhysicsServer3DExtension {
	PhysicsServer3D
}

pub fn (s &PhysicsServer3DExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsServer3DExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IPhysicsServer3DExtensionWorldBoundaryShapeCreate {
mut:
	world_boundary_shape_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_world_boundary_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_world_boundary_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSeparationRayShapeCreate {
mut:
	separation_ray_shape_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_separation_ray_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_separation_ray_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSphereShapeCreate {
mut:
	sphere_shape_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_sphere_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_sphere_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBoxShapeCreate {
mut:
	box_shape_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_box_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_box_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionCapsuleShapeCreate {
mut:
	capsule_shape_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_capsule_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_capsule_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionCylinderShapeCreate {
mut:
	cylinder_shape_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_cylinder_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_cylinder_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionConvexPolygonShapeCreate {
mut:
	convex_polygon_shape_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_convex_polygon_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_convex_polygon_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionConcavePolygonShapeCreate {
mut:
	concave_polygon_shape_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_concave_polygon_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_concave_polygon_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionHeightmapShapeCreate {
mut:
	heightmap_shape_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_heightmap_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_heightmap_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionCustomShapeCreate {
mut:
	custom_shape_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_custom_shape_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_custom_shape_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionShapeSetData {
mut:
	shape_set_data_(shape RID, data Variant)
}

pub fn (s &PhysicsServer3DExtension) gd_shape_set_data(shape RID, data Variant) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_shape_set_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175752987)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	args[1] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionShapeSetCustomSolverBias {
mut:
	shape_set_custom_solver_bias_(shape RID, bias f64)
}

pub fn (s &PhysicsServer3DExtension) gd_shape_set_custom_solver_bias(shape RID, bias f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_shape_set_custom_solver_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	args[1] = unsafe{voidptr(&bias)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionShapeSetMargin {
mut:
	shape_set_margin_(shape RID, margin f64)
}

pub fn (s &PhysicsServer3DExtension) gd_shape_set_margin(shape RID, margin f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_shape_set_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	args[1] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionShapeGetMargin {
mut:
	shape_get_margin_(shape RID) f64
}

pub fn (s &PhysicsServer3DExtension) gd_shape_get_margin(shape RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_shape_get_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionShapeGetType {
mut:
	shape_get_type_(shape RID) PhysicsServer3DShapeType
}

pub fn (s &PhysicsServer3DExtension) gd_shape_get_type(shape RID) PhysicsServer3DShapeType {
	mut result := i64(PhysicsServer3DShapeType.shape_world_boundary)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_shape_get_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3418923367)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{PhysicsServer3DShapeType(result)}
}

pub interface IPhysicsServer3DExtensionShapeGetData {
mut:
	shape_get_data_(shape RID) Variant
}

pub fn (s &PhysicsServer3DExtension) gd_shape_get_data(shape RID) Variant {
	mut result := Variant{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_shape_get_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171304767)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionShapeGetCustomSolverBias {
mut:
	shape_get_custom_solver_bias_(shape RID) f64
}

pub fn (s &PhysicsServer3DExtension) gd_shape_get_custom_solver_bias(shape RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_shape_get_custom_solver_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSpaceCreate {
mut:
	space_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_space_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_space_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSpaceSetActive {
mut:
	space_set_active_(space RID, active bool)
}

pub fn (s &PhysicsServer3DExtension) gd_space_set_active(space RID, active bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_space_set_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	args[1] = unsafe{voidptr(&active)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSpaceIsActive {
mut:
	space_is_active_(space RID) bool
}

pub fn (s &PhysicsServer3DExtension) gd_space_is_active(space RID) bool {
	mut result := false
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_space_is_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSpaceSetParam {
mut:
	space_set_param_(space RID, param PhysicsServer3DSpaceParameter, value f64)
}

pub fn (s &PhysicsServer3DExtension) gd_space_set_param(space RID, param PhysicsServer3DSpaceParameter, value f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_space_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2406017470)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSpaceGetParam {
mut:
	space_get_param_(space RID, param PhysicsServer3DSpaceParameter) f64
}

pub fn (s &PhysicsServer3DExtension) gd_space_get_param(space RID, param PhysicsServer3DSpaceParameter) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_space_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1523206731)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSpaceGetDirectState {
mut:
	space_get_direct_state_(space RID) PhysicsDirectSpaceState3D
}

pub fn (s &PhysicsServer3DExtension) gd_space_get_direct_state(space RID) PhysicsDirectSpaceState3D {
	mut result := PhysicsDirectSpaceState3D{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_space_get_direct_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2048616813)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSpaceSetDebugContacts {
mut:
	space_set_debug_contacts_(space RID, max_contacts i64)
}

pub fn (s &PhysicsServer3DExtension) gd_space_set_debug_contacts(space RID, max_contacts i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_space_set_debug_contacts")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	args[1] = unsafe{voidptr(&max_contacts)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSpaceGetContacts {
mut:
	space_get_contacts_(space RID) PackedVector3Array
}

pub fn (s &PhysicsServer3DExtension) gd_space_get_contacts(space RID) PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_space_get_contacts")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 808965560)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSpaceGetContactCount {
mut:
	space_get_contact_count_(space RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_space_get_contact_count(space RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_space_get_contact_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionAreaCreate {
mut:
	area_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_area_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionAreaSetSpace {
mut:
	area_set_space_(area RID, space RID)
}

pub fn (s &PhysicsServer3DExtension) gd_area_set_space(area RID, space RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_set_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaGetSpace {
mut:
	area_get_space_(area RID) RID
}

pub fn (s &PhysicsServer3DExtension) gd_area_get_space(area RID) RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_get_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionAreaAddShape {
mut:
	area_add_shape_(area RID, shape RID, transform Transform3D, disabled bool)
}

pub fn (s &PhysicsServer3DExtension) gd_area_add_shape(area RID, shape RID, transform Transform3D, disabled bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_add_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2153848567)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&shape)}
	args[2] = unsafe{voidptr(&transform)}
	args[3] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaSetShape {
mut:
	area_set_shape_(area RID, shape_idx i64, shape RID)
}

pub fn (s &PhysicsServer3DExtension) gd_area_set_shape(area RID, shape_idx i64, shape RID) {
	classname := StringName.new("PhysicsServer3DExtension")
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

pub interface IPhysicsServer3DExtensionAreaSetShapeTransform {
mut:
	area_set_shape_transform_(area RID, shape_idx i64, transform Transform3D)
}

pub fn (s &PhysicsServer3DExtension) gd_area_set_shape_transform(area RID, shape_idx i64, transform Transform3D) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_set_shape_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 675327471)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&shape_idx)}
	args[2] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaSetShapeDisabled {
mut:
	area_set_shape_disabled_(area RID, shape_idx i64, disabled bool)
}

pub fn (s &PhysicsServer3DExtension) gd_area_set_shape_disabled(area RID, shape_idx i64, disabled bool) {
	classname := StringName.new("PhysicsServer3DExtension")
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

pub interface IPhysicsServer3DExtensionAreaGetShapeCount {
mut:
	area_get_shape_count_(area RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_area_get_shape_count(area RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_get_shape_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionAreaGetShape {
mut:
	area_get_shape_(area RID, shape_idx i64) RID
}

pub fn (s &PhysicsServer3DExtension) gd_area_get_shape(area RID, shape_idx i64) RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
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

pub interface IPhysicsServer3DExtensionAreaGetShapeTransform {
mut:
	area_get_shape_transform_(area RID, shape_idx i64) Transform3D
}

pub fn (s &PhysicsServer3DExtension) gd_area_get_shape_transform(area RID, shape_idx i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_get_shape_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1050775521)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionAreaRemoveShape {
mut:
	area_remove_shape_(area RID, shape_idx i64)
}

pub fn (s &PhysicsServer3DExtension) gd_area_remove_shape(area RID, shape_idx i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_remove_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaClearShapes {
mut:
	area_clear_shapes_(area RID)
}

pub fn (s &PhysicsServer3DExtension) gd_area_clear_shapes(area RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_clear_shapes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaAttachObjectInstanceId {
mut:
	area_attach_object_instance_id_(area RID, id i64)
}

pub fn (s &PhysicsServer3DExtension) gd_area_attach_object_instance_id(area RID, id i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_attach_object_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaGetObjectInstanceId {
mut:
	area_get_object_instance_id_(area RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_area_get_object_instance_id(area RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_get_object_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionAreaSetParam {
mut:
	area_set_param_(area RID, param PhysicsServer3DAreaParameter, value Variant)
}

pub fn (s &PhysicsServer3DExtension) gd_area_set_param(area RID, param PhysicsServer3DAreaParameter, value Variant) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2980114638)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaSetTransform {
mut:
	area_set_transform_(area RID, transform Transform3D)
}

pub fn (s &PhysicsServer3DExtension) gd_area_set_transform(area RID, transform Transform3D) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3935195649)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaGetParam {
mut:
	area_get_param_(area RID, param PhysicsServer3DAreaParameter) Variant
}

pub fn (s &PhysicsServer3DExtension) gd_area_get_param(area RID, param PhysicsServer3DAreaParameter) Variant {
	mut result := Variant{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 890056067)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionAreaGetTransform {
mut:
	area_get_transform_(area RID) Transform3D
}

pub fn (s &PhysicsServer3DExtension) gd_area_get_transform(area RID) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_get_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1128465797)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionAreaSetCollisionLayer {
mut:
	area_set_collision_layer_(area RID, layer i64)
}

pub fn (s &PhysicsServer3DExtension) gd_area_set_collision_layer(area RID, layer i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_set_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaGetCollisionLayer {
mut:
	area_get_collision_layer_(area RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_area_get_collision_layer(area RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_get_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionAreaSetCollisionMask {
mut:
	area_set_collision_mask_(area RID, mask i64)
}

pub fn (s &PhysicsServer3DExtension) gd_area_set_collision_mask(area RID, mask i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_set_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaGetCollisionMask {
mut:
	area_get_collision_mask_(area RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_area_get_collision_mask(area RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_get_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionAreaSetMonitorable {
mut:
	area_set_monitorable_(area RID, monitorable bool)
}

pub fn (s &PhysicsServer3DExtension) gd_area_set_monitorable(area RID, monitorable bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_set_monitorable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&monitorable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaSetRayPickable {
mut:
	area_set_ray_pickable_(area RID, enable bool)
}

pub fn (s &PhysicsServer3DExtension) gd_area_set_ray_pickable(area RID, enable bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_set_ray_pickable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaSetMonitorCallback {
mut:
	area_set_monitor_callback_(area RID, callback Callable)
}

pub fn (s &PhysicsServer3DExtension) gd_area_set_monitor_callback(area RID, callback Callable) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_set_monitor_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionAreaSetAreaMonitorCallback {
mut:
	area_set_area_monitor_callback_(area RID, callback Callable)
}

pub fn (s &PhysicsServer3DExtension) gd_area_set_area_monitor_callback(area RID, callback Callable) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_area_set_area_monitor_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&area)}
	args[1] = unsafe{voidptr(&callback)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyCreate {
mut:
	body_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_body_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetSpace {
mut:
	body_set_space_(body RID, space RID)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_space(body RID, space RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetSpace {
mut:
	body_get_space_(body RID) RID
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_space(body RID) RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetMode {
mut:
	body_set_mode_(body RID, mode PhysicsServer3DBodyMode)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_mode(body RID, mode PhysicsServer3DBodyMode) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 606803466)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_mode := i64(mode)
	args[1] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetMode {
mut:
	body_get_mode_(body RID) PhysicsServer3DBodyMode
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_mode(body RID) PhysicsServer3DBodyMode {
	mut result := i64(PhysicsServer3DBodyMode.body_mode_static)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2488819728)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{PhysicsServer3DBodyMode(result)}
}

pub interface IPhysicsServer3DExtensionBodyAddShape {
mut:
	body_add_shape_(body RID, shape RID, transform Transform3D, disabled bool)
}

pub fn (s &PhysicsServer3DExtension) gd_body_add_shape(body RID, shape RID, transform Transform3D, disabled bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_add_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2153848567)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&shape)}
	args[2] = unsafe{voidptr(&transform)}
	args[3] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodySetShape {
mut:
	body_set_shape_(body RID, shape_idx i64, shape RID)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_shape(body RID, shape_idx i64, shape RID) {
	classname := StringName.new("PhysicsServer3DExtension")
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

pub interface IPhysicsServer3DExtensionBodySetShapeTransform {
mut:
	body_set_shape_transform_(body RID, shape_idx i64, transform Transform3D)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_shape_transform(body RID, shape_idx i64, transform Transform3D) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_shape_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 675327471)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&shape_idx)}
	args[2] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodySetShapeDisabled {
mut:
	body_set_shape_disabled_(body RID, shape_idx i64, disabled bool)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_shape_disabled(body RID, shape_idx i64, disabled bool) {
	classname := StringName.new("PhysicsServer3DExtension")
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

pub interface IPhysicsServer3DExtensionBodyGetShapeCount {
mut:
	body_get_shape_count_(body RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_shape_count(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_shape_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodyGetShape {
mut:
	body_get_shape_(body RID, shape_idx i64) RID
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_shape(body RID, shape_idx i64) RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
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

pub interface IPhysicsServer3DExtensionBodyGetShapeTransform {
mut:
	body_get_shape_transform_(body RID, shape_idx i64) Transform3D
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_shape_transform(body RID, shape_idx i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_shape_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1050775521)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodyRemoveShape {
mut:
	body_remove_shape_(body RID, shape_idx i64)
}

pub fn (s &PhysicsServer3DExtension) gd_body_remove_shape(body RID, shape_idx i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_remove_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&shape_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyClearShapes {
mut:
	body_clear_shapes_(body RID)
}

pub fn (s &PhysicsServer3DExtension) gd_body_clear_shapes(body RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_clear_shapes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyAttachObjectInstanceId {
mut:
	body_attach_object_instance_id_(body RID, id i64)
}

pub fn (s &PhysicsServer3DExtension) gd_body_attach_object_instance_id(body RID, id i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_attach_object_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetObjectInstanceId {
mut:
	body_get_object_instance_id_(body RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_object_instance_id(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_object_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetEnableContinuousCollisionDetection {
mut:
	body_set_enable_continuous_collision_detection_(body RID, enable bool)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_enable_continuous_collision_detection(body RID, enable bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_enable_continuous_collision_detection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyIsContinuousCollisionDetectionEnabled {
mut:
	body_is_continuous_collision_detection_enabled_(body RID) bool
}

pub fn (s &PhysicsServer3DExtension) gd_body_is_continuous_collision_detection_enabled(body RID) bool {
	mut result := false
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_is_continuous_collision_detection_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetCollisionLayer {
mut:
	body_set_collision_layer_(body RID, layer i64)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_collision_layer(body RID, layer i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetCollisionLayer {
mut:
	body_get_collision_layer_(body RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_collision_layer(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetCollisionMask {
mut:
	body_set_collision_mask_(body RID, mask i64)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_collision_mask(body RID, mask i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetCollisionMask {
mut:
	body_get_collision_mask_(body RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_collision_mask(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetCollisionPriority {
mut:
	body_set_collision_priority_(body RID, priority f64)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_collision_priority(body RID, priority f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_collision_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetCollisionPriority {
mut:
	body_get_collision_priority_(body RID) f64
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_collision_priority(body RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_collision_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetUserFlags {
mut:
	body_set_user_flags_(body RID, flags i64)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_user_flags(body RID, flags i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_user_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetUserFlags {
mut:
	body_get_user_flags_(body RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_user_flags(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_user_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetParam {
mut:
	body_set_param_(body RID, param PhysicsServer3DBodyParameter, value Variant)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_param(body RID, param PhysicsServer3DBodyParameter, value Variant) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 910941953)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetParam {
mut:
	body_get_param_(body RID, param PhysicsServer3DBodyParameter) Variant
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_param(body RID, param PhysicsServer3DBodyParameter) Variant {
	mut result := Variant{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385027841)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodyResetMassProperties {
mut:
	body_reset_mass_properties_(body RID)
}

pub fn (s &PhysicsServer3DExtension) gd_body_reset_mass_properties(body RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_reset_mass_properties")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodySetState {
mut:
	body_set_state_(body RID, state PhysicsServer3DBodyState, value Variant)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_state(body RID, state PhysicsServer3DBodyState, value Variant) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 599977762)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_state := i64(state)
	args[1] = unsafe{voidptr(&i64_state)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetState {
mut:
	body_get_state_(body RID, state PhysicsServer3DBodyState) Variant
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_state(body RID, state PhysicsServer3DBodyState) Variant {
	mut result := Variant{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1850449534)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_state := i64(state)
	args[1] = unsafe{voidptr(&i64_state)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodyApplyCentralImpulse {
mut:
	body_apply_central_impulse_(body RID, impulse Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_body_apply_central_impulse(body RID, impulse Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_apply_central_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&impulse)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyApplyImpulse {
mut:
	body_apply_impulse_(body RID, impulse Vector3, position Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_body_apply_impulse(body RID, impulse Vector3, position Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_apply_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3214966418)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&impulse)}
	args[2] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyApplyTorqueImpulse {
mut:
	body_apply_torque_impulse_(body RID, impulse Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_body_apply_torque_impulse(body RID, impulse Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_apply_torque_impulse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&impulse)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyApplyCentralForce {
mut:
	body_apply_central_force_(body RID, force Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_body_apply_central_force(body RID, force Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_apply_central_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyApplyForce {
mut:
	body_apply_force_(body RID, force Vector3, position Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_body_apply_force(body RID, force Vector3, position Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_apply_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3214966418)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&force)}
	args[2] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyApplyTorque {
mut:
	body_apply_torque_(body RID, torque Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_body_apply_torque(body RID, torque Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_apply_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&torque)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyAddConstantCentralForce {
mut:
	body_add_constant_central_force_(body RID, force Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_body_add_constant_central_force(body RID, force Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_add_constant_central_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyAddConstantForce {
mut:
	body_add_constant_force_(body RID, force Vector3, position Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_body_add_constant_force(body RID, force Vector3, position Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_add_constant_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3214966418)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&force)}
	args[2] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyAddConstantTorque {
mut:
	body_add_constant_torque_(body RID, torque Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_body_add_constant_torque(body RID, torque Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_add_constant_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&torque)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodySetConstantForce {
mut:
	body_set_constant_force_(body RID, force Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_constant_force(body RID, force Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_constant_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&force)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetConstantForce {
mut:
	body_get_constant_force_(body RID) Vector3
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_constant_force(body RID) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_constant_force")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetConstantTorque {
mut:
	body_set_constant_torque_(body RID, torque Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_constant_torque(body RID, torque Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_constant_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&torque)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetConstantTorque {
mut:
	body_get_constant_torque_(body RID) Vector3
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_constant_torque(body RID) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_constant_torque")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetAxisVelocity {
mut:
	body_set_axis_velocity_(body RID, axis_velocity Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_axis_velocity(body RID, axis_velocity Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_axis_velocity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&axis_velocity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodySetAxisLock {
mut:
	body_set_axis_lock_(body RID, axis PhysicsServer3DBodyAxis, gd_lock bool)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_axis_lock(body RID, axis PhysicsServer3DBodyAxis, gd_lock bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_axis_lock")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2020836892)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_axis := i64(axis)
	args[1] = unsafe{voidptr(&i64_axis)}
	args[2] = unsafe{voidptr(&gd_lock)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyIsAxisLocked {
mut:
	body_is_axis_locked_(body RID, axis PhysicsServer3DBodyAxis) bool
}

pub fn (s &PhysicsServer3DExtension) gd_body_is_axis_locked(body RID, axis PhysicsServer3DBodyAxis) bool {
	mut result := false
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_is_axis_locked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 587853580)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_axis := i64(axis)
	args[1] = unsafe{voidptr(&i64_axis)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodyAddCollisionException {
mut:
	body_add_collision_exception_(body RID, excepted_body RID)
}

pub fn (s &PhysicsServer3DExtension) gd_body_add_collision_exception(body RID, excepted_body RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_add_collision_exception")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&excepted_body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyRemoveCollisionException {
mut:
	body_remove_collision_exception_(body RID, excepted_body RID)
}

pub fn (s &PhysicsServer3DExtension) gd_body_remove_collision_exception(body RID, excepted_body RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_remove_collision_exception")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&excepted_body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetCollisionExceptions {
mut:
	body_get_collision_exceptions_(body RID) Array
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_collision_exceptions(body RID) Array {
	mut result := Array{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_collision_exceptions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetMaxContactsReported {
mut:
	body_set_max_contacts_reported_(body RID, amount i64)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_max_contacts_reported(body RID, amount i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_max_contacts_reported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetMaxContactsReported {
mut:
	body_get_max_contacts_reported_(body RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_max_contacts_reported(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_max_contacts_reported")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetContactsReportedDepthThreshold {
mut:
	body_set_contacts_reported_depth_threshold_(body RID, threshold f64)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_contacts_reported_depth_threshold(body RID, threshold f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_contacts_reported_depth_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&threshold)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyGetContactsReportedDepthThreshold {
mut:
	body_get_contacts_reported_depth_threshold_(body RID) f64
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_contacts_reported_depth_threshold(body RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_contacts_reported_depth_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetOmitForceIntegration {
mut:
	body_set_omit_force_integration_(body RID, enable bool)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_omit_force_integration(body RID, enable bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_omit_force_integration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyIsOmittingForceIntegration {
mut:
	body_is_omitting_force_integration_(body RID) bool
}

pub fn (s &PhysicsServer3DExtension) gd_body_is_omitting_force_integration(body RID) bool {
	mut result := false
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_is_omitting_force_integration")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodySetStateSyncCallback {
mut:
	body_set_state_sync_callback_(body RID, callable Callable)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_state_sync_callback(body RID, callable Callable) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_state_sync_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodySetForceIntegrationCallback {
mut:
	body_set_force_integration_callback_(body RID, callable Callable, userdata Variant)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_force_integration_callback(body RID, callable Callable, userdata Variant) {
	classname := StringName.new("PhysicsServer3DExtension")
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

pub interface IPhysicsServer3DExtensionBodySetRayPickable {
mut:
	body_set_ray_pickable_(body RID, enable bool)
}

pub fn (s &PhysicsServer3DExtension) gd_body_set_ray_pickable(body RID, enable bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_set_ray_pickable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionBodyTestMotion {
mut:
	body_test_motion_(body RID, from Transform3D, motion Vector3, margin f64, max_collisions i64, collide_separation_ray bool, recovery_as_collision bool, gd_result &PhysicsServer3DExtensionMotionResult) bool
}

pub fn (s &PhysicsServer3DExtension) gd_body_test_motion(body RID, from Transform3D, motion Vector3, margin f64, max_collisions i64, collide_separation_ray bool, recovery_as_collision bool, gd_result &PhysicsServer3DExtensionMotionResult) bool {
	mut result := false
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_test_motion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3627463434)
	mut args := unsafe { [8]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&from)}
	args[2] = unsafe{voidptr(&motion)}
	args[3] = unsafe{voidptr(&margin)}
	args[4] = unsafe{voidptr(&max_collisions)}
	args[5] = unsafe{voidptr(&collide_separation_ray)}
	args[6] = unsafe{voidptr(&recovery_as_collision)}
	args[7] = unsafe{voidptr(&gd_result)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionBodyGetDirectState {
mut:
	body_get_direct_state_(body RID) PhysicsDirectBodyState3D
}

pub fn (s &PhysicsServer3DExtension) gd_body_get_direct_state(body RID) PhysicsDirectBodyState3D {
	mut result := PhysicsDirectBodyState3D{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_body_get_direct_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3029727957)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodyCreate {
mut:
	soft_body_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodyUpdateRenderingServer {
mut:
	soft_body_update_rendering_server_(body RID, rendering_server_handler PhysicsServer3DRenderingServerHandler)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_update_rendering_server(body RID, rendering_server_handler PhysicsServer3DRenderingServerHandler) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_update_rendering_server")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2218179753)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = voidptr(&rendering_server_handler.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodySetSpace {
mut:
	soft_body_set_space_(body RID, space RID)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_space(body RID, space RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetSpace {
mut:
	soft_body_get_space_(body RID) RID
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_space(body RID) RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodySetRayPickable {
mut:
	soft_body_set_ray_pickable_(body RID, enable bool)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_ray_pickable(body RID, enable bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_ray_pickable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodySetCollisionLayer {
mut:
	soft_body_set_collision_layer_(body RID, layer i64)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_collision_layer(body RID, layer i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetCollisionLayer {
mut:
	soft_body_get_collision_layer_(body RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_collision_layer(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_collision_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodySetCollisionMask {
mut:
	soft_body_set_collision_mask_(body RID, mask i64)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_collision_mask(body RID, mask i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetCollisionMask {
mut:
	soft_body_get_collision_mask_(body RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_collision_mask(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodyAddCollisionException {
mut:
	soft_body_add_collision_exception_(body RID, body_b RID)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_add_collision_exception(body RID, body_b RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_add_collision_exception")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&body_b)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyRemoveCollisionException {
mut:
	soft_body_remove_collision_exception_(body RID, body_b RID)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_remove_collision_exception(body RID, body_b RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_remove_collision_exception")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&body_b)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetCollisionExceptions {
mut:
	soft_body_get_collision_exceptions_(body RID) Array
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_collision_exceptions(body RID) Array {
	mut result := Array{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_collision_exceptions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodySetState {
mut:
	soft_body_set_state_(body RID, state PhysicsServer3DBodyState, variant Variant)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_state(body RID, state PhysicsServer3DBodyState, variant Variant) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 599977762)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_state := i64(state)
	args[1] = unsafe{voidptr(&i64_state)}
	args[2] = unsafe{voidptr(&variant)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetState {
mut:
	soft_body_get_state_(body RID, state PhysicsServer3DBodyState) Variant
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_state(body RID, state PhysicsServer3DBodyState) Variant {
	mut result := Variant{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1850449534)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	i64_state := i64(state)
	args[1] = unsafe{voidptr(&i64_state)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodySetTransform {
mut:
	soft_body_set_transform_(body RID, transform Transform3D)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_transform(body RID, transform Transform3D) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3935195649)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodySetSimulationPrecision {
mut:
	soft_body_set_simulation_precision_(body RID, simulation_precision i64)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_simulation_precision(body RID, simulation_precision i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_simulation_precision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&simulation_precision)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetSimulationPrecision {
mut:
	soft_body_get_simulation_precision_(body RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_simulation_precision(body RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_simulation_precision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodySetTotalMass {
mut:
	soft_body_set_total_mass_(body RID, total_mass f64)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_total_mass(body RID, total_mass f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_total_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&total_mass)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetTotalMass {
mut:
	soft_body_get_total_mass_(body RID) f64
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_total_mass(body RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_total_mass")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodySetLinearStiffness {
mut:
	soft_body_set_linear_stiffness_(body RID, linear_stiffness f64)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_linear_stiffness(body RID, linear_stiffness f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_linear_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&linear_stiffness)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetLinearStiffness {
mut:
	soft_body_get_linear_stiffness_(body RID) f64
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_linear_stiffness(body RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_linear_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodySetPressureCoefficient {
mut:
	soft_body_set_pressure_coefficient_(body RID, pressure_coefficient f64)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_pressure_coefficient(body RID, pressure_coefficient f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_pressure_coefficient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&pressure_coefficient)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetPressureCoefficient {
mut:
	soft_body_get_pressure_coefficient_(body RID) f64
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_pressure_coefficient(body RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_pressure_coefficient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodySetDampingCoefficient {
mut:
	soft_body_set_damping_coefficient_(body RID, damping_coefficient f64)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_damping_coefficient(body RID, damping_coefficient f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_damping_coefficient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&damping_coefficient)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetDampingCoefficient {
mut:
	soft_body_get_damping_coefficient_(body RID) f64
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_damping_coefficient(body RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_damping_coefficient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodySetDragCoefficient {
mut:
	soft_body_set_drag_coefficient_(body RID, drag_coefficient f64)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_drag_coefficient(body RID, drag_coefficient f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_drag_coefficient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&drag_coefficient)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetDragCoefficient {
mut:
	soft_body_get_drag_coefficient_(body RID) f64
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_drag_coefficient(body RID) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_drag_coefficient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodySetMesh {
mut:
	soft_body_set_mesh_(body RID, mesh RID)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_set_mesh(body RID, mesh RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_set_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&mesh)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetBounds {
mut:
	soft_body_get_bounds_(body RID) AABB
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_bounds(body RID) AABB {
	mut result := AABB{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_bounds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 974181306)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodyMovePoint {
mut:
	soft_body_move_point_(body RID, point_index i64, global_position Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_move_point(body RID, point_index i64, global_position Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_move_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 831953689)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&point_index)}
	args[2] = unsafe{voidptr(&global_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyGetPointGlobalPosition {
mut:
	soft_body_get_point_global_position_(body RID, point_index i64) Vector3
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_get_point_global_position(body RID, point_index i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_get_point_global_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3440143363)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&point_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionSoftBodyRemoveAllPinnedPoints {
mut:
	soft_body_remove_all_pinned_points_(body RID)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_remove_all_pinned_points(body RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_remove_all_pinned_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyPinPoint {
mut:
	soft_body_pin_point_(body RID, point_index i64, pin bool)
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_pin_point(body RID, point_index i64, pin bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_pin_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2658558584)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&point_index)}
	args[2] = unsafe{voidptr(&pin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSoftBodyIsPointPinned {
mut:
	soft_body_is_point_pinned_(body RID, point_index i64) bool
}

pub fn (s &PhysicsServer3DExtension) gd_soft_body_is_point_pinned(body RID, point_index i64) bool {
	mut result := false
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_soft_body_is_point_pinned")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3120086654)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	args[1] = unsafe{voidptr(&point_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionJointCreate {
mut:
	joint_create_() RID
}

pub fn (s &PhysicsServer3DExtension) gd_joint_create() RID {
	mut result := RID{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_create")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionJointClear {
mut:
	joint_clear_(joint RID)
}

pub fn (s &PhysicsServer3DExtension) gd_joint_clear(joint RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionJointMakePin {
mut:
	joint_make_pin_(joint RID, body_a RID, local_a Vector3, body_b RID, local_b Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_joint_make_pin(joint RID, body_a RID, local_a Vector3, body_b RID, local_b Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_make_pin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4280171926)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&body_a)}
	args[2] = unsafe{voidptr(&local_a)}
	args[3] = unsafe{voidptr(&body_b)}
	args[4] = unsafe{voidptr(&local_b)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionPinJointSetParam {
mut:
	pin_joint_set_param_(joint RID, param PhysicsServer3DPinJointParam, value f64)
}

pub fn (s &PhysicsServer3DExtension) gd_pin_joint_set_param(joint RID, param PhysicsServer3DPinJointParam, value f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_pin_joint_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 810685294)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionPinJointGetParam {
mut:
	pin_joint_get_param_(joint RID, param PhysicsServer3DPinJointParam) f64
}

pub fn (s &PhysicsServer3DExtension) gd_pin_joint_get_param(joint RID, param PhysicsServer3DPinJointParam) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_pin_joint_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817972347)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionPinJointSetLocalA {
mut:
	pin_joint_set_local_a_(joint RID, local_a Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_pin_joint_set_local_a(joint RID, local_a Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_pin_joint_set_local_a")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&local_a)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionPinJointGetLocalA {
mut:
	pin_joint_get_local_a_(joint RID) Vector3
}

pub fn (s &PhysicsServer3DExtension) gd_pin_joint_get_local_a(joint RID) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_pin_joint_get_local_a")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionPinJointSetLocalB {
mut:
	pin_joint_set_local_b_(joint RID, local_b Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_pin_joint_set_local_b(joint RID, local_b Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_pin_joint_set_local_b")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&local_b)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionPinJointGetLocalB {
mut:
	pin_joint_get_local_b_(joint RID) Vector3
}

pub fn (s &PhysicsServer3DExtension) gd_pin_joint_get_local_b(joint RID) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_pin_joint_get_local_b")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionJointMakeHinge {
mut:
	joint_make_hinge_(joint RID, body_a RID, hinge_a Transform3D, body_b RID, hinge_b Transform3D)
}

pub fn (s &PhysicsServer3DExtension) gd_joint_make_hinge(joint RID, body_a RID, hinge_a Transform3D, body_b RID, hinge_b Transform3D) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_make_hinge")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684107643)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&body_a)}
	args[2] = unsafe{voidptr(&hinge_a)}
	args[3] = unsafe{voidptr(&body_b)}
	args[4] = unsafe{voidptr(&hinge_b)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionJointMakeHingeSimple {
mut:
	joint_make_hinge_simple_(joint RID, body_a RID, pivot_a Vector3, axis_a Vector3, body_b RID, pivot_b Vector3, axis_b Vector3)
}

pub fn (s &PhysicsServer3DExtension) gd_joint_make_hinge_simple(joint RID, body_a RID, pivot_a Vector3, axis_a Vector3, body_b RID, pivot_b Vector3, axis_b Vector3) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_make_hinge_simple")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4069547571)
	mut args := unsafe { [7]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&body_a)}
	args[2] = unsafe{voidptr(&pivot_a)}
	args[3] = unsafe{voidptr(&axis_a)}
	args[4] = unsafe{voidptr(&body_b)}
	args[5] = unsafe{voidptr(&pivot_b)}
	args[6] = unsafe{voidptr(&axis_b)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionHingeJointSetParam {
mut:
	hinge_joint_set_param_(joint RID, param PhysicsServer3DHingeJointParam, value f64)
}

pub fn (s &PhysicsServer3DExtension) gd_hinge_joint_set_param(joint RID, param PhysicsServer3DHingeJointParam, value f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_hinge_joint_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3165502333)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionHingeJointGetParam {
mut:
	hinge_joint_get_param_(joint RID, param PhysicsServer3DHingeJointParam) f64
}

pub fn (s &PhysicsServer3DExtension) gd_hinge_joint_get_param(joint RID, param PhysicsServer3DHingeJointParam) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_hinge_joint_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2129207581)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionHingeJointSetFlag {
mut:
	hinge_joint_set_flag_(joint RID, flag PhysicsServer3DHingeJointFlag, enabled bool)
}

pub fn (s &PhysicsServer3DExtension) gd_hinge_joint_set_flag(joint RID, flag PhysicsServer3DHingeJointFlag, enabled bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_hinge_joint_set_flag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1601626188)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_flag := i64(flag)
	args[1] = unsafe{voidptr(&i64_flag)}
	args[2] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionHingeJointGetFlag {
mut:
	hinge_joint_get_flag_(joint RID, flag PhysicsServer3DHingeJointFlag) bool
}

pub fn (s &PhysicsServer3DExtension) gd_hinge_joint_get_flag(joint RID, flag PhysicsServer3DHingeJointFlag) bool {
	mut result := false
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_hinge_joint_get_flag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4165147865)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_flag := i64(flag)
	args[1] = unsafe{voidptr(&i64_flag)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionJointMakeSlider {
mut:
	joint_make_slider_(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D)
}

pub fn (s &PhysicsServer3DExtension) gd_joint_make_slider(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_make_slider")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684107643)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&body_a)}
	args[2] = unsafe{voidptr(&local_ref_a)}
	args[3] = unsafe{voidptr(&body_b)}
	args[4] = unsafe{voidptr(&local_ref_b)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSliderJointSetParam {
mut:
	slider_joint_set_param_(joint RID, param PhysicsServer3DSliderJointParam, value f64)
}

pub fn (s &PhysicsServer3DExtension) gd_slider_joint_set_param(joint RID, param PhysicsServer3DSliderJointParam, value f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_slider_joint_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2264833593)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSliderJointGetParam {
mut:
	slider_joint_get_param_(joint RID, param PhysicsServer3DSliderJointParam) f64
}

pub fn (s &PhysicsServer3DExtension) gd_slider_joint_get_param(joint RID, param PhysicsServer3DSliderJointParam) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_slider_joint_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3498644957)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionJointMakeConeTwist {
mut:
	joint_make_cone_twist_(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D)
}

pub fn (s &PhysicsServer3DExtension) gd_joint_make_cone_twist(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_make_cone_twist")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684107643)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&body_a)}
	args[2] = unsafe{voidptr(&local_ref_a)}
	args[3] = unsafe{voidptr(&body_b)}
	args[4] = unsafe{voidptr(&local_ref_b)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionConeTwistJointSetParam {
mut:
	cone_twist_joint_set_param_(joint RID, param PhysicsServer3DConeTwistJointParam, value f64)
}

pub fn (s &PhysicsServer3DExtension) gd_cone_twist_joint_set_param(joint RID, param PhysicsServer3DConeTwistJointParam, value f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_cone_twist_joint_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 808587618)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionConeTwistJointGetParam {
mut:
	cone_twist_joint_get_param_(joint RID, param PhysicsServer3DConeTwistJointParam) f64
}

pub fn (s &PhysicsServer3DExtension) gd_cone_twist_joint_get_param(joint RID, param PhysicsServer3DConeTwistJointParam) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_cone_twist_joint_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1134789658)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_param := i64(param)
	args[1] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionJointMakeGeneric6dof {
mut:
	joint_make_generic_6dof_(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D)
}

pub fn (s &PhysicsServer3DExtension) gd_joint_make_generic_6dof(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_make_generic_6dof")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684107643)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&body_a)}
	args[2] = unsafe{voidptr(&local_ref_a)}
	args[3] = unsafe{voidptr(&body_b)}
	args[4] = unsafe{voidptr(&local_ref_b)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionGeneric6dofJointSetParam {
mut:
	generic_6dof_joint_set_param_(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam, value f64)
}

pub fn (s &PhysicsServer3DExtension) gd_generic_6dof_joint_set_param(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam, value f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_generic_6dof_joint_set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2600081391)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_axis := i64(axis)
	args[1] = unsafe{voidptr(&i64_axis)}
	i64_param := i64(param)
	args[2] = unsafe{voidptr(&i64_param)}
	args[3] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionGeneric6dofJointGetParam {
mut:
	generic_6dof_joint_get_param_(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam) f64
}

pub fn (s &PhysicsServer3DExtension) gd_generic_6dof_joint_get_param(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam) f64 {
	mut result := f64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_generic_6dof_joint_get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 467122058)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_axis := i64(axis)
	args[1] = unsafe{voidptr(&i64_axis)}
	i64_param := i64(param)
	args[2] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionGeneric6dofJointSetFlag {
mut:
	generic_6dof_joint_set_flag_(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag, enable bool)
}

pub fn (s &PhysicsServer3DExtension) gd_generic_6dof_joint_set_flag(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag, enable bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_generic_6dof_joint_set_flag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3570926903)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_axis := i64(axis)
	args[1] = unsafe{voidptr(&i64_axis)}
	i64_flag := i64(flag)
	args[2] = unsafe{voidptr(&i64_flag)}
	args[3] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionGeneric6dofJointGetFlag {
mut:
	generic_6dof_joint_get_flag_(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag) bool
}

pub fn (s &PhysicsServer3DExtension) gd_generic_6dof_joint_get_flag(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag) bool {
	mut result := false
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_generic_6dof_joint_get_flag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4158090196)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	i64_axis := i64(axis)
	args[1] = unsafe{voidptr(&i64_axis)}
	i64_flag := i64(flag)
	args[2] = unsafe{voidptr(&i64_flag)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionJointGetType {
mut:
	joint_get_type_(joint RID) PhysicsServer3DJointType
}

pub fn (s &PhysicsServer3DExtension) gd_joint_get_type(joint RID) PhysicsServer3DJointType {
	mut result := i64(PhysicsServer3DJointType.joint_type_pin)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_get_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290791900)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{PhysicsServer3DJointType(result)}
}

pub interface IPhysicsServer3DExtensionJointSetSolverPriority {
mut:
	joint_set_solver_priority_(joint RID, priority i64)
}

pub fn (s &PhysicsServer3DExtension) gd_joint_set_solver_priority(joint RID, priority i64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_set_solver_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionJointGetSolverPriority {
mut:
	joint_get_solver_priority_(joint RID) i64
}

pub fn (s &PhysicsServer3DExtension) gd_joint_get_solver_priority(joint RID) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_get_solver_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionJointDisableCollisionsBetweenBodies {
mut:
	joint_disable_collisions_between_bodies_(joint RID, disable bool)
}

pub fn (s &PhysicsServer3DExtension) gd_joint_disable_collisions_between_bodies(joint RID, disable bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_disable_collisions_between_bodies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	args[1] = unsafe{voidptr(&disable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionJointIsDisabledCollisionsBetweenBodies {
mut:
	joint_is_disabled_collisions_between_bodies_(joint RID) bool
}

pub fn (s &PhysicsServer3DExtension) gd_joint_is_disabled_collisions_between_bodies(joint RID) bool {
	mut result := false
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_joint_is_disabled_collisions_between_bodies")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&joint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionFreeRid {
mut:
	free_rid_(rid RID)
}

pub fn (s &PhysicsServer3DExtension) gd_free_rid(rid RID) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_free_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSetActive {
mut:
	set_active_(active bool)
}

pub fn (s &PhysicsServer3DExtension) gd_set_active(active bool) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_set_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&active)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionInit {
mut:
	init_()
}

pub fn (s &PhysicsServer3DExtension) gd_init() {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_init")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionStep {
mut:
	step_(step f64)
}

pub fn (s &PhysicsServer3DExtension) gd_step(step f64) {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&step)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionSync {
mut:
	sync_()
}

pub fn (s &PhysicsServer3DExtension) gd_sync() {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_sync")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionFlushQueries {
mut:
	flush_queries_()
}

pub fn (s &PhysicsServer3DExtension) gd_flush_queries() {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_flush_queries")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionEndSync {
mut:
	end_sync_()
}

pub fn (s &PhysicsServer3DExtension) gd_end_sync() {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_end_sync")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionFinish {
mut:
	finish_()
}

pub fn (s &PhysicsServer3DExtension) gd_finish() {
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_finish")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DExtensionIsFlushingQueries {
mut:
	is_flushing_queries_() bool
}

pub fn (s &PhysicsServer3DExtension) gd_is_flushing_queries() bool {
	mut result := false
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_is_flushing_queries")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IPhysicsServer3DExtensionGetProcessInfo {
mut:
	get_process_info_(process_info PhysicsServer3DProcessInfo) i64
}

pub fn (s &PhysicsServer3DExtension) gd_get_process_info(process_info PhysicsServer3DProcessInfo) i64 {
	mut result := i64(0)
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("_get_process_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1332958745)
	mut args := unsafe { [1]voidptr{} }
	i64_process_info := i64(process_info)
	args[0] = unsafe{voidptr(&i64_process_info)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsServer3DExtension) body_test_motion_is_excluding_body(body RID) bool {
	mut result := false
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("body_test_motion_is_excluding_body")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&body)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PhysicsServer3DExtension) body_test_motion_is_excluding_object(object i64) bool {
	mut result := false
	classname := StringName.new("PhysicsServer3DExtension")
	fnname := StringName.new("body_test_motion_is_excluding_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&object)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
