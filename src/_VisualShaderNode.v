module gd

pub enum VisualShaderNodePortType as i64 {
	port_type_scalar = 0
	port_type_scalar_int = 1
	port_type_scalar_uint = 2
	port_type_vector_2d = 3
	port_type_vector_3d = 4
	port_type_vector_4d = 5
	port_type_boolean = 6
	port_type_transform = 7
	port_type_sampler = 8
	port_type_max = 9
}

pub struct VisualShaderNode {
	Resource
}

pub fn (s &VisualShaderNode) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNode) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNode) get_default_input_port(gd_type VisualShaderNodePortType) i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNode")
	fnname := StringName.new("get_default_input_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1894493699)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNode) set_output_port_for_preview(port i64) {
	classname := StringName.new("VisualShaderNode")
	fnname := StringName.new("set_output_port_for_preview")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNode) get_output_port_for_preview() i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNode")
	fnname := StringName.new("get_output_port_for_preview")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct VisualShaderNode_set_input_port_default_value_Cfg {
pub:
	prev_value Variant
}

pub fn (s &VisualShaderNode) set_input_port_default_value(port i64, value Variant, cfg VisualShaderNode_set_input_port_default_value_Cfg) {
	classname := StringName.new("VisualShaderNode")
	fnname := StringName.new("set_input_port_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 150923387)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	args[1] = unsafe{voidptr(&value)}
	args[2] = unsafe{voidptr(&cfg.prev_value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNode) get_input_port_default_value(port i64) Variant {
	mut result := Variant{}
	classname := StringName.new("VisualShaderNode")
	fnname := StringName.new("get_input_port_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNode) remove_input_port_default_value(port i64) {
	classname := StringName.new("VisualShaderNode")
	fnname := StringName.new("remove_input_port_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNode) clear_default_input_values() {
	classname := StringName.new("VisualShaderNode")
	fnname := StringName.new("clear_default_input_values")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNode) set_default_input_values(values Array) {
	classname := StringName.new("VisualShaderNode")
	fnname := StringName.new("set_default_input_values")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&values)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNode) get_default_input_values() Array {
	mut result := Array{}
	classname := StringName.new("VisualShaderNode")
	fnname := StringName.new("get_default_input_values")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNode) set_frame(frame i64) {
	classname := StringName.new("VisualShaderNode")
	fnname := StringName.new("set_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&frame)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNode) get_frame() i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShaderNode")
	fnname := StringName.new("get_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
