module gd

pub enum VisualShaderNodeFloatParameterHint as i64 {
	hint_none = 0
	hint_range = 1
	hint_range_step = 2
	hint_max = 3
}

pub struct VisualShaderNodeFloatParameter {
	VisualShaderNodeParameter
}

pub fn (s &VisualShaderNodeFloatParameter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeFloatParameter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeFloatParameter) set_hint(hint VisualShaderNodeFloatParameterHint) {
	classname := StringName.new("VisualShaderNodeFloatParameter")
	fnname := StringName.new("set_hint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3712586466)
	mut args := unsafe { [1]voidptr{} }
	i64_hint := i64(hint)
	args[0] = unsafe{voidptr(&i64_hint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFloatParameter) get_hint() VisualShaderNodeFloatParameterHint {
	mut result := i64(VisualShaderNodeFloatParameterHint.hint_none)
	classname := StringName.new("VisualShaderNodeFloatParameter")
	fnname := StringName.new("get_hint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3042240429)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeFloatParameterHint(result)}
}

pub fn (s &VisualShaderNodeFloatParameter) set_min(value f64) {
	classname := StringName.new("VisualShaderNodeFloatParameter")
	fnname := StringName.new("set_min")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFloatParameter) get_min() f64 {
	mut result := f64(0)
	classname := StringName.new("VisualShaderNodeFloatParameter")
	fnname := StringName.new("get_min")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeFloatParameter) set_max(value f64) {
	classname := StringName.new("VisualShaderNodeFloatParameter")
	fnname := StringName.new("set_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFloatParameter) get_max() f64 {
	mut result := f64(0)
	classname := StringName.new("VisualShaderNodeFloatParameter")
	fnname := StringName.new("get_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeFloatParameter) set_step(value f64) {
	classname := StringName.new("VisualShaderNodeFloatParameter")
	fnname := StringName.new("set_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFloatParameter) get_step() f64 {
	mut result := f64(0)
	classname := StringName.new("VisualShaderNodeFloatParameter")
	fnname := StringName.new("get_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeFloatParameter) set_default_value_enabled(enabled bool) {
	classname := StringName.new("VisualShaderNodeFloatParameter")
	fnname := StringName.new("set_default_value_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFloatParameter) is_default_value_enabled() bool {
	mut result := false
	classname := StringName.new("VisualShaderNodeFloatParameter")
	fnname := StringName.new("is_default_value_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeFloatParameter) set_default_value(value f64) {
	classname := StringName.new("VisualShaderNodeFloatParameter")
	fnname := StringName.new("set_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFloatParameter) get_default_value() f64 {
	mut result := f64(0)
	classname := StringName.new("VisualShaderNodeFloatParameter")
	fnname := StringName.new("get_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
