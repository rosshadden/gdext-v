module gd

pub enum ViewportPositionalShadowAtlasQuadrantSubdiv as i64 {
	shadow_atlas_quadrant_subdiv_disabled = 0
	shadow_atlas_quadrant_subdiv_1 = 1
	shadow_atlas_quadrant_subdiv_4 = 2
	shadow_atlas_quadrant_subdiv_16 = 3
	shadow_atlas_quadrant_subdiv_64 = 4
	shadow_atlas_quadrant_subdiv_256 = 5
	shadow_atlas_quadrant_subdiv_1024 = 6
	shadow_atlas_quadrant_subdiv_max = 7
}

pub enum ViewportScaling3DMode as i64 {
	scaling_3d_mode_bilinear = 0
	scaling_3d_mode_fsr = 1
	scaling_3d_mode_fsr2 = 2
	scaling_3d_mode_metalfx_spatial = 3
	scaling_3d_mode_metalfx_temporal = 4
	scaling_3d_mode_max = 5
}

pub enum ViewportMSAA as i64 {
	msaa_disabled = 0
	msaa_2x = 1
	msaa_4x = 2
	msaa_8x = 3
	msaa_max = 4
}

pub enum ViewportAnisotropicFiltering as i64 {
	anisotropy_disabled = 0
	anisotropy_2x = 1
	anisotropy_4x = 2
	anisotropy_8x = 3
	anisotropy_16x = 4
	anisotropy_max = 5
}

pub enum ViewportScreenSpaceAA as i64 {
	screen_space_aa_disabled = 0
	screen_space_aa_fxaa = 1
	screen_space_aa_max = 2
}

pub enum ViewportRenderInfo as i64 {
	render_info_objects_in_frame = 0
	render_info_primitives_in_frame = 1
	render_info_draw_calls_in_frame = 2
	render_info_max = 3
}

pub enum ViewportRenderInfoType as i64 {
	render_info_type_visible = 0
	render_info_type_shadow = 1
	render_info_type_canvas = 2
	render_info_type_max = 3
}

pub enum ViewportDebugDraw as i64 {
	debug_draw_disabled = 0
	debug_draw_unshaded = 1
	debug_draw_lighting = 2
	debug_draw_overdraw = 3
	debug_draw_wireframe = 4
	debug_draw_normal_buffer = 5
	debug_draw_voxel_gi_albedo = 6
	debug_draw_voxel_gi_lighting = 7
	debug_draw_voxel_gi_emission = 8
	debug_draw_shadow_atlas = 9
	debug_draw_directional_shadow_atlas = 10
	debug_draw_scene_luminance = 11
	debug_draw_ssao = 12
	debug_draw_ssil = 13
	debug_draw_pssm_splits = 14
	debug_draw_decal_atlas = 15
	debug_draw_sdfgi = 16
	debug_draw_sdfgi_probes = 17
	debug_draw_gi_buffer = 18
	debug_draw_disable_lod = 19
	debug_draw_cluster_omni_lights = 20
	debug_draw_cluster_spot_lights = 21
	debug_draw_cluster_decals = 22
	debug_draw_cluster_reflection_probes = 23
	debug_draw_occluders = 24
	debug_draw_motion_vectors = 25
	debug_draw_internal_buffer = 26
}

pub enum ViewportDefaultCanvasItemTextureFilter as i64 {
	default_canvas_item_texture_filter_nearest = 0
	default_canvas_item_texture_filter_linear = 1
	default_canvas_item_texture_filter_linear_with_mipmaps = 2
	default_canvas_item_texture_filter_nearest_with_mipmaps = 3
	default_canvas_item_texture_filter_max = 4
}

pub enum ViewportDefaultCanvasItemTextureRepeat as i64 {
	default_canvas_item_texture_repeat_disabled = 0
	default_canvas_item_texture_repeat_enabled = 1
	default_canvas_item_texture_repeat_mirror = 2
	default_canvas_item_texture_repeat_max = 3
}

pub enum ViewportSDFOversize as i64 {
	sdf_oversize_100_percent = 0
	sdf_oversize_120_percent = 1
	sdf_oversize_150_percent = 2
	sdf_oversize_200_percent = 3
	sdf_oversize_max = 4
}

pub enum ViewportSDFScale as i64 {
	sdf_scale_100_percent = 0
	sdf_scale_50_percent = 1
	sdf_scale_25_percent = 2
	sdf_scale_max = 3
}

pub enum ViewportVRSMode as i64 {
	vrs_disabled = 0
	vrs_texture = 1
	vrs_xr = 2
	vrs_max = 3
}

pub enum ViewportVRSUpdateMode as i64 {
	vrs_update_disabled = 0
	vrs_update_once = 1
	vrs_update_always = 2
	vrs_update_max = 3
}

pub struct Viewport {
	Node
}

