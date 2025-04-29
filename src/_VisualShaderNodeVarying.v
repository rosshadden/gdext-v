module gd

pub struct VisualShaderNodeVarying {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeVarying) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeVarying) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeVarying) set_varying_name(name string) {
	classname := StringName.new("VisualShaderNodeVarying")
	fnname := StringName.new("set_varying_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeVarying) get_varying_name() string {
	mut result := String{}
	classname := StringName.new("VisualShaderNodeVarying")
	fnname := StringName.new("get_varying_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &VisualShaderNodeVarying) set_varying_type(gd_type VisualShaderVaryingType) {
	classname := StringName.new("VisualShaderNodeVarying")
	fnname := StringName.new("set_varying_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3565867981)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeVarying) get_varying_type() VisualShaderVaryingType {
	mut result := i64(VisualShaderVaryingType.varying_type_float)
	classname := StringName.new("VisualShaderNodeVarying")
	fnname := StringName.new("get_varying_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 523183580)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderVaryingType(result)}
}
