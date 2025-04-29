module gd

pub struct Resource {
	RefCounted
}

pub fn (s &Resource) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Resource) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IResourceSetupLocalToScene {
mut:
	setup_local_to_scene_()
}

pub fn (s &Resource) gd_setup_local_to_scene() {
	classname := StringName.new("Resource")
	fnname := StringName.new("_setup_local_to_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IResourceGetRid {
mut:
	get_rid_() RID
}

pub fn (s &Resource) gd_get_rid() RID {
	mut result := RID{}
	classname := StringName.new("Resource")
	fnname := StringName.new("_get_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IResourceResetState {
mut:
	reset_state_()
}

pub fn (s &Resource) gd_reset_state() {
	classname := StringName.new("Resource")
	fnname := StringName.new("_reset_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IResourceSetPathCache {
mut:
	set_path_cache_(path String)
}

pub fn (s &Resource) gd_set_path_cache(path string) {
	classname := StringName.new("Resource")
	fnname := StringName.new("_set_path_cache")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3089850668)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Resource) set_path(path string) {
	classname := StringName.new("Resource")
	fnname := StringName.new("set_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Resource) take_over_path(path string) {
	classname := StringName.new("Resource")
	fnname := StringName.new("take_over_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Resource) get_path() string {
	mut result := String{}
	classname := StringName.new("Resource")
	fnname := StringName.new("get_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Resource) set_path_cache(path string) {
	classname := StringName.new("Resource")
	fnname := StringName.new("set_path_cache")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Resource) set_name(name string) {
	classname := StringName.new("Resource")
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

pub fn (s &Resource) get_name() string {
	mut result := String{}
	classname := StringName.new("Resource")
	fnname := StringName.new("get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Resource) get_rid() RID {
	mut result := RID{}
	classname := StringName.new("Resource")
	fnname := StringName.new("get_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Resource) set_local_to_scene(enable bool) {
	classname := StringName.new("Resource")
	fnname := StringName.new("set_local_to_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Resource) is_local_to_scene() bool {
	mut result := false
	classname := StringName.new("Resource")
	fnname := StringName.new("is_local_to_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Resource) get_local_scene() Node {
	mut result := Node{}
	classname := StringName.new("Resource")
	fnname := StringName.new("get_local_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Resource) setup_local_to_scene() {
	classname := StringName.new("Resource")
	fnname := StringName.new("setup_local_to_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Resource) reset_state() {
	classname := StringName.new("Resource")
	fnname := StringName.new("reset_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Resource) set_id_for_path(path string, id string) {
	classname := StringName.new("Resource")
	fnname := StringName.new("set_id_for_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := String.new(id)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Resource) get_id_for_path(path string) string {
	mut result := String{}
	classname := StringName.new("Resource")
	fnname := StringName.new("get_id_for_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Resource) is_built_in() bool {
	mut result := false
	classname := StringName.new("Resource")
	fnname := StringName.new("is_built_in")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn Resource.generate_scene_unique_id() string {
	mut result := String{}
	classname := StringName.new("Resource")
	fnname := StringName.new("generate_scene_unique_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Resource) set_scene_unique_id(id string) {
	classname := StringName.new("Resource")
	fnname := StringName.new("set_scene_unique_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(id)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Resource) get_scene_unique_id() string {
	mut result := String{}
	classname := StringName.new("Resource")
	fnname := StringName.new("get_scene_unique_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Resource) emit_changed() {
	classname := StringName.new("Resource")
	fnname := StringName.new("emit_changed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Resource_duplicate_Cfg {
pub:
	subresources bool
}

pub fn (s &Resource) duplicate(cfg Resource_duplicate_Cfg) Resource {
	mut result := Resource{}
	classname := StringName.new("Resource")
	fnname := StringName.new("duplicate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 482882304)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.subresources)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
