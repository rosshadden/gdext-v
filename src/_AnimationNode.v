module gd

pub enum AnimationNodeFilterAction as i64 {
	filter_ignore = 0
	filter_pass = 1
	filter_stop = 2
	filter_blend = 3
}

pub struct AnimationNode {
	Resource
}

pub fn (s &AnimationNode) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationNode) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IAnimationNodeGetChildNodes {
mut:
	get_child_nodes_() Dictionary
}

pub fn (s &AnimationNode) gd_get_child_nodes() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("_get_child_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAnimationNodeGetParameterList {
mut:
	get_parameter_list_() Array
}

pub fn (s &AnimationNode) gd_get_parameter_list() Array {
	mut result := Array{}
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("_get_parameter_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAnimationNodeGetChildByName {
mut:
	get_child_by_name_(name StringName) AnimationNode
}

pub fn (s &AnimationNode) gd_get_child_by_name(name string) AnimationNode {
	mut result := AnimationNode{}
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("_get_child_by_name")
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

pub interface IAnimationNodeGetParameterDefaultValue {
mut:
	get_parameter_default_value_(parameter StringName) Variant
}

pub fn (s &AnimationNode) gd_get_parameter_default_value(parameter string) Variant {
	mut result := Variant{}
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("_get_parameter_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(parameter)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAnimationNodeIsParameterReadOnly {
mut:
	is_parameter_read_only_(parameter StringName) bool
}

pub fn (s &AnimationNode) gd_is_parameter_read_only(parameter string) bool {
	mut result := false
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("_is_parameter_read_only")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(parameter)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAnimationNodeProcess {
mut:
	process_(time f64, seek bool, is_external_seeking bool, test_only bool) f64
}

pub fn (s &AnimationNode) gd_process(time f64, seek bool, is_external_seeking bool, test_only bool) f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2139827523)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&time)}
	args[1] = unsafe{voidptr(&seek)}
	args[2] = unsafe{voidptr(&is_external_seeking)}
	args[3] = unsafe{voidptr(&test_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IAnimationNodeGetCaption {
mut:
	get_caption_() String
}

pub fn (s &AnimationNode) gd_get_caption() string {
	mut result := String{}
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("_get_caption")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IAnimationNodeHasFilter {
mut:
	has_filter_() bool
}

pub fn (s &AnimationNode) gd_has_filter() bool {
	mut result := false
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("_has_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNode) add_input(name string) bool {
	mut result := false
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("add_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNode) remove_input(index i64) {
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("remove_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNode) set_input_name(input i64, name string) bool {
	mut result := false
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("set_input_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 215573526)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&input)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNode) get_input_name(input i64) string {
	mut result := String{}
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("get_input_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&input)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationNode) get_input_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("get_input_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNode) find_input(name string) i64 {
	mut result := i64(0)
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("find_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNode) set_filter_path(path NodePath, enable bool) {
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("set_filter_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3868023870)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNode) is_path_filtered(path NodePath) bool {
	mut result := false
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("is_path_filtered")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 861721659)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNode) set_filter_enabled(enable bool) {
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("set_filter_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNode) is_filter_enabled() bool {
	mut result := false
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("is_filter_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNode) get_processing_animation_tree_instance_id() i64 {
	mut result := i64(0)
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("get_processing_animation_tree_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNode) is_process_testing() bool {
	mut result := false
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("is_process_testing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AnimationNode_blend_animation_Cfg {
pub:
	looped_flag AnimationLoopedFlag
}

pub fn (s &AnimationNode) blend_animation(animation string, time f64, delta f64, seeked bool, is_external_seeking bool, blend f64, cfg AnimationNode_blend_animation_Cfg) {
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("blend_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1630801826)
	mut args := unsafe { [7]voidptr{} }
	arg_sn0 := StringName.new(animation)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&time)}
	args[2] = unsafe{voidptr(&delta)}
	args[3] = unsafe{voidptr(&seeked)}
	args[4] = unsafe{voidptr(&is_external_seeking)}
	args[5] = unsafe{voidptr(&blend)}
	i64_looped_flag := i64(cfg.looped_flag)
	args[6] = unsafe{voidptr(&i64_looped_flag)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct AnimationNode_blend_node_Cfg {
pub:
	filter AnimationNodeFilterAction
	sync bool
	test_only bool
}

pub fn (s &AnimationNode) blend_node(name string, node AnimationNode, time f64, seek bool, is_external_seeking bool, blend f64, cfg AnimationNode_blend_node_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("blend_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1746075988)
	mut args := unsafe { [9]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&node.ptr)
	args[2] = unsafe{voidptr(&time)}
	args[3] = unsafe{voidptr(&seek)}
	args[4] = unsafe{voidptr(&is_external_seeking)}
	args[5] = unsafe{voidptr(&blend)}
	i64_filter := i64(cfg.filter)
	args[6] = unsafe{voidptr(&i64_filter)}
	args[7] = unsafe{voidptr(&cfg.sync)}
	args[8] = unsafe{voidptr(&cfg.test_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AnimationNode_blend_input_Cfg {
pub:
	filter AnimationNodeFilterAction
	sync bool
	test_only bool
}

pub fn (s &AnimationNode) blend_input(input_index i64, time f64, seek bool, is_external_seeking bool, blend f64, cfg AnimationNode_blend_input_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("blend_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1361527350)
	mut args := unsafe { [8]voidptr{} }
	args[0] = unsafe{voidptr(&input_index)}
	args[1] = unsafe{voidptr(&time)}
	args[2] = unsafe{voidptr(&seek)}
	args[3] = unsafe{voidptr(&is_external_seeking)}
	args[4] = unsafe{voidptr(&blend)}
	i64_filter := i64(cfg.filter)
	args[5] = unsafe{voidptr(&i64_filter)}
	args[6] = unsafe{voidptr(&cfg.sync)}
	args[7] = unsafe{voidptr(&cfg.test_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNode) set_parameter(name string, value Variant) {
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("set_parameter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNode) get_parameter(name string) Variant {
	mut result := Variant{}
	classname := StringName.new("AnimationNode")
	fnname := StringName.new("get_parameter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
