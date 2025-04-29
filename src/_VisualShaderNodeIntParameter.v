module gd

pub enum VisualShaderNodeIntParameterHint as i64 {
	hint_none = 0
	hint_range = 1
	hint_range_step = 2
	hint_enum = 3
	hint_max = 4
}

pub struct VisualShaderNodeIntParameter {
	VisualShaderNodeParameter
}

pub fn (s &VisualShaderNodeIntParameter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeIntParameter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeIntParameter) set_hint(hint VisualShaderNodeIntParameterHint) {
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("set_hint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2540512075)
	mut args := unsafe { [1]voidptr{} }
	i64_hint := i64(hint)
	args[0] = unsafe{voidptr(&i64_hint)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeIntParameter) get_hint() VisualShaderNodeIntParameterHint {
	mut result := i64(VisualShaderNodeIntParameterHint.hint_none)
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("get_hint")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4250814924)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeIntParameterHint(result)}
}

pub fn (s &VisualShaderNodeIntParameter) set_min(value i64) {
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("set_min")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeIntParameter) get_min() i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("get_min")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeIntParameter) set_max(value i64) {
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("set_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeIntParameter) get_max() i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("get_max")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeIntParameter) set_step(value i64) {
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("set_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeIntParameter) get_step() i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("get_step")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeIntParameter) set_enum_names(names PackedStringArray) {
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("set_enum_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&names)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeIntParameter) get_enum_names() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("get_enum_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeIntParameter) set_default_value_enabled(enabled bool) {
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("set_default_value_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeIntParameter) is_default_value_enabled() bool {
	mut result := false
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("is_default_value_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeIntParameter) set_default_value(value i64) {
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("set_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeIntParameter) get_default_value() i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNodeIntParameter")
	fnname := StringName.new("get_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
