module gd

pub enum NodeProcessMode as i64 {
	process_mode_inherit = 0
	process_mode_pausable = 1
	process_mode_when_paused = 2
	process_mode_always = 3
	process_mode_disabled = 4
}

pub enum NodeProcessThreadGroup as i64 {
	process_thread_group_inherit = 0
	process_thread_group_main_thread = 1
	process_thread_group_sub_thread = 2
}

pub enum NodeProcessThreadMessages as i64 {
	flag_process_thread_messages = 1
	flag_process_thread_messages_physics = 2
	flag_process_thread_messages_all = 3
}

pub enum NodePhysicsInterpolationMode as i64 {
	physics_interpolation_mode_inherit = 0
	physics_interpolation_mode_on = 1
	physics_interpolation_mode_off = 2
}

pub enum NodeDuplicateFlags as i64 {
	duplicate_signals = 1
	duplicate_groups = 2
	duplicate_scripts = 4
	duplicate_use_instantiation = 8
}

pub enum NodeInternalMode as i64 {
	internal_mode_disabled = 0
	internal_mode_front = 1
	internal_mode_back = 2
}

pub enum NodeAutoTranslateMode as i64 {
	auto_translate_mode_inherit = 0
	auto_translate_mode_always = 1
	auto_translate_mode_disabled = 2
}

pub struct Node {
	Object
}

pub fn (s &Node) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Node) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface INodeProcess {
mut:
	process_(delta f64)
}

