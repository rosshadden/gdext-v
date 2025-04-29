module gd

pub enum LightmapGIBakeQuality as i64 {
	bake_quality_low = 0
	bake_quality_medium = 1
	bake_quality_high = 2
	bake_quality_ultra = 3
}

pub enum LightmapGIGenerateProbes as i64 {
	generate_probes_disabled = 0
	generate_probes_subdiv_4 = 1
	generate_probes_subdiv_8 = 2
	generate_probes_subdiv_16 = 3
	generate_probes_subdiv_32 = 4
}

pub enum LightmapGIBakeError as i64 {
	bake_error_ok = 0
	bake_error_no_scene_root = 1
	bake_error_foreign_data = 2
	bake_error_no_lightmapper = 3
	bake_error_no_save_path = 4
	bake_error_no_meshes = 5
	bake_error_meshes_invalid = 6
	bake_error_cant_create_image = 7
	bake_error_user_aborted = 8
	bake_error_texture_size_too_small = 9
	bake_error_lightmap_too_small = 10
	bake_error_atlas_too_small = 11
}

pub enum LightmapGIEnvironmentMode as i64 {
	environment_mode_disabled = 0
	environment_mode_scene = 1
	environment_mode_custom_sky = 2
	environment_mode_custom_color = 3
}

pub struct LightmapGI {
	VisualInstance3D
}

pub fn (s &LightmapGI) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s LightmapGI) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &LightmapGI) set_light_data(data LightmapGIData) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_light_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1790597277)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&data.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_light_data() LightmapGIData {
	mut result := LightmapGIData{}
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_light_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 290354153)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_bake_quality(bake_quality LightmapGIBakeQuality) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_bake_quality")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1192215803)
	mut args := unsafe { [1]voidptr{} }
	i64_bake_quality := i64(bake_quality)
	args[0] = unsafe{voidptr(&i64_bake_quality)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_bake_quality() LightmapGIBakeQuality {
	mut result := i64(LightmapGIBakeQuality.bake_quality_low)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_bake_quality")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 688832735)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{LightmapGIBakeQuality(result)}
}

pub fn (s &LightmapGI) set_bounces(bounces i64) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_bounces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bounces)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_bounces() i64 {
	mut result := i64(0)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_bounces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_bounce_indirect_energy(bounce_indirect_energy f64) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_bounce_indirect_energy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bounce_indirect_energy)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_bounce_indirect_energy() f64 {
	mut result := f64(0)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_bounce_indirect_energy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_generate_probes(subdivision LightmapGIGenerateProbes) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_generate_probes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 549981046)
	mut args := unsafe { [1]voidptr{} }
	i64_subdivision := i64(subdivision)
	args[0] = unsafe{voidptr(&i64_subdivision)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_generate_probes() LightmapGIGenerateProbes {
	mut result := i64(LightmapGIGenerateProbes.generate_probes_disabled)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_generate_probes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3930596226)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{LightmapGIGenerateProbes(result)}
}

pub fn (s &LightmapGI) set_bias(bias f64) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bias)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_bias() f64 {
	mut result := f64(0)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_environment_mode(mode LightmapGIEnvironmentMode) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_environment_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2282650285)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_environment_mode() LightmapGIEnvironmentMode {
	mut result := i64(LightmapGIEnvironmentMode.environment_mode_disabled)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_environment_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4128646479)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{LightmapGIEnvironmentMode(result)}
}

pub fn (s &LightmapGI) set_environment_custom_sky(sky Sky) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_environment_custom_sky")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3336722921)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&sky.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_environment_custom_sky() Sky {
	mut result := Sky{}
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_environment_custom_sky")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1177136966)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_environment_custom_color(color Color) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_environment_custom_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_environment_custom_color() Color {
	mut result := Color{}
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_environment_custom_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_environment_custom_energy(energy f64) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_environment_custom_energy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&energy)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_environment_custom_energy() f64 {
	mut result := f64(0)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_environment_custom_energy")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_texel_scale(texel_scale f64) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_texel_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&texel_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_texel_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_texel_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_max_texture_size(max_texture_size i64) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_max_texture_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_texture_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_max_texture_size() i64 {
	mut result := i64(0)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_max_texture_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_supersampling_enabled(enable bool) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_supersampling_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) is_supersampling_enabled() bool {
	mut result := false
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("is_supersampling_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_supersampling_factor(factor f64) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_supersampling_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&factor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_supersampling_factor() f64 {
	mut result := f64(0)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_supersampling_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_use_denoiser(use_denoiser bool) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_use_denoiser")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_denoiser)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) is_using_denoiser() bool {
	mut result := false
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("is_using_denoiser")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_denoiser_strength(denoiser_strength f64) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_denoiser_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&denoiser_strength)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_denoiser_strength() f64 {
	mut result := f64(0)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_denoiser_strength")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_denoiser_range(denoiser_range i64) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_denoiser_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&denoiser_range)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_denoiser_range() i64 {
	mut result := i64(0)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_denoiser_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_interior(enable bool) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_interior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) is_interior() bool {
	mut result := false
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("is_interior")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_directional(directional bool) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_directional")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&directional)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) is_directional() bool {
	mut result := false
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("is_directional")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_shadowmask_mode(mode LightmapGIDataShadowmaskMode) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_shadowmask_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3451066572)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_shadowmask_mode() LightmapGIDataShadowmaskMode {
	mut result := i64(LightmapGIDataShadowmaskMode.shadowmask_mode_none)
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_shadowmask_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 785478560)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{LightmapGIDataShadowmaskMode(result)}
}

pub fn (s &LightmapGI) set_use_texture_for_bounces(use_texture_for_bounces bool) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_use_texture_for_bounces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_texture_for_bounces)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) is_using_texture_for_bounces() bool {
	mut result := false
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("is_using_texture_for_bounces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGI) set_camera_attributes(camera_attributes CameraAttributes) {
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("set_camera_attributes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817810567)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&camera_attributes.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGI) get_camera_attributes() CameraAttributes {
	mut result := CameraAttributes{}
	classname := StringName.new("LightmapGI")
	fnname := StringName.new("get_camera_attributes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3921283215)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
