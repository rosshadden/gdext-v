module gd

pub enum SceneStateGenEditState as i64 {
	gen_edit_state_disabled = 0
	gen_edit_state_instance = 1
	gen_edit_state_main = 2
	gen_edit_state_main_inherited = 3
}

pub struct SceneState {
	RefCounted
}

pub fn (s &SceneState) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SceneState) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SceneState) get_path() string {
	mut result := String{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SceneState) get_base_scene_state() SceneState {
	mut result := SceneState{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_base_scene_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3479783971)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_node_count() i64 {
	mut result := i64(0)
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_node_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_node_type(idx i64) string {
	mut result := StringName{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_node_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SceneState) get_node_name(idx i64) string {
	mut result := StringName{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_node_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct SceneState_get_node_path_Cfg {
pub:
	for_parent bool
}

pub fn (s &SceneState) get_node_path(idx i64, cfg SceneState_get_node_path_Cfg) NodePath {
	mut result := NodePath{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_node_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2272487792)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&cfg.for_parent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_node_owner_path(idx i64) NodePath {
	mut result := NodePath{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_node_owner_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) is_node_instance_placeholder(idx i64) bool {
	mut result := false
	classname := StringName.new("SceneState")
	fnname := StringName.new("is_node_instance_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_node_instance_placeholder(idx i64) string {
	mut result := String{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_node_instance_placeholder")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SceneState) get_node_instance(idx i64) PackedScene {
	mut result := PackedScene{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_node_instance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 511017218)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_node_groups(idx i64) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_node_groups")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 647634434)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_node_index(idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_node_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_node_property_count(idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_node_property_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_node_property_name(idx i64, prop_idx i64) string {
	mut result := StringName{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_node_property_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 351665558)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&prop_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SceneState) get_node_property_value(idx i64, prop_idx i64) Variant {
	mut result := Variant{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_node_property_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 678354945)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&prop_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_connection_count() i64 {
	mut result := i64(0)
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_connection_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_connection_source(idx i64) NodePath {
	mut result := NodePath{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_connection_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_connection_signal(idx i64) string {
	mut result := StringName{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_connection_signal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SceneState) get_connection_target(idx i64) NodePath {
	mut result := NodePath{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_connection_target")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_connection_method(idx i64) string {
	mut result := StringName{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_connection_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &SceneState) get_connection_flags(idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_connection_flags")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_connection_binds(idx i64) Array {
	mut result := Array{}
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_connection_binds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneState) get_connection_unbinds(idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("SceneState")
	fnname := StringName.new("get_connection_unbinds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
