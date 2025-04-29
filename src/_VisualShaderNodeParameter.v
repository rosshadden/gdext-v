module gd

pub enum VisualShaderNodeParameterQualifier as i64 {
	qual_none = 0
	qual_global = 1
	qual_instance = 2
	qual_max = 3
}

pub struct VisualShaderNodeParameter {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeParameter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeParameter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeParameter) set_parameter_name(name string) {
	classname := StringName.new("VisualShaderNodeParameter")
	fnname := StringName.new("set_parameter_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeParameter) get_parameter_name() string {
	mut result := String{}
	classname := StringName.new("VisualShaderNodeParameter")
	fnname := StringName.new("get_parameter_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &VisualShaderNodeParameter) set_qualifier(qualifier VisualShaderNodeParameterQualifier) {
	classname := StringName.new("VisualShaderNodeParameter")
	fnname := StringName.new("set_qualifier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1276489447)
	mut args := unsafe { [1]voidptr{} }
	i64_qualifier := i64(qualifier)
	args[0] = unsafe{voidptr(&i64_qualifier)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeParameter) get_qualifier() VisualShaderNodeParameterQualifier {
	mut result := i64(VisualShaderNodeParameterQualifier.qual_none)
	classname := StringName.new("VisualShaderNodeParameter")
	fnname := StringName.new("get_qualifier")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3558406205)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeParameterQualifier(result)}
}
