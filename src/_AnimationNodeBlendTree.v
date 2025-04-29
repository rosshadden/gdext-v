module gd

pub struct AnimationNodeBlendTree {
	AnimationRootNode
}

pub fn (s &AnimationNodeBlendTree) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationNodeBlendTree) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct AnimationNodeBlendTree_add_node_Cfg {
pub:
	position Vector2
}

pub fn (s &AnimationNodeBlendTree) add_node(name string, node AnimationNode, cfg AnimationNodeBlendTree_add_node_Cfg) {
	classname := StringName.new("AnimationNodeBlendTree")
	fnname := StringName.new("add_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1980270704)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&node.ptr)
	args[2] = unsafe{voidptr(&cfg.position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendTree) get_node(name string) AnimationNode {
	mut result := AnimationNode{}
	classname := StringName.new("AnimationNodeBlendTree")
	fnname := StringName.new("get_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 625644256)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendTree) remove_node(name string) {
	classname := StringName.new("AnimationNodeBlendTree")
	fnname := StringName.new("remove_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendTree) rename_node(name string, new_name string) {
	classname := StringName.new("AnimationNodeBlendTree")
	fnname := StringName.new("rename_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(new_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendTree) has_node(name string) bool {
	mut result := false
	classname := StringName.new("AnimationNodeBlendTree")
	fnname := StringName.new("has_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendTree) connect_node(input_node string, input_index i64, output_node string) {
	classname := StringName.new("AnimationNodeBlendTree")
	fnname := StringName.new("connect_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2168001410)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(input_node)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&input_index)}
	arg_sn2 := StringName.new(output_node)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendTree) disconnect_node(input_node string, input_index i64) {
	classname := StringName.new("AnimationNodeBlendTree")
	fnname := StringName.new("disconnect_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(input_node)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&input_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendTree) set_node_position(name string, position Vector2) {
	classname := StringName.new("AnimationNodeBlendTree")
	fnname := StringName.new("set_node_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1999414630)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendTree) get_node_position(name string) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("AnimationNodeBlendTree")
	fnname := StringName.new("get_node_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3100822709)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendTree) set_graph_offset(offset Vector2) {
	classname := StringName.new("AnimationNodeBlendTree")
	fnname := StringName.new("set_graph_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendTree) get_graph_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("AnimationNodeBlendTree")
	fnname := StringName.new("get_graph_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
