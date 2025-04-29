module gd

pub enum FastNoiseLiteNoiseType as i64 {
	type_value = 5
	type_value_cubic = 4
	type_perlin = 3
	type_cellular = 2
	type_simplex = 0
	type_simplex_smooth = 1
}

pub enum FastNoiseLiteFractalType as i64 {
	fractal_none = 0
	fractal_fbm = 1
	fractal_ridged = 2
	fractal_ping_pong = 3
}

pub enum FastNoiseLiteCellularDistanceFunction as i64 {
	distance_euclidean = 0
	distance_euclidean_squared = 1
	distance_manhattan = 2
	distance_hybrid = 3
}

pub enum FastNoiseLiteCellularReturnType as i64 {
	return_cell_value = 0
	return_distance = 1
	return_distance2 = 2
	return_distance2_add = 3
	return_distance2_sub = 4
	return_distance2_mul = 5
	return_distance2_div = 6
}

pub enum FastNoiseLiteDomainWarpType as i64 {
	domain_warp_simplex = 0
	domain_warp_simplex_reduced = 1
	domain_warp_basic_grid = 2
}

pub enum FastNoiseLiteDomainWarpFractalType as i64 {
	domain_warp_fractal_none = 0
	domain_warp_fractal_progressive = 1
	domain_warp_fractal_independent = 2
}

pub struct FastNoiseLite {
	Noise
}

pub fn (s &FastNoiseLite) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s FastNoiseLite) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &FastNoiseLite) set_noise_type(gd_type FastNoiseLiteNoiseType) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_noise_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2624461392)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_noise_type() FastNoiseLiteNoiseType {
	mut result := i64(FastNoiseLiteNoiseType.type_value)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_noise_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1458108610)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{FastNoiseLiteNoiseType(result)}
}

pub fn (s &FastNoiseLite) set_seed(seed i64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_seed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&seed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_seed() i64 {
	mut result := i64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_seed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_frequency(freq f64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_frequency")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&freq)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_frequency() f64 {
	mut result := f64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_frequency")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_offset(offset Vector3) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_offset() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_fractal_type(gd_type FastNoiseLiteFractalType) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_fractal_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4132731174)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_fractal_type() FastNoiseLiteFractalType {
	mut result := i64(FastNoiseLiteFractalType.fractal_none)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_fractal_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1036889279)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{FastNoiseLiteFractalType(result)}
}

pub fn (s &FastNoiseLite) set_fractal_octaves(octave_count i64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_fractal_octaves")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&octave_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_fractal_octaves() i64 {
	mut result := i64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_fractal_octaves")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_fractal_lacunarity(lacunarity f64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_fractal_lacunarity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&lacunarity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_fractal_lacunarity() f64 {
	mut result := f64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_fractal_lacunarity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_fractal_gain(gain f64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_fractal_gain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gain)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_fractal_gain() f64 {
	mut result := f64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_fractal_gain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_fractal_weighted_strength(weighted_strength f64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_fractal_weighted_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&weighted_strength)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_fractal_weighted_strength() f64 {
	mut result := f64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_fractal_weighted_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_fractal_ping_pong_strength(ping_pong_strength f64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_fractal_ping_pong_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ping_pong_strength)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_fractal_ping_pong_strength() f64 {
	mut result := f64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_fractal_ping_pong_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_cellular_distance_function(func FastNoiseLiteCellularDistanceFunction) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_cellular_distance_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1006013267)
	mut args := unsafe { [1]voidptr{} }
	i64_func := i64(func)
	args[0] = unsafe{voidptr(&i64_func)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_cellular_distance_function() FastNoiseLiteCellularDistanceFunction {
	mut result := i64(FastNoiseLiteCellularDistanceFunction.distance_euclidean)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_cellular_distance_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2021274088)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{FastNoiseLiteCellularDistanceFunction(result)}
}

pub fn (s &FastNoiseLite) set_cellular_jitter(jitter f64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_cellular_jitter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&jitter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_cellular_jitter() f64 {
	mut result := f64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_cellular_jitter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_cellular_return_type(ret FastNoiseLiteCellularReturnType) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_cellular_return_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2654169698)
	mut args := unsafe { [1]voidptr{} }
	i64_ret := i64(ret)
	args[0] = unsafe{voidptr(&i64_ret)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_cellular_return_type() FastNoiseLiteCellularReturnType {
	mut result := i64(FastNoiseLiteCellularReturnType.return_cell_value)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_cellular_return_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3699796343)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{FastNoiseLiteCellularReturnType(result)}
}

pub fn (s &FastNoiseLite) set_domain_warp_enabled(domain_warp_enabled bool) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_domain_warp_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&domain_warp_enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) is_domain_warp_enabled() bool {
	mut result := false
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("is_domain_warp_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_domain_warp_type(domain_warp_type FastNoiseLiteDomainWarpType) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_domain_warp_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3629692980)
	mut args := unsafe { [1]voidptr{} }
	i64_domain_warp_type := i64(domain_warp_type)
	args[0] = unsafe{voidptr(&i64_domain_warp_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_domain_warp_type() FastNoiseLiteDomainWarpType {
	mut result := i64(FastNoiseLiteDomainWarpType.domain_warp_simplex)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_domain_warp_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2980162020)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{FastNoiseLiteDomainWarpType(result)}
}

pub fn (s &FastNoiseLite) set_domain_warp_amplitude(domain_warp_amplitude f64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_domain_warp_amplitude")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&domain_warp_amplitude)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_domain_warp_amplitude() f64 {
	mut result := f64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_domain_warp_amplitude")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_domain_warp_frequency(domain_warp_frequency f64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_domain_warp_frequency")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&domain_warp_frequency)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_domain_warp_frequency() f64 {
	mut result := f64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_domain_warp_frequency")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_domain_warp_fractal_type(domain_warp_fractal_type FastNoiseLiteDomainWarpFractalType) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_domain_warp_fractal_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3999408287)
	mut args := unsafe { [1]voidptr{} }
	i64_domain_warp_fractal_type := i64(domain_warp_fractal_type)
	args[0] = unsafe{voidptr(&i64_domain_warp_fractal_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_domain_warp_fractal_type() FastNoiseLiteDomainWarpFractalType {
	mut result := i64(FastNoiseLiteDomainWarpFractalType.domain_warp_fractal_none)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_domain_warp_fractal_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 407716934)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{FastNoiseLiteDomainWarpFractalType(result)}
}

pub fn (s &FastNoiseLite) set_domain_warp_fractal_octaves(domain_warp_octave_count i64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_domain_warp_fractal_octaves")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&domain_warp_octave_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_domain_warp_fractal_octaves() i64 {
	mut result := i64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_domain_warp_fractal_octaves")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_domain_warp_fractal_lacunarity(domain_warp_lacunarity f64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_domain_warp_fractal_lacunarity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&domain_warp_lacunarity)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_domain_warp_fractal_lacunarity() f64 {
	mut result := f64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_domain_warp_fractal_lacunarity")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FastNoiseLite) set_domain_warp_fractal_gain(domain_warp_gain f64) {
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("set_domain_warp_fractal_gain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&domain_warp_gain)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FastNoiseLite) get_domain_warp_fractal_gain() f64 {
	mut result := f64(0)
	classname := StringName.new("FastNoiseLite")
	fnname := StringName.new("get_domain_warp_fractal_gain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
