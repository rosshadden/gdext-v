module gd

pub struct GLTFSpecGloss {
	Resource
}

pub fn (s &GLTFSpecGloss) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFSpecGloss) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GLTFSpecGloss) get_diffuse_img() Image {
	mut result := Image{}
	classname := StringName.new("GLTFSpecGloss")
	fnname := StringName.new("get_diffuse_img")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 564927088)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFSpecGloss) set_diffuse_img(diffuse_img Image) {
	classname := StringName.new("GLTFSpecGloss")
	fnname := StringName.new("set_diffuse_img")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&diffuse_img.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFSpecGloss) get_diffuse_factor() Color {
	mut result := Color{}
	classname := StringName.new("GLTFSpecGloss")
	fnname := StringName.new("get_diffuse_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200896285)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFSpecGloss) set_diffuse_factor(diffuse_factor Color) {
	classname := StringName.new("GLTFSpecGloss")
	fnname := StringName.new("set_diffuse_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&diffuse_factor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFSpecGloss) get_gloss_factor() f64 {
	mut result := f64(0)
	classname := StringName.new("GLTFSpecGloss")
	fnname := StringName.new("get_gloss_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFSpecGloss) set_gloss_factor(gloss_factor f64) {
	classname := StringName.new("GLTFSpecGloss")
	fnname := StringName.new("set_gloss_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gloss_factor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFSpecGloss) get_specular_factor() Color {
	mut result := Color{}
	classname := StringName.new("GLTFSpecGloss")
	fnname := StringName.new("get_specular_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200896285)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFSpecGloss) set_specular_factor(specular_factor Color) {
	classname := StringName.new("GLTFSpecGloss")
	fnname := StringName.new("set_specular_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&specular_factor)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFSpecGloss) get_spec_gloss_img() Image {
	mut result := Image{}
	classname := StringName.new("GLTFSpecGloss")
	fnname := StringName.new("get_spec_gloss_img")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 564927088)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFSpecGloss) set_spec_gloss_img(spec_gloss_img Image) {
	classname := StringName.new("GLTFSpecGloss")
	fnname := StringName.new("set_spec_gloss_img")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&spec_gloss_img.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
