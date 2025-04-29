module gd

pub struct RDShaderSource {
	RefCounted
}

pub fn (s &RDShaderSource) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RDShaderSource) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RDShaderSource) set_stage_source(stage RenderingDeviceShaderStage, source string) {
	classname := StringName.new("RDShaderSource")
	fnname := StringName.new("set_stage_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 620821314)
	mut args := unsafe { [2]voidptr{} }
	i64_stage := i64(stage)
	args[0] = unsafe{voidptr(&i64_stage)}
	arg_sn1 := String.new(source)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDShaderSource) get_stage_source(stage RenderingDeviceShaderStage) string {
	mut result := String{}
	classname := StringName.new("RDShaderSource")
	fnname := StringName.new("get_stage_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3354920045)
	mut args := unsafe { [1]voidptr{} }
	i64_stage := i64(stage)
	args[0] = unsafe{voidptr(&i64_stage)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &RDShaderSource) set_language(language RenderingDeviceShaderLanguage) {
	classname := StringName.new("RDShaderSource")
	fnname := StringName.new("set_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3422186742)
	mut args := unsafe { [1]voidptr{} }
	i64_language := i64(language)
	args[0] = unsafe{voidptr(&i64_language)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDShaderSource) get_language() RenderingDeviceShaderLanguage {
	mut result := i64(RenderingDeviceShaderLanguage.shader_language_glsl)
	classname := StringName.new("RDShaderSource")
	fnname := StringName.new("get_language")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1063538261)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceShaderLanguage(result)}
}
