module gd

pub enum NavigationPolygonSamplePartitionType as i64 {
	sample_partition_convex_partition = 0
	sample_partition_triangulate = 1
	sample_partition_max = 2
}

pub enum NavigationPolygonParsedGeometryType as i64 {
	parsed_geometry_mesh_instances = 0
	parsed_geometry_static_colliders = 1
	parsed_geometry_both = 2
	parsed_geometry_max = 3
}

pub enum NavigationPolygonSourceGeometryMode as i64 {
	source_geometry_root_node_children = 0
	source_geometry_groups_with_children = 1
	source_geometry_groups_explicit = 2
	source_geometry_max = 3
}

pub struct NavigationPolygon {
	Resource
}

pub fn (s &NavigationPolygon) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s NavigationPolygon) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &NavigationPolygon) set_vertices(vertices PackedVector2Array) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_vertices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vertices)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_vertices() PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_vertices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) add_polygon(polygon PackedInt32Array) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("add_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&polygon)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_polygon_count() i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_polygon_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) get_polygon(idx i64) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3668444399)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) clear_polygons() {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("clear_polygons")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_navigation_mesh() NavigationMesh {
	mut result := NavigationMesh{}
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_navigation_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 330232164)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) add_outline(outline PackedVector2Array) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("add_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&outline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) add_outline_at_index(outline PackedVector2Array, index i64) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("add_outline_at_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1569738947)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&outline)}
	args[1] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_outline_count() i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_outline_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) set_outline(idx i64, outline PackedVector2Array) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1201971903)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&outline)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_outline(idx i64) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3946907486)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) remove_outline(idx i64) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("remove_outline")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) clear_outlines() {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("clear_outlines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) make_polygons_from_outlines() {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("make_polygons_from_outlines")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) set_cell_size(cell_size f64) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_cell_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cell_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_cell_size() f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_cell_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) set_border_size(border_size f64) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_border_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&border_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_border_size() f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_border_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) set_sample_partition_type(sample_partition_type NavigationPolygonSamplePartitionType) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_sample_partition_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2441478482)
	mut args := unsafe { [1]voidptr{} }
	i64_sample_partition_type := i64(sample_partition_type)
	args[0] = unsafe{voidptr(&i64_sample_partition_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_sample_partition_type() NavigationPolygonSamplePartitionType {
	mut result := i64(NavigationPolygonSamplePartitionType.sample_partition_convex_partition)
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_sample_partition_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3887422851)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NavigationPolygonSamplePartitionType(result)}
}

pub fn (s &NavigationPolygon) set_parsed_geometry_type(geometry_type NavigationPolygonParsedGeometryType) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_parsed_geometry_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2507971764)
	mut args := unsafe { [1]voidptr{} }
	i64_geometry_type := i64(geometry_type)
	args[0] = unsafe{voidptr(&i64_geometry_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_parsed_geometry_type() NavigationPolygonParsedGeometryType {
	mut result := i64(NavigationPolygonParsedGeometryType.parsed_geometry_mesh_instances)
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_parsed_geometry_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1073219508)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NavigationPolygonParsedGeometryType(result)}
}

pub fn (s &NavigationPolygon) set_parsed_collision_mask(mask i64) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_parsed_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_parsed_collision_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_parsed_collision_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) set_parsed_collision_mask_value(layer_number i64, value bool) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_parsed_collision_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_parsed_collision_mask_value(layer_number i64) bool {
	mut result := false
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_parsed_collision_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) set_source_geometry_mode(geometry_mode NavigationPolygonSourceGeometryMode) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_source_geometry_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4002316705)
	mut args := unsafe { [1]voidptr{} }
	i64_geometry_mode := i64(geometry_mode)
	args[0] = unsafe{voidptr(&i64_geometry_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_source_geometry_mode() NavigationPolygonSourceGeometryMode {
	mut result := i64(NavigationPolygonSourceGeometryMode.source_geometry_root_node_children)
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_source_geometry_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 459686762)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NavigationPolygonSourceGeometryMode(result)}
}

pub fn (s &NavigationPolygon) set_source_geometry_group_name(group_name string) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_source_geometry_group_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(group_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_source_geometry_group_name() string {
	mut result := StringName{}
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_source_geometry_group_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &NavigationPolygon) set_agent_radius(agent_radius f64) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_agent_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&agent_radius)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_agent_radius() f64 {
	mut result := f64(0)
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_agent_radius")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) set_baking_rect(rect Rect2) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_baking_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_baking_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_baking_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) set_baking_rect_offset(rect_offset Vector2) {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("set_baking_rect_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rect_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &NavigationPolygon) get_baking_rect_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("get_baking_rect_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &NavigationPolygon) clear() {
	classname := StringName.new("NavigationPolygon")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
