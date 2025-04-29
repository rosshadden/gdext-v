module gd

pub enum UndoRedoMergeMode as i64 {
	merge_disable = 0
	merge_ends = 1
	merge_all = 2
}

pub struct UndoRedo {
	Object
}

pub fn (s &UndoRedo) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s UndoRedo) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct UndoRedo_create_action_Cfg {
pub:
	merge_mode UndoRedoMergeMode
	backward_undo_ops bool
}

pub fn (s &UndoRedo) create_action(name string, cfg UndoRedo_create_action_Cfg) {
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("create_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3171901514)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_merge_mode := i64(cfg.merge_mode)
	args[1] = unsafe{voidptr(&i64_merge_mode)}
	args[2] = unsafe{voidptr(&cfg.backward_undo_ops)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct UndoRedo_commit_action_Cfg {
pub:
	execute bool
}

pub fn (s &UndoRedo) commit_action(cfg UndoRedo_commit_action_Cfg) {
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("commit_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.execute)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UndoRedo) is_committing_action() bool {
	mut result := false
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("is_committing_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UndoRedo) add_do_method(callable Callable) {
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("add_do_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UndoRedo) add_undo_method(callable Callable) {
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("add_undo_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UndoRedo) add_do_property(object Object, property string, value Variant) {
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("add_do_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017172818)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&object.ptr)
	arg_sn1 := StringName.new(property)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UndoRedo) add_undo_property(object Object, property string, value Variant) {
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("add_undo_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017172818)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&object.ptr)
	arg_sn1 := StringName.new(property)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UndoRedo) add_do_reference(object Object) {
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("add_do_reference")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UndoRedo) add_undo_reference(object Object) {
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("add_undo_reference")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UndoRedo) start_force_keep_in_merge_ends() {
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("start_force_keep_in_merge_ends")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UndoRedo) end_force_keep_in_merge_ends() {
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("end_force_keep_in_merge_ends")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UndoRedo) get_history_count() i64 {
	mut result := i64(0)
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("get_history_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UndoRedo) get_current_action() i64 {
	mut result := i64(0)
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("get_current_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UndoRedo) get_action_name(id i64) string {
	mut result := String{}
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("get_action_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct UndoRedo_clear_history_Cfg {
pub:
	increase_version bool
}

pub fn (s &UndoRedo) clear_history(cfg UndoRedo_clear_history_Cfg) {
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("clear_history")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.increase_version)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UndoRedo) get_current_action_name() string {
	mut result := String{}
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("get_current_action_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &UndoRedo) has_undo() bool {
	mut result := false
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("has_undo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UndoRedo) has_redo() bool {
	mut result := false
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("has_redo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UndoRedo) get_version() i64 {
	mut result := i64(0)
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("get_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UndoRedo) set_max_steps(max_steps i64) {
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("set_max_steps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_steps)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UndoRedo) get_max_steps() i64 {
	mut result := i64(0)
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("get_max_steps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UndoRedo) redo() bool {
	mut result := false
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("redo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UndoRedo) undo() bool {
	mut result := false
	classname := StringName.new("UndoRedo")
	fnname := StringName.new("undo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
