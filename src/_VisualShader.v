module gd

pub enum VisualShaderType as i64 {
	type_vertex = 0
	type_fragment = 1
	type_light = 2
	type_start = 3
	type_process = 4
	type_collide = 5
	type_start_custom = 6
	type_process_custom = 7
	type_sky = 8
	type_fog = 9
	type_max = 10
}

pub enum VisualShaderVaryingMode as i64 {
	varying_mode_vertex_to_frag_light = 0
	varying_mode_frag_to_light = 1
	varying_mode_max = 2
}

pub enum VisualShaderVaryingType as i64 {
	varying_type_float = 0
	varying_type_int = 1
	varying_type_uint = 2
	varying_type_vector_2d = 3
	varying_type_vector_3d = 4
	varying_type_vector_4d = 5
	varying_type_boolean = 6
	varying_type_transform = 7
	varying_type_max = 8
}

pub struct VisualShader {
	Shader
}

pub fn (s &VisualShader) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShader) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShader) set_mode(mode ShaderMode) {
	classname := StringName.new("VisualShader")
	fnname := StringName.new("set_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3978014962)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShader) add_node(gd_type VisualShaderType, node VisualShaderNode, position Vector2, id i64) {
	classname := StringName.new("VisualShader")
	fnname := StringName.new("add_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1560769431)
	mut args := unsafe { [4]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = voidptr(&node.ptr)
	args[2] = unsafe{voidptr(&position)}
	args[3] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShader) get_node(gd_type VisualShaderType, id i64) VisualShaderNode {
	mut result := VisualShaderNode{}
	classname := StringName.new("VisualShader")
	fnname := StringName.new("get_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3784670312)
	mut args := unsafe { [2]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShader) set_node_position(gd_type VisualShaderType, id i64, position Vector2) {
	classname := StringName.new("VisualShader")
	fnname := StringName.new("set_node_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726660721)
	mut args := unsafe { [3]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&id)}
	args[2] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShader) get_node_position(gd_type VisualShaderType, id i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("VisualShader")
	fnname := StringName.new("get_node_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2175036082)
	mut args := unsafe { [2]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShader) get_node_list(gd_type VisualShaderType) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("VisualShader")
	fnname := StringName.new("get_node_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2370592410)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShader) get_valid_node_id(gd_type VisualShaderType) i64 {
	mut result := i64(0)
	classname := StringName.new("VisualShader")
	fnname := StringName.new("get_valid_node_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 629467342)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShader) remove_node(gd_type VisualShaderType, id i64) {
	classname := StringName.new("VisualShader")
	fnname := StringName.new("remove_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844050912)
	mut args := unsafe { [2]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShader) replace_node(gd_type VisualShaderType, id i64, new_class string) {
	classname := StringName.new("VisualShader")
	fnname := StringName.new("replace_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3144735253)
	mut args := unsafe { [3]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&id)}
	arg_sn2 := StringName.new(new_class)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShader) is_node_connection(gd_type VisualShaderType, from_node i64, from_port i64, to_node i64, to_port i64) bool {
	mut result := false
	classname := StringName.new("VisualShader")
	fnname := StringName.new("is_node_connection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3922381898)
	mut args := unsafe { [5]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&from_node)}
	args[2] = unsafe{voidptr(&from_port)}
	args[3] = unsafe{voidptr(&to_node)}
	args[4] = unsafe{voidptr(&to_port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShader) can_connect_nodes(gd_type VisualShaderType, from_node i64, from_port i64, to_node i64, to_port i64) bool {
	mut result := false
	classname := StringName.new("VisualShader")
	fnname := StringName.new("can_connect_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3922381898)
	mut args := unsafe { [5]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&from_node)}
	args[2] = unsafe{voidptr(&from_port)}
	args[3] = unsafe{voidptr(&to_node)}
	args[4] = unsafe{voidptr(&to_port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShader) connect_nodes(gd_type VisualShaderType, from_node i64, from_port i64, to_node i64, to_port i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("VisualShader")
	fnname := StringName.new("connect_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3081049573)
	mut args := unsafe { [5]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&from_node)}
	args[2] = unsafe{voidptr(&from_port)}
	args[3] = unsafe{voidptr(&to_node)}
	args[4] = unsafe{voidptr(&to_port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &VisualShader) disconnect_nodes(gd_type VisualShaderType, from_node i64, from_port i64, to_node i64, to_port i64) {
	classname := StringName.new("VisualShader")
	fnname := StringName.new("disconnect_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2268060358)
	mut args := unsafe { [5]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&from_node)}
	args[2] = unsafe{voidptr(&from_port)}
	args[3] = unsafe{voidptr(&to_node)}
	args[4] = unsafe{voidptr(&to_port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShader) connect_nodes_forced(gd_type VisualShaderType, from_node i64, from_port i64, to_node i64, to_port i64) {
	classname := StringName.new("VisualShader")
	fnname := StringName.new("connect_nodes_forced")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2268060358)
	mut args := unsafe { [5]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&from_node)}
	args[2] = unsafe{voidptr(&from_port)}
	args[3] = unsafe{voidptr(&to_node)}
	args[4] = unsafe{voidptr(&to_port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShader) get_node_connections(gd_type VisualShaderType) Array {
	mut result := Array{}
	classname := StringName.new("VisualShader")
	fnname := StringName.new("get_node_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1441964831)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShader) set_graph_offset(offset Vector2) {
	classname := StringName.new("VisualShader")
	fnname := StringName.new("set_graph_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShader) get_graph_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("VisualShader")
	fnname := StringName.new("get_graph_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShader) attach_node_to_frame(gd_type VisualShaderType, id i64, frame i64) {
	classname := StringName.new("VisualShader")
	fnname := StringName.new("attach_node_to_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2479945279)
	mut args := unsafe { [3]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&id)}
	args[2] = unsafe{voidptr(&frame)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShader) detach_node_from_frame(gd_type VisualShaderType, id i64) {
	classname := StringName.new("VisualShader")
	fnname := StringName.new("detach_node_from_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844050912)
	mut args := unsafe { [2]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	args[1] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShader) add_varying(name string, mode VisualShaderVaryingMode, gd_type VisualShaderVaryingType) {
	classname := StringName.new("VisualShader")
	fnname := StringName.new("add_varying")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2084110726)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_mode := i64(mode)
	args[1] = unsafe{voidptr(&i64_mode)}
	i64_gd_type := i64(gd_type)
	args[2] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShader) remove_varying(name string) {
	classname := StringName.new("VisualShader")
	fnname := StringName.new("remove_varying")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShader) has_varying(name string) bool {
	mut result := false
	classname := StringName.new("VisualShader")
	fnname := StringName.new("has_varying")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