pub fn (s &Node) gd_process(delta f64) {
	classname := StringName.new("Node")
	fnname := StringName.new("_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface INodePhysicsProcess {
mut:
	physics_process_(delta f64)
}

pub fn (s &Node) gd_physics_process(delta f64) {
	classname := StringName.new("Node")
	fnname := StringName.new("_physics_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface INodeEnterTree {
mut:
	enter_tree_()
}

pub fn (s &Node) gd_enter_tree() {
	classname := StringName.new("Node")
	fnname := StringName.new("_enter_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface INodeExitTree {
mut:
	exit_tree_()
}

pub fn (s &Node) gd_exit_tree() {
	classname := StringName.new("Node")
	fnname := StringName.new("_exit_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface INodeReady {
mut:
	ready_()
}

pub fn (s &Node) gd_ready() {
	classname := StringName.new("Node")
	fnname := StringName.new("_ready")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface INodeGetConfigurationWarnings {
mut:
	get_configuration_warnings_() PackedStringArray
}

pub fn (s &Node) gd_get_configuration_warnings() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("Node")
	fnname := StringName.new("_get_configuration_warnings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface INodeGetAccessibilityConfigurationWarnings {
mut:
	get_accessibility_configuration_warnings_() PackedStringArray
}

pub fn (s &Node) gd_get_accessibility_configuration_warnings() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("Node")
	fnname := StringName.new("_get_accessibility_configuration_warnings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface INodeInput {
mut:
	input_(event InputEvent)
}

pub fn (s &Node) gd_input(event InputEvent) {
	classname := StringName.new("Node")
	fnname := StringName.new("_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3754044979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface INodeShortcutInput {
mut:
	shortcut_input_(event InputEvent)
}

pub fn (s &Node) gd_shortcut_input(event InputEvent) {
	classname := StringName.new("Node")
	fnname := StringName.new("_shortcut_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3754044979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface INodeUnhandledInput {
mut:
	unhandled_input_(event InputEvent)
}

pub fn (s &Node) gd_unhandled_input(event InputEvent) {
	classname := StringName.new("Node")
	fnname := StringName.new("_unhandled_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3754044979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface INodeUnhandledKeyInput {
mut:
	unhandled_key_input_(event InputEvent)
}

pub fn (s &Node) gd_unhandled_key_input(event InputEvent) {
	classname := StringName.new("Node")
	fnname := StringName.new("_unhandled_key_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3754044979)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&event.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface INodeGetFocusedAccessibilityElement {
mut:
	get_focused_accessibility_element_() RID
}

pub fn (s &Node) gd_get_focused_accessibility_element() RID {
	mut result := RID{}
	classname := StringName.new("Node")
	fnname := StringName.new("_get_focused_accessibility_element")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface INodeGetAccessibilityContainerName {
mut:
	get_accessibility_container_name_(node Node) String
}

pub fn (s &Node) gd_get_accessibility_container_name(node Node) string {
	mut result := String{}
	classname := StringName.new("Node")
	fnname := StringName.new("_get_accessibility_container_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2174079723)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn Node.print_orphan_nodes() {
	classname := StringName.new("Node")
	fnname := StringName.new("print_orphan_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Node_add_sibling_Cfg {
pub:
	force_readable_name bool
}

pub fn (s &Node) add_sibling(sibling Node, cfg Node_add_sibling_Cfg) {
	classname := StringName.new("Node")
	fnname := StringName.new("add_sibling")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2570952461)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&sibling.ptr)
	args[1] = unsafe{voidptr(&cfg.force_readable_name)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) set_name(name string) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_name() string {
	mut result := StringName{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct Node_add_child_Cfg {
pub:
	force_readable_name bool
	internal NodeInternalMode
}

pub fn (s &Node) add_child(node Node, cfg Node_add_child_Cfg) {
	classname := StringName.new("Node")
	fnname := StringName.new("add_child")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3863233950)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&node.ptr)
	args[1] = unsafe{voidptr(&cfg.force_readable_name)}
	i64_internal := i64(cfg.internal)
	args[2] = unsafe{voidptr(&i64_internal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) remove_child(node Node) {
	classname := StringName.new("Node")
	fnname := StringName.new("remove_child")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Node_reparent_Cfg {
pub:
	keep_global_transform bool
}

pub fn (s &Node) reparent(new_parent Node, cfg Node_reparent_Cfg) {
	classname := StringName.new("Node")
	fnname := StringName.new("reparent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3685795103)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&new_parent.ptr)
	args[1] = unsafe{voidptr(&cfg.keep_global_transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Node_get_child_count_Cfg {
pub:
	include_internal bool
}

pub fn (s &Node) get_child_count(cfg Node_get_child_count_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("Node")
	fnname := StringName.new("get_child_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 894402480)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.include_internal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Node_get_children_Cfg {
pub:
	include_internal bool
}

pub fn (s &Node) get_children(cfg Node_get_children_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_children")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 873284517)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.include_internal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Node_get_child_Cfg {
pub:
	include_internal bool
}

pub fn (s &Node) get_child(idx i64, cfg Node_get_child_Cfg) Node {
	mut result := Node{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_child")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 541253412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&cfg.include_internal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) has_node(path NodePath) bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("has_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 861721659)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) get_node(path NodePath) Node {
	mut result := Node{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2734337346)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) get_node_or_null(path NodePath) Node {
	mut result := Node{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_node_or_null")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2734337346)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) get_parent() Node {
	mut result := Node{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_parent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Node_find_child_Cfg {
pub:
	recursive bool
	owned bool
}

pub fn (s &Node) find_child(pattern string, cfg Node_find_child_Cfg) Node {
	mut result := Node{}
	classname := StringName.new("Node")
	fnname := StringName.new("find_child")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2008217037)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(pattern)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.recursive)}
	args[2] = unsafe{voidptr(&cfg.owned)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Node_find_children_Cfg {
pub:
	gd_type string
	recursive bool
	owned bool
}

pub fn (s &Node) find_children(pattern string, cfg Node_find_children_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("Node")
	fnname := StringName.new("find_children")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2560337219)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(pattern)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(cfg.gd_type)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&cfg.recursive)}
	args[3] = unsafe{voidptr(&cfg.owned)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) find_parent(pattern string) Node {
	mut result := Node{}
	classname := StringName.new("Node")
	fnname := StringName.new("find_parent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1140089439)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(pattern)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) has_node_and_resource(path NodePath) bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("has_node_and_resource")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 861721659)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) get_node_and_resource(path NodePath) Array {
	mut result := Array{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_node_and_resource")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 502563882)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) is_inside_tree() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_inside_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) is_part_of_edited_scene() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_part_of_edited_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) is_ancestor_of(node Node) bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_ancestor_of")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093956946)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) is_greater_than(node Node) bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_greater_than")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093956946)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) get_path() NodePath {
	mut result := NodePath{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Node_get_path_to_Cfg {
pub:
	use_unique_path bool
}

pub fn (s &Node) get_path_to(node Node, cfg Node_get_path_to_Cfg) NodePath {
	mut result := NodePath{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_path_to")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 498846349)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&node.ptr)
	args[1] = unsafe{voidptr(&cfg.use_unique_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Node_add_to_group_Cfg {
pub:
	persistent bool
}

pub fn (s &Node) add_to_group(group string, cfg Node_add_to_group_Cfg) {
	classname := StringName.new("Node")
	fnname := StringName.new("add_to_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3683006648)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(group)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.persistent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) remove_from_group(group string) {
	classname := StringName.new("Node")
	fnname := StringName.new("remove_from_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(group)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) is_in_group(group string) bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_in_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(group)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) move_child(child_node Node, to_index i64) {
	classname := StringName.new("Node")
	fnname := StringName.new("move_child")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3315886247)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&child_node.ptr)
	args[1] = unsafe{voidptr(&to_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_groups() Array {
	mut result := Array{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_groups")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_owner(owner Node) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_owner")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&owner.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_owner() Node {
	mut result := Node{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_owner")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Node_get_index_Cfg {
pub:
	include_internal bool
}

pub fn (s &Node) get_index(cfg Node_get_index_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("Node")
	fnname := StringName.new("get_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 894402480)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.include_internal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) print_tree() {
	classname := StringName.new("Node")
	fnname := StringName.new("print_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) print_tree_pretty() {
	classname := StringName.new("Node")
	fnname := StringName.new("print_tree_pretty")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_tree_string() string {
	mut result := String{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_tree_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Node) get_tree_string_pretty() string {
	mut result := String{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_tree_string_pretty")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Node) set_scene_file_path(scene_file_path string) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_scene_file_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(scene_file_path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_scene_file_path() string {
	mut result := String{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_scene_file_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Node) propagate_notification(what i64) {
	classname := StringName.new("Node")
	fnname := StringName.new("propagate_notification")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&what)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Node_propagate_call_Cfg {
pub:
	gd_args Array
	parent_first bool
}

pub fn (s &Node) propagate_call(method string, cfg Node_propagate_call_Cfg) {
	classname := StringName.new("Node")
	fnname := StringName.new("propagate_call")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1871007965)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.gd_args)}
	args[2] = unsafe{voidptr(&cfg.parent_first)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) set_physics_process(enable bool) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_physics_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_physics_process_delta_time() f64 {
	mut result := f64(0)
	classname := StringName.new("Node")
	fnname := StringName.new("get_physics_process_delta_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) is_physics_processing() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_physics_processing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) get_process_delta_time() f64 {
	mut result := f64(0)
	classname := StringName.new("Node")
	fnname := StringName.new("get_process_delta_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_process(enable bool) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) set_process_priority(priority i64) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_process_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_process_priority() i64 {
	mut result := i64(0)
	classname := StringName.new("Node")
	fnname := StringName.new("get_process_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_physics_process_priority(priority i64) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_physics_process_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_physics_process_priority() i64 {
	mut result := i64(0)
	classname := StringName.new("Node")
	fnname := StringName.new("get_physics_process_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) is_processing() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_processing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_process_input(enable bool) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_process_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) is_processing_input() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_processing_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_process_shortcut_input(enable bool) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_process_shortcut_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) is_processing_shortcut_input() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_processing_shortcut_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_process_unhandled_input(enable bool) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_process_unhandled_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) is_processing_unhandled_input() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_processing_unhandled_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_process_unhandled_key_input(enable bool) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_process_unhandled_key_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) is_processing_unhandled_key_input() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_processing_unhandled_key_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_process_mode(mode NodeProcessMode) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_process_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1841290486)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_process_mode() NodeProcessMode {
	mut result := i64(NodeProcessMode.process_mode_inherit)
	classname := StringName.new("Node")
	fnname := StringName.new("get_process_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 739966102)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NodeProcessMode(result)}
}

pub fn (s &Node) can_process() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("can_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_process_thread_group(mode NodeProcessThreadGroup) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_process_thread_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2275442745)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_process_thread_group() NodeProcessThreadGroup {
	mut result := i64(NodeProcessThreadGroup.process_thread_group_inherit)
	classname := StringName.new("Node")
	fnname := StringName.new("get_process_thread_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1866404740)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NodeProcessThreadGroup(result)}
}

pub fn (s &Node) set_process_thread_messages(flags NodeProcessThreadMessages) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_process_thread_messages")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1357280998)
	mut args := unsafe { [1]voidptr{} }
	i64_flags := i64(flags)
	args[0] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_process_thread_messages() NodeProcessThreadMessages {
	mut result := i64(NodeProcessThreadMessages.flag_process_thread_messages)
	classname := StringName.new("Node")
	fnname := StringName.new("get_process_thread_messages")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4228993612)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NodeProcessThreadMessages(result)}
}

pub fn (s &Node) set_process_thread_group_order(order i64) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_process_thread_group_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&order)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_process_thread_group_order() i64 {
	mut result := i64(0)
	classname := StringName.new("Node")
	fnname := StringName.new("get_process_thread_group_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_accessibility_name(name string) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_accessibility_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_accessibility_name() string {
	mut result := String{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_accessibility_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Node) set_accessibility_description(description string) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_accessibility_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(description)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_accessibility_description() string {
	mut result := String{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_accessibility_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Node) set_accessibility_live(mode DisplayServerAccessibilityLiveMode) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_accessibility_live")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1720261470)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_accessibility_live() DisplayServerAccessibilityLiveMode {
	mut result := i64(DisplayServerAccessibilityLiveMode.live_off)
	classname := StringName.new("Node")
	fnname := StringName.new("get_accessibility_live")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3311037003)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{DisplayServerAccessibilityLiveMode(result)}
}

pub fn (s &Node) set_accessibility_controls_nodes(node_path Array) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_accessibility_controls_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&node_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_accessibility_controls_nodes() Array {
	mut result := Array{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_accessibility_controls_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_accessibility_described_by_nodes(node_path Array) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_accessibility_described_by_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&node_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_accessibility_described_by_nodes() Array {
	mut result := Array{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_accessibility_described_by_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_accessibility_labeled_by_nodes(node_path Array) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_accessibility_labeled_by_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&node_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_accessibility_labeled_by_nodes() Array {
	mut result := Array{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_accessibility_labeled_by_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_accessibility_flow_to_nodes(node_path Array) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_accessibility_flow_to_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&node_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_accessibility_flow_to_nodes() Array {
	mut result := Array{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_accessibility_flow_to_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) queue_accessibility_update() {
	classname := StringName.new("Node")
	fnname := StringName.new("queue_accessibility_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_accessibility_element() RID {
	mut result := RID{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_accessibility_element")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_display_folded(fold bool) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_display_folded")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&fold)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) is_displayed_folded() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_displayed_folded")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_process_internal(enable bool) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_process_internal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) is_processing_internal() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_processing_internal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_physics_process_internal(enable bool) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_physics_process_internal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) is_physics_processing_internal() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_physics_processing_internal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_physics_interpolation_mode(mode NodePhysicsInterpolationMode) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_physics_interpolation_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3202404928)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_physics_interpolation_mode() NodePhysicsInterpolationMode {
	mut result := i64(NodePhysicsInterpolationMode.physics_interpolation_mode_inherit)
	classname := StringName.new("Node")
	fnname := StringName.new("get_physics_interpolation_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920385216)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NodePhysicsInterpolationMode(result)}
}

pub fn (s &Node) is_physics_interpolated() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_physics_interpolated")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) is_physics_interpolated_and_enabled() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_physics_interpolated_and_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) reset_physics_interpolation() {
	classname := StringName.new("Node")
	fnname := StringName.new("reset_physics_interpolation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) set_auto_translate_mode(mode NodeAutoTranslateMode) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_auto_translate_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 776149714)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_auto_translate_mode() NodeAutoTranslateMode {
	mut result := i64(NodeAutoTranslateMode.auto_translate_mode_inherit)
	classname := StringName.new("Node")
	fnname := StringName.new("get_auto_translate_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2498906432)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{NodeAutoTranslateMode(result)}
}

pub fn (s &Node) set_translation_domain_inherited() {
	classname := StringName.new("Node")
	fnname := StringName.new("set_translation_domain_inherited")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_window() Window {
	mut result := Window{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_window")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1757182445)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) get_last_exclusive_window() Window {
	mut result := Window{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_last_exclusive_window")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1757182445)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) get_tree() SceneTree {
	mut result := SceneTree{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_tree")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2958820483)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) create_tween() Tween {
	mut result := Tween{}
	classname := StringName.new("Node")
	fnname := StringName.new("create_tween")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3426978995)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Node_duplicate_Cfg {
pub:
	flags i64
}

pub fn (s &Node) duplicate(cfg Node_duplicate_Cfg) Node {
	mut result := Node{}
	classname := StringName.new("Node")
	fnname := StringName.new("duplicate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511555459)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Node_replace_by_Cfg {
pub:
	keep_groups bool
}

pub fn (s &Node) replace_by(node Node, cfg Node_replace_by_Cfg) {
	classname := StringName.new("Node")
	fnname := StringName.new("replace_by")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2570952461)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&node.ptr)
	args[1] = unsafe{voidptr(&cfg.keep_groups)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) set_scene_instance_load_placeholder(load_placeholder bool) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_scene_instance_load_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&load_placeholder)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_scene_instance_load_placeholder() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("get_scene_instance_load_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_editable_instance(node Node, is_editable bool) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_editable_instance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2731852923)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&node.ptr)
	args[1] = unsafe{voidptr(&is_editable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) is_editable_instance(node Node) bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_editable_instance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093956946)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) get_viewport() Viewport {
	mut result := Viewport{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3596683776)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) queue_free() {
	classname := StringName.new("Node")
	fnname := StringName.new("queue_free")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) request_ready() {
	classname := StringName.new("Node")
	fnname := StringName.new("request_ready")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) is_node_ready() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_node_ready")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Node_set_multiplayer_authority_Cfg {
pub:
	recursive bool
}

pub fn (s &Node) set_multiplayer_authority(id i64, cfg Node_set_multiplayer_authority_Cfg) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_multiplayer_authority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 972357352)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&cfg.recursive)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_multiplayer_authority() i64 {
	mut result := i64(0)
	classname := StringName.new("Node")
	fnname := StringName.new("get_multiplayer_authority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) is_multiplayer_authority() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_multiplayer_authority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) get_multiplayer() MultiplayerAPI {
	mut result := MultiplayerAPI{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_multiplayer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 406750475)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) rpc_config(method string, config Variant) {
	classname := StringName.new("Node")
	fnname := StringName.new("rpc_config")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&config)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_rpc_config() Variant {
	mut result := Variant{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_rpc_config")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_editor_description(editor_description string) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_editor_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(editor_description)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) get_editor_description() string {
	mut result := String{}
	classname := StringName.new("Node")
	fnname := StringName.new("get_editor_description")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Node) set_unique_name_in_owner(enable bool) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_unique_name_in_owner")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) is_unique_name_in_owner() bool {
	mut result := false
	classname := StringName.new("Node")
	fnname := StringName.new("is_unique_name_in_owner")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Node_atr_Cfg {
pub:
	context string
}

pub fn (s &Node) atr(message string, cfg Node_atr_Cfg) string {
	mut result := String{}
	classname := StringName.new("Node")
	fnname := StringName.new("atr")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3344478075)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.context)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct Node_atr_n_Cfg {
pub:
	context string
}

pub fn (s &Node) atr_n(message string, plural_message string, n i64, cfg Node_atr_n_Cfg) string {
	mut result := String{}
	classname := StringName.new("Node")
	fnname := StringName.new("atr_n")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 259354841)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(plural_message)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&n)}
	arg_sn3 := StringName.new(cfg.context)
	args[3] = unsafe{voidptr(&arg_sn3)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Node) rpc(method string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("Node")
	fnname := StringName.new("rpc")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4047867050)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &Node) rpc_id(peer_id i64, method string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("Node")
	fnname := StringName.new("rpc_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 361499283)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&peer_id)}
	arg_sn1 := StringName.new(method)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &Node) update_configuration_warnings() {
	classname := StringName.new("Node")
	fnname := StringName.new("update_configuration_warnings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) call_deferred_thread_group(method string) Variant {
	mut result := Variant{}
	classname := StringName.new("Node")
	fnname := StringName.new("call_deferred_thread_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3400424181)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_deferred_thread_group(property string, value Variant) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_deferred_thread_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) notify_deferred_thread_group(what i64) {
	classname := StringName.new("Node")
	fnname := StringName.new("notify_deferred_thread_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&what)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) call_thread_safe(method string) Variant {
	mut result := Variant{}
	classname := StringName.new("Node")
	fnname := StringName.new("call_thread_safe")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3400424181)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Node) set_thread_safe(property string, value Variant) {
	classname := StringName.new("Node")
	fnname := StringName.new("set_thread_safe")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Node) notify_thread_safe(what i64) {
	classname := StringName.new("Node")
	fnname := StringName.new("notify_thread_safe")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&what)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
