module gd

pub struct RenderSceneBuffersRD {
	RenderSceneBuffers
}

pub fn (s &RenderSceneBuffersRD) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RenderSceneBuffersRD) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RenderSceneBuffersRD) has_texture(context string, name string) bool {
	mut result := false
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("has_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(context)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) create_texture(context string, name string, data_format RenderingDeviceDataFormat, usage_bits i64, texture_samples RenderingDeviceTextureSamples, size Vector2i, layers i64, mipmaps i64, unique bool, discardable bool) RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("create_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2950875024)
	mut args := unsafe { [10]voidptr{} }
	arg_sn0 := StringName.new(context)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	i64_data_format := i64(data_format)
	args[2] = unsafe{voidptr(&i64_data_format)}
	args[3] = unsafe{voidptr(&usage_bits)}
	i64_texture_samples := i64(texture_samples)
	args[4] = unsafe{voidptr(&i64_texture_samples)}
	args[5] = unsafe{voidptr(&size)}
	args[6] = unsafe{voidptr(&layers)}
	args[7] = unsafe{voidptr(&mipmaps)}
	args[8] = unsafe{voidptr(&unique)}
	args[9] = unsafe{voidptr(&discardable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) create_texture_from_format(context string, name string, format RDTextureFormat, view RDTextureView, unique bool) RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("create_texture_from_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3344669382)
	mut args := unsafe { [5]voidptr{} }
	arg_sn0 := StringName.new(context)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = voidptr(&format.ptr)
	args[3] = voidptr(&view.ptr)
	args[4] = unsafe{voidptr(&unique)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) create_texture_view(context string, name string, view_name string, view RDTextureView) RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("create_texture_view")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 283055834)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(context)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	arg_sn2 := StringName.new(view_name)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = voidptr(&view.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) get_texture(context string, name string) RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 750006389)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(context)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) get_texture_format(context string, name string) RDTextureFormat {
	mut result := RDTextureFormat{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_texture_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 371461758)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(context)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) get_texture_slice(context string, name string, layer i64, mipmap i64, layers i64, mipmaps i64) RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_texture_slice")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 588440706)
	mut args := unsafe { [6]voidptr{} }
	arg_sn0 := StringName.new(context)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&layer)}
	args[3] = unsafe{voidptr(&mipmap)}
	args[4] = unsafe{voidptr(&layers)}
	args[5] = unsafe{voidptr(&mipmaps)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) get_texture_slice_view(context string, name string, layer i64, mipmap i64, layers i64, mipmaps i64, view RDTextureView) RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_texture_slice_view")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 682451778)
	mut args := unsafe { [7]voidptr{} }
	arg_sn0 := StringName.new(context)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&layer)}
	args[3] = unsafe{voidptr(&mipmap)}
	args[4] = unsafe{voidptr(&layers)}
	args[5] = unsafe{voidptr(&mipmaps)}
	args[6] = voidptr(&view.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) get_texture_slice_size(context string, name string, mipmap i64) Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_texture_slice_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2617625368)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(context)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&mipmap)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) clear_context(context string) {
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("clear_context")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(context)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct RenderSceneBuffersRD_get_color_texture_Cfg {
pub:
	msaa bool
}

pub fn (s &RenderSceneBuffersRD) get_color_texture(cfg RenderSceneBuffersRD_get_color_texture_Cfg) RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_color_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3050822880)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.msaa)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct RenderSceneBuffersRD_get_color_layer_Cfg {
pub:
	msaa bool
}

pub fn (s &RenderSceneBuffersRD) get_color_layer(layer i64, cfg RenderSceneBuffersRD_get_color_layer_Cfg) RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_color_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3087988589)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&cfg.msaa)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct RenderSceneBuffersRD_get_depth_texture_Cfg {
pub:
	msaa bool
}

pub fn (s &RenderSceneBuffersRD) get_depth_texture(cfg RenderSceneBuffersRD_get_depth_texture_Cfg) RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_depth_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3050822880)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.msaa)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct RenderSceneBuffersRD_get_depth_layer_Cfg {
pub:
	msaa bool
}

pub fn (s &RenderSceneBuffersRD) get_depth_layer(layer i64, cfg RenderSceneBuffersRD_get_depth_layer_Cfg) RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_depth_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3087988589)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&cfg.msaa)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct RenderSceneBuffersRD_get_velocity_texture_Cfg {
pub:
	msaa bool
}

pub fn (s &RenderSceneBuffersRD) get_velocity_texture(cfg RenderSceneBuffersRD_get_velocity_texture_Cfg) RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_velocity_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3050822880)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.msaa)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct RenderSceneBuffersRD_get_velocity_layer_Cfg {
pub:
	msaa bool
}

pub fn (s &RenderSceneBuffersRD) get_velocity_layer(layer i64, cfg RenderSceneBuffersRD_get_velocity_layer_Cfg) RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_velocity_layer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3087988589)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer)}
	args[1] = unsafe{voidptr(&cfg.msaa)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) get_render_target() RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_render_target")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) get_view_count() i64 {
	mut result := i64(0)
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_view_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) get_internal_size() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_internal_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) get_target_size() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_target_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) get_scaling_3d_mode() RenderingServerViewportScaling3DMode {
	mut result := i64(RenderingServerViewportScaling3DMode.viewport_scaling_3d_mode_bilinear)
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_scaling_3d_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 976778074)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingServerViewportScaling3DMode(result)}
}

pub fn (s &RenderSceneBuffersRD) get_fsr_sharpness() f64 {
	mut result := f64(0)
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_fsr_sharpness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) get_msaa_3d() RenderingServerViewportMSAA {
	mut result := i64(RenderingServerViewportMSAA.viewport_msaa_disabled)
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_msaa_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3109158617)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingServerViewportMSAA(result)}
}

pub fn (s &RenderSceneBuffersRD) get_texture_samples() RenderingDeviceTextureSamples {
	mut result := i64(RenderingDeviceTextureSamples.texture_samples_1)
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_texture_samples")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 407791724)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceTextureSamples(result)}
}

pub fn (s &RenderSceneBuffersRD) get_screen_space_aa() RenderingServerViewportScreenSpaceAA {
	mut result := i64(RenderingServerViewportScreenSpaceAA.viewport_screen_space_aa_disabled)
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_screen_space_aa")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 641513172)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingServerViewportScreenSpaceAA(result)}
}

pub fn (s &RenderSceneBuffersRD) get_use_taa() bool {
	mut result := false
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_use_taa")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneBuffersRD) get_use_debanding() bool {
	mut result := false
	classname := StringName.new("RenderSceneBuffersRD")
	fnname := StringName.new("get_use_debanding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
