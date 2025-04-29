module gd

pub struct VisualShaderNodeCustom {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeCustom) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeCustom) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IVisualShaderNodeCustomGetName {
mut:
	get_name_() String
}

pub fn (s &VisualShaderNodeCustom) gd_get_name() string {
	mut result := String{}
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IVisualShaderNodeCustomGetDescription {
mut:
	get_description_() String
}

pub fn (s &VisualShaderNodeCustom) gd_get_description() string {
	mut result := String{}
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IVisualShaderNodeCustomGetCategory {
mut:
	get_category_() String
}

pub fn (s &VisualShaderNodeCustom) gd_get_category() string {
	mut result := String{}
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_category")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IVisualShaderNodeCustomGetReturnIconType {
mut:
	get_return_icon_type_() VisualShaderNodePortType
}

pub fn (s &VisualShaderNodeCustom) gd_get_return_icon_type() VisualShaderNodePortType {
	mut result := i64(VisualShaderNodePortType.port_type_scalar)
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_return_icon_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1287173294)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodePortType(result)}
}

pub interface IVisualShaderNodeCustomGetInputPortCount {
mut:
	get_input_port_count_() i64
}

pub fn (s &VisualShaderNodeCustom) gd_get_input_port_count() i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_input_port_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVisualShaderNodeCustomGetInputPortType {
mut:
	get_input_port_type_(port i64) VisualShaderNodePortType
}

pub fn (s &VisualShaderNodeCustom) gd_get_input_port_type(port i64) VisualShaderNodePortType {
	mut result := i64(VisualShaderNodePortType.port_type_scalar)
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_input_port_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4102573379)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodePortType(result)}
}

pub interface IVisualShaderNodeCustomGetInputPortName {
mut:
	get_input_port_name_(port i64) String
}

pub fn (s &VisualShaderNodeCustom) gd_get_input_port_name(port i64) string {
	mut result := String{}
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_input_port_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IVisualShaderNodeCustomGetInputPortDefaultValue {
mut:
	get_input_port_default_value_(port i64) Variant
}

pub fn (s &VisualShaderNodeCustom) gd_get_input_port_default_value(port i64) Variant {
	mut result := Variant{}
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_input_port_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVisualShaderNodeCustomGetDefaultInputPort {
mut:
	get_default_input_port_(gd_type VisualShaderNodePortType) i64
}

pub fn (s &VisualShaderNodeCustom) gd_get_default_input_port(gd_type VisualShaderNodePortType) i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_default_input_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1894493699)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVisualShaderNodeCustomGetOutputPortCount {
mut:
	get_output_port_count_() i64
}

pub fn (s &VisualShaderNodeCustom) gd_get_output_port_count() i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_output_port_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVisualShaderNodeCustomGetOutputPortType {
mut:
	get_output_port_type_(port i64) VisualShaderNodePortType
}

pub fn (s &VisualShaderNodeCustom) gd_get_output_port_type(port i64) VisualShaderNodePortType {
	mut result := i64(VisualShaderNodePortType.port_type_scalar)
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_output_port_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4102573379)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodePortType(result)}
}

pub interface IVisualShaderNodeCustomGetOutputPortName {
mut:
	get_output_port_name_(port i64) String
}

pub fn (s &VisualShaderNodeCustom) gd_get_output_port_name(port i64) string {
	mut result := String{}
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_output_port_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IVisualShaderNodeCustomGetPropertyCount {
mut:
	get_property_count_() i64
}

pub fn (s &VisualShaderNodeCustom) gd_get_property_count() i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_property_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVisualShaderNodeCustomGetPropertyName {
mut:
	get_property_name_(index i64) String
}

pub fn (s &VisualShaderNodeCustom) gd_get_property_name(index i64) string {
	mut result := String{}
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_property_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IVisualShaderNodeCustomGetPropertyDefaultIndex {
mut:
	get_property_default_index_(index i64) i64
}

pub fn (s &VisualShaderNodeCustom) gd_get_property_default_index(index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_property_default_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVisualShaderNodeCustomGetPropertyOptions {
mut:
	get_property_options_(index i64) PackedStringArray
}

pub fn (s &VisualShaderNodeCustom) gd_get_property_options(index i64) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_property_options")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 647634434)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVisualShaderNodeCustomGetCode {
mut:
	get_code_(input_vars Array, output_vars Array, mode ShaderMode, gd_type VisualShaderType) String
}

pub fn (s &VisualShaderNodeCustom) gd_get_code(input_vars Array, output_vars Array, mode ShaderMode, gd_type VisualShaderType) string {
	mut result := String{}
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4287175357)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&input_vars)}
	args[1] = unsafe{voidptr(&output_vars)}
	i64_mode := i64(mode)
	args[2] = unsafe{voidptr(&i64_mode)}
	i64_gd_type := i64(gd_type)
	args[3] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IVisualShaderNodeCustomGetFuncCode {
mut:
	get_func_code_(mode ShaderMode, gd_type VisualShaderType) String
}

pub fn (s &VisualShaderNodeCustom) gd_get_func_code(mode ShaderMode, gd_type VisualShaderType) string {
	mut result := String{}
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_func_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1924221678)
	mut args := unsafe { [2]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	i64_gd_type := i64(gd_type)
	args[1] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IVisualShaderNodeCustomGetGlobalCode {
mut:
	get_global_code_(mode ShaderMode) String
}

pub fn (s &VisualShaderNodeCustom) gd_get_global_code(mode ShaderMode) string {
	mut result := String{}
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_get_global_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3956542358)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IVisualShaderNodeCustomIsHighend {
mut:
	is_highend_() bool
}

pub fn (s &VisualShaderNodeCustom) gd_is_highend() bool {
	mut result := false
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_is_highend")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IVisualShaderNodeCustomIsAvailable {
mut:
	is_available_(mode ShaderMode, gd_type VisualShaderType) bool
}

pub fn (s &VisualShaderNodeCustom) gd_is_available(mode ShaderMode, gd_type VisualShaderType) bool {
	mut result := false
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("_is_available")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1932120545)
	mut args := unsafe { [2]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	i64_gd_type := i64(gd_type)
	args[1] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeCustom) get_option_index(option i64) i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNodeCustom")
	fnname := StringName.new("get_option_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&option)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