pub fn (s &Viewport) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Viewport) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Viewport) set_world_2d(world_2d World2D) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_world_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2736080068)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&world_2d.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_world_2d() World2D {
	mut result := World2D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_world_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339128592)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) find_world_2d() World2D {
	mut result := World2D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("find_world_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339128592)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_canvas_transform(xform Transform2D) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_canvas_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&xform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_canvas_transform() Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_canvas_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_global_canvas_transform(xform Transform2D) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_global_canvas_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&xform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_global_canvas_transform() Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_global_canvas_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) get_stretch_transform() Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_stretch_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) get_final_transform() Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_final_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) get_screen_transform() Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_screen_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) get_visible_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_visible_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_transparent_background(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_transparent_background")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) has_transparent_background() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("has_transparent_background")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_use_hdr_2d(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_use_hdr_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_using_hdr_2d() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_using_hdr_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_msaa_2d(msaa ViewportMSAA) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_msaa_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3330258708)
	mut args := unsafe { [1]voidptr{} }
	i64_msaa := i64(msaa)
	args[0] = unsafe{voidptr(&i64_msaa)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_msaa_2d() ViewportMSAA {
	mut result := i64(ViewportMSAA.msaa_disabled)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_msaa_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2542055527)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportMSAA(result)}
}

pub fn (s &Viewport) set_msaa_3d(msaa ViewportMSAA) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_msaa_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3330258708)
	mut args := unsafe { [1]voidptr{} }
	i64_msaa := i64(msaa)
	args[0] = unsafe{voidptr(&i64_msaa)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_msaa_3d() ViewportMSAA {
	mut result := i64(ViewportMSAA.msaa_disabled)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_msaa_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2542055527)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportMSAA(result)}
}

