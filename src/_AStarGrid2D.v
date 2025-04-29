module gd

pub enum AStarGrid2DHeuristic as i64 {
	heuristic_euclidean = 0
	heuristic_manhattan = 1
	heuristic_octile = 2
	heuristic_chebyshev = 3
	heuristic_max = 4
}

pub enum AStarGrid2DDiagonalMode as i64 {
	diagonal_mode_always = 0
	diagonal_mode_never = 1
	diagonal_mode_at_least_one_walkable = 2
	diagonal_mode_only_if_no_obstacles = 3
	diagonal_mode_max = 4
}

pub enum AStarGrid2DCellShape as i64 {
	cell_shape_square = 0
	cell_shape_isometric_right = 1
	cell_shape_isometric_down = 2
	cell_shape_max = 3
}

pub struct AStarGrid2D {
	RefCounted
}

pub fn (s &AStarGrid2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AStarGrid2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IAStarGrid2DEstimateCost {
mut:
	estimate_cost_(from_id Vector2i, end_id Vector2i) f64
}

pub fn (s &AStarGrid2D) gd_estimate_cost(from_id Vector2i, end_id Vector2i) f64 {
	mut result := f64(0)
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("_estimate_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2153177966)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_id)}
	args[1] = unsafe{voidptr(&end_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAStarGrid2DComputeCost {
mut:
	compute_cost_(from_id Vector2i, to_id Vector2i) f64
}

pub fn (s &AStarGrid2D) gd_compute_cost(from_id Vector2i, to_id Vector2i) f64 {
	mut result := f64(0)
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("_compute_cost")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2153177966)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from_id)}
	args[1] = unsafe{voidptr(&to_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStarGrid2D) set_region(region Rect2i) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("set_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1763793166)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) get_region() Rect2i {
	mut result := Rect2i{}
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 410525958)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStarGrid2D) set_size(size Vector2i) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("set_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) get_size() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStarGrid2D) set_offset(offset Vector2) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("set_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) get_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStarGrid2D) set_cell_size(cell_size Vector2) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("set_cell_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cell_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) get_cell_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_cell_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStarGrid2D) set_cell_shape(cell_shape AStarGrid2DCellShape) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("set_cell_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4130591146)
	mut args := unsafe { [1]voidptr{} }
	i64_cell_shape := i64(cell_shape)
	args[0] = unsafe{voidptr(&i64_cell_shape)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) get_cell_shape() AStarGrid2DCellShape {
	mut result := i64(AStarGrid2DCellShape.cell_shape_square)
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_cell_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3293463634)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AStarGrid2DCellShape(result)}
}

pub fn (s &AStarGrid2D) is_in_bounds(x i64, y i64) bool {
	mut result := false
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("is_in_bounds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&x)}
	args[1] = unsafe{voidptr(&y)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStarGrid2D) is_in_boundsv(id Vector2i) bool {
	mut result := false
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("is_in_boundsv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStarGrid2D) is_dirty() bool {
	mut result := false
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("is_dirty")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStarGrid2D) update() {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) set_jumping_enabled(enabled bool) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("set_jumping_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) is_jumping_enabled() bool {
	mut result := false
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("is_jumping_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStarGrid2D) set_diagonal_mode(mode AStarGrid2DDiagonalMode) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("set_diagonal_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017829798)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) get_diagonal_mode() AStarGrid2DDiagonalMode {
	mut result := i64(AStarGrid2DDiagonalMode.diagonal_mode_always)
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_diagonal_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3129282674)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AStarGrid2DDiagonalMode(result)}
}

pub fn (s &AStarGrid2D) set_default_compute_heuristic(heuristic AStarGrid2DHeuristic) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("set_default_compute_heuristic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1044375519)
	mut args := unsafe { [1]voidptr{} }
	i64_heuristic := i64(heuristic)
	args[0] = unsafe{voidptr(&i64_heuristic)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) get_default_compute_heuristic() AStarGrid2DHeuristic {
	mut result := i64(AStarGrid2DHeuristic.heuristic_euclidean)
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_default_compute_heuristic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074731422)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AStarGrid2DHeuristic(result)}
}

pub fn (s &AStarGrid2D) set_default_estimate_heuristic(heuristic AStarGrid2DHeuristic) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("set_default_estimate_heuristic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1044375519)
	mut args := unsafe { [1]voidptr{} }
	i64_heuristic := i64(heuristic)
	args[0] = unsafe{voidptr(&i64_heuristic)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) get_default_estimate_heuristic() AStarGrid2DHeuristic {
	mut result := i64(AStarGrid2DHeuristic.heuristic_euclidean)
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_default_estimate_heuristic")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074731422)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AStarGrid2DHeuristic(result)}
}

@[params]
pub struct AStarGrid2D_set_point_solid_Cfg {
pub:
	solid bool
}

pub fn (s &AStarGrid2D) set_point_solid(id Vector2i, cfg AStarGrid2D_set_point_solid_Cfg) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("set_point_solid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1765703753)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&cfg.solid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) is_point_solid(id Vector2i) bool {
	mut result := false
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("is_point_solid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStarGrid2D) set_point_weight_scale(id Vector2i, weight_scale f64) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("set_point_weight_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2262553149)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&weight_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) get_point_weight_scale(id Vector2i) f64 {
	mut result := f64(0)
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_point_weight_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 719993801)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AStarGrid2D_fill_solid_region_Cfg {
pub:
	solid bool
}

pub fn (s &AStarGrid2D) fill_solid_region(region Rect2i, cfg AStarGrid2D_fill_solid_region_Cfg) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("fill_solid_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2261970063)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&cfg.solid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) fill_weight_scale_region(region Rect2i, weight_scale f64) {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("fill_weight_scale_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2793244083)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	args[1] = unsafe{voidptr(&weight_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) clear() {
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AStarGrid2D) get_point_position(id Vector2i) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 108438297)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AStarGrid2D) get_point_data_in_region(region Rect2i) Array {
	mut result := Array{}
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_point_data_in_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3893818462)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&region)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AStarGrid2D_get_point_path_Cfg {
pub:
	allow_partial_path bool
}

pub fn (s &AStarGrid2D) get_point_path(from_id Vector2i, to_id Vector2i, cfg AStarGrid2D_get_point_path_Cfg) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_point_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1641925693)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&from_id)}
	args[1] = unsafe{voidptr(&to_id)}
	args[2] = unsafe{voidptr(&cfg.allow_partial_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AStarGrid2D_get_id_path_Cfg {
pub:
	allow_partial_path bool
}

pub fn (s &AStarGrid2D) get_id_path(from_id Vector2i, to_id Vector2i, cfg AStarGrid2D_get_id_path_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("AStarGrid2D")
	fnname := StringName.new("get_id_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1918132273)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&from_id)}
	args[1] = unsafe{voidptr(&to_id)}
	args[2] = unsafe{voidptr(&cfg.allow_partial_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
