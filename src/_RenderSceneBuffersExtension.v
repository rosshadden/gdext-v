module gd

pub struct RenderSceneBuffersExtension {
	RenderSceneBuffers
}

pub fn (s &RenderSceneBuffersExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RenderSceneBuffersExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IRenderSceneBuffersExtensionConfigure {
mut:
	configure_(config RenderSceneBuffersConfiguration)
}

pub fn (s &RenderSceneBuffersExtension) gd_configure(config RenderSceneBuffersConfiguration) {
	classname := StringName.new("RenderSceneBuffersExtension")
	fnname := StringName.new("_configure")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3072623270)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&config.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IRenderSceneBuffersExtensionSetFsrSharpness {
mut:
	set_fsr_sharpness_(fsr_sharpness f64)
}

pub fn (s &RenderSceneBuffersExtension) gd_set_fsr_sharpness(fsr_sharpness f64) {
	classname := StringName.new("RenderSceneBuffersExtension")
	fnname := StringName.new("_set_fsr_sharpness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&fsr_sharpness)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IRenderSceneBuffersExtensionSetTextureMipmapBias {
mut:
	set_texture_mipmap_bias_(texture_mipmap_bias f64)
}

pub fn (s &RenderSceneBuffersExtension) gd_set_texture_mipmap_bias(texture_mipmap_bias f64) {
	classname := StringName.new("RenderSceneBuffersExtension")
	fnname := StringName.new("_set_texture_mipmap_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&texture_mipmap_bias)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IRenderSceneBuffersExtensionSetAnisotropicFilteringLevel {
mut:
	set_anisotropic_filtering_level_(anisotropic_filtering_level i64)
}

pub fn (s &RenderSceneBuffersExtension) gd_set_anisotropic_filtering_level(anisotropic_filtering_level i64) {
	classname := StringName.new("RenderSceneBuffersExtension")
	fnname := StringName.new("_set_anisotropic_filtering_level")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&anisotropic_filtering_level)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IRenderSceneBuffersExtensionSetUseDebanding {
mut:
	set_use_debanding_(use_debanding bool)
}

pub fn (s &RenderSceneBuffersExtension) gd_set_use_debanding(use_debanding bool) {
	classname := StringName.new("RenderSceneBuffersExtension")
	fnname := StringName.new("_set_use_debanding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_debanding)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