pub fn (s &Viewport) set_screen_space_aa(screen_space_aa ViewportScreenSpaceAA) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_screen_space_aa")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3544169389)
	mut args := unsafe { [1]voidptr{} }
	i64_screen_space_aa := i64(screen_space_aa)
	args[0] = unsafe{voidptr(&i64_screen_space_aa)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_screen_space_aa() ViewportScreenSpaceAA {
	mut result := i64(ViewportScreenSpaceAA.screen_space_aa_disabled)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_screen_space_aa")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1390814124)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportScreenSpaceAA(result)}
}

pub fn (s &Viewport) set_use_taa(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_use_taa")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_using_taa() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_using_taa")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_use_debanding(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_use_debanding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_using_debanding() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_using_debanding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_use_occlusion_culling(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_use_occlusion_culling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_using_occlusion_culling() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_using_occlusion_culling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_debug_draw(debug_draw ViewportDebugDraw) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_debug_draw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1970246205)
	mut args := unsafe { [1]voidptr{} }
	i64_debug_draw := i64(debug_draw)
	args[0] = unsafe{voidptr(&i64_debug_draw)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_debug_draw() ViewportDebugDraw {
	mut result := i64(ViewportDebugDraw.debug_draw_disabled)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_debug_draw")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 579191299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportDebugDraw(result)}
}

pub fn (s &Viewport) get_render_info(gd_type ViewportRenderInfoType, info ViewportRenderInfo) i64 {
	mut result := i64(0)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_render_info")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 481977019)
	mut args := unsafe { [2]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	i64_info := i64(info)
	args[1] = unsafe{voidptr(&i64_info)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) get_texture() ViewportTexture {
	mut result := ViewportTexture{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1746695840)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_physics_object_picking(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_physics_object_picking")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_physics_object_picking() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_physics_object_picking")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_physics_object_picking_sort(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_physics_object_picking_sort")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_physics_object_picking_sort() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_physics_object_picking_sort")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_physics_object_picking_first_only(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_physics_object_picking_first_only")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_physics_object_picking_first_only() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_physics_object_picking_first_only")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) get_viewport_rid() RID {
	mut result := RID{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_viewport_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) push_text_input(text string) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("push_text_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Viewport_push_input_Cfg {
pub:
	in_local_coords bool
}

pub fn (s &Viewport) push_input(event InputEvent, cfg Viewport_push_input_Cfg) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("push_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3644664830)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&event.ptr)
	args[1] = unsafe{voidptr(&cfg.in_local_coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Viewport_push_unhandled_input_Cfg {
pub:
	in_local_coords bool
}

pub fn (s &Viewport) push_unhandled_input(event InputEvent, cfg Viewport_push_unhandled_input_Cfg) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("push_unhandled_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3644664830)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&event.ptr)
	args[1] = unsafe{voidptr(&cfg.in_local_coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) notify_mouse_entered() {
	classname := StringName.new("Viewport")
	fnname := StringName.new("notify_mouse_entered")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) notify_mouse_exited() {
	classname := StringName.new("Viewport")
	fnname := StringName.new("notify_mouse_exited")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_mouse_position() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_mouse_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) warp_mouse(position Vector2) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("warp_mouse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) update_mouse_cursor_state() {
	classname := StringName.new("Viewport")
	fnname := StringName.new("update_mouse_cursor_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) gui_cancel_drag() {
	classname := StringName.new("Viewport")
	fnname := StringName.new("gui_cancel_drag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) gui_get_drag_data() Variant {
	mut result := Variant{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("gui_get_drag_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) gui_get_drag_description() string {
	mut result := String{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("gui_get_drag_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Viewport) gui_set_drag_description(description string) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("gui_set_drag_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(description)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) gui_is_dragging() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("gui_is_dragging")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) gui_is_drag_successful() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("gui_is_drag_successful")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) gui_release_focus() {
	classname := StringName.new("Viewport")
	fnname := StringName.new("gui_release_focus")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) gui_get_focus_owner() Control {
	mut result := Control{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("gui_get_focus_owner")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) gui_get_hovered_control() Control {
	mut result := Control{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("gui_get_hovered_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_disable_input(disable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_disable_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&disable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_input_disabled() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_input_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_positional_shadow_atlas_size(size i64) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_positional_shadow_atlas_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_positional_shadow_atlas_size() i64 {
	mut result := i64(0)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_positional_shadow_atlas_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_positional_shadow_atlas_16_bits(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_positional_shadow_atlas_16_bits")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_positional_shadow_atlas_16_bits() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_positional_shadow_atlas_16_bits")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_snap_controls_to_pixels(enabled bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_snap_controls_to_pixels")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_snap_controls_to_pixels_enabled() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_snap_controls_to_pixels_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_snap_2d_transforms_to_pixel(enabled bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_snap_2d_transforms_to_pixel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_snap_2d_transforms_to_pixel_enabled() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_snap_2d_transforms_to_pixel_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_snap_2d_vertices_to_pixel(enabled bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_snap_2d_vertices_to_pixel")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_snap_2d_vertices_to_pixel_enabled() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_snap_2d_vertices_to_pixel_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_positional_shadow_atlas_quadrant_subdiv(quadrant i64, subdiv ViewportPositionalShadowAtlasQuadrantSubdiv) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_positional_shadow_atlas_quadrant_subdiv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2596956071)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&quadrant)}
	i64_subdiv := i64(subdiv)
	args[1] = unsafe{voidptr(&i64_subdiv)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_positional_shadow_atlas_quadrant_subdiv(quadrant i64) ViewportPositionalShadowAtlasQuadrantSubdiv {
	mut result := i64(ViewportPositionalShadowAtlasQuadrantSubdiv.shadow_atlas_quadrant_subdiv_disabled)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_positional_shadow_atlas_quadrant_subdiv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2676778355)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&quadrant)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportPositionalShadowAtlasQuadrantSubdiv(result)}
}

pub fn (s &Viewport) set_input_as_handled() {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_input_as_handled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_input_handled() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_input_handled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_handle_input_locally(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_handle_input_locally")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_handling_input_locally() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_handling_input_locally")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_default_canvas_item_texture_filter(mode ViewportDefaultCanvasItemTextureFilter) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_default_canvas_item_texture_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2815160100)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_default_canvas_item_texture_filter() ViewportDefaultCanvasItemTextureFilter {
	mut result := i64(ViewportDefaultCanvasItemTextureFilter.default_canvas_item_texture_filter_nearest)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_default_canvas_item_texture_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 896601198)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportDefaultCanvasItemTextureFilter(result)}
}

pub fn (s &Viewport) set_embedding_subwindows(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_embedding_subwindows")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_embedding_subwindows() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_embedding_subwindows")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) get_embedded_subwindows() Array {
	mut result := Array{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_embedded_subwindows")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_canvas_cull_mask(mask i64) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_canvas_cull_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_canvas_cull_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_canvas_cull_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_canvas_cull_mask_bit(layer i64, enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_canvas_cull_mask_bit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_canvas_cull_mask_bit(layer i64) bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_canvas_cull_mask_bit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_default_canvas_item_texture_repeat(mode ViewportDefaultCanvasItemTextureRepeat) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_default_canvas_item_texture_repeat")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1658513413)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_default_canvas_item_texture_repeat() ViewportDefaultCanvasItemTextureRepeat {
	mut result := i64(ViewportDefaultCanvasItemTextureRepeat.default_canvas_item_texture_repeat_disabled)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_default_canvas_item_texture_repeat")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4049774160)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportDefaultCanvasItemTextureRepeat(result)}
}

pub fn (s &Viewport) set_sdf_oversize(oversize ViewportSDFOversize) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_sdf_oversize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2574159017)
	mut args := unsafe { [1]voidptr{} }
	i64_oversize := i64(oversize)
	args[0] = unsafe{voidptr(&i64_oversize)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_sdf_oversize() ViewportSDFOversize {
	mut result := i64(ViewportSDFOversize.sdf_oversize_100_percent)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_sdf_oversize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2631427510)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportSDFOversize(result)}
}

pub fn (s &Viewport) set_sdf_scale(scale ViewportSDFScale) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_sdf_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1402773951)
	mut args := unsafe { [1]voidptr{} }
	i64_scale := i64(scale)
	args[0] = unsafe{voidptr(&i64_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_sdf_scale() ViewportSDFScale {
	mut result := i64(ViewportSDFScale.sdf_scale_100_percent)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_sdf_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3162688184)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportSDFScale(result)}
}

pub fn (s &Viewport) set_mesh_lod_threshold(pixels f64) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_mesh_lod_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pixels)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_mesh_lod_threshold() f64 {
	mut result := f64(0)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_mesh_lod_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_as_audio_listener_2d(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_as_audio_listener_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_audio_listener_2d() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_audio_listener_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) get_audio_listener_2d() AudioListener2D {
	mut result := AudioListener2D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_audio_listener_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1840977180)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) get_camera_2d() Camera2D {
	mut result := Camera2D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_camera_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3551466917)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_world_3d(world_3d World3D) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_world_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1400875337)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&world_3d.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_world_3d() World3D {
	mut result := World3D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_world_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 317588385)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) find_world_3d() World3D {
	mut result := World3D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("find_world_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 317588385)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_use_own_world_3d(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_use_own_world_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_using_own_world_3d() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_using_own_world_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) get_audio_listener_3d() AudioListener3D {
	mut result := AudioListener3D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_audio_listener_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3472246991)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) get_camera_3d() Camera3D {
	mut result := Camera3D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_camera_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285090890)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_as_audio_listener_3d(enable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_as_audio_listener_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_audio_listener_3d() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_audio_listener_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_disable_3d(disable bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_disable_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&disable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_3d_disabled() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_3d_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_use_xr(use bool) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_use_xr")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) is_using_xr() bool {
	mut result := false
	classname := StringName.new("Viewport")
	fnname := StringName.new("is_using_xr")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_scaling_3d_mode(scaling_3d_mode ViewportScaling3DMode) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_scaling_3d_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1531597597)
	mut args := unsafe { [1]voidptr{} }
	i64_scaling_3d_mode := i64(scaling_3d_mode)
	args[0] = unsafe{voidptr(&i64_scaling_3d_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_scaling_3d_mode() ViewportScaling3DMode {
	mut result := i64(ViewportScaling3DMode.scaling_3d_mode_bilinear)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_scaling_3d_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2597660574)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportScaling3DMode(result)}
}

pub fn (s &Viewport) set_scaling_3d_scale(scale f64) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_scaling_3d_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_scaling_3d_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_scaling_3d_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_fsr_sharpness(fsr_sharpness f64) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_fsr_sharpness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&fsr_sharpness)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_fsr_sharpness() f64 {
	mut result := f64(0)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_fsr_sharpness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_texture_mipmap_bias(texture_mipmap_bias f64) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_texture_mipmap_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&texture_mipmap_bias)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_texture_mipmap_bias() f64 {
	mut result := f64(0)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_texture_mipmap_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Viewport) set_anisotropic_filtering_level(anisotropic_filtering_level ViewportAnisotropicFiltering) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_anisotropic_filtering_level")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3445583046)
	mut args := unsafe { [1]voidptr{} }
	i64_anisotropic_filtering_level := i64(anisotropic_filtering_level)
	args[0] = unsafe{voidptr(&i64_anisotropic_filtering_level)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_anisotropic_filtering_level() ViewportAnisotropicFiltering {
	mut result := i64(ViewportAnisotropicFiltering.anisotropy_disabled)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_anisotropic_filtering_level")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3991528932)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportAnisotropicFiltering(result)}
}

pub fn (s &Viewport) set_vrs_mode(mode ViewportVRSMode) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_vrs_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2749867817)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_vrs_mode() ViewportVRSMode {
	mut result := i64(ViewportVRSMode.vrs_disabled)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_vrs_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 349660525)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportVRSMode(result)}
}

pub fn (s &Viewport) set_vrs_update_mode(mode ViewportVRSUpdateMode) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_vrs_update_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3182412319)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_vrs_update_mode() ViewportVRSUpdateMode {
	mut result := i64(ViewportVRSUpdateMode.vrs_update_disabled)
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_vrs_update_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2255951583)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ViewportVRSUpdateMode(result)}
}

pub fn (s &Viewport) set_vrs_texture(texture Texture2D) {
	classname := StringName.new("Viewport")
	fnname := StringName.new("set_vrs_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Viewport) get_vrs_texture() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("Viewport")
	fnname := StringName.new("get_vrs_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
