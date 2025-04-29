module gd

pub enum EditorUndoRedoManagerSpecialHistory as i64 {
	global_history = 0
	remote_history = -9
	invalid_history = -99
}

pub struct EditorUndoRedoManager {
	Object
}

pub fn (s &EditorUndoRedoManager) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorUndoRedoManager) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct EditorUndoRedoManager_create_action_Cfg {
pub:
	merge_mode UndoRedoMergeMode
	custom_context Object
	backward_undo_ops bool
}

pub fn (s &EditorUndoRedoManager) create_action(name string, cfg EditorUndoRedoManager_create_action_Cfg) {
	classname := StringName.new("EditorUndoRedoManager")
	fnname := StringName.new("create_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2107025470)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_merge_mode := i64(cfg.merge_mode)
	args[1] = unsafe{voidptr(&i64_merge_mode)}
	args[2] = voidptr(&cfg.custom_context.ptr)
	args[3] = unsafe{voidptr(&cfg.backward_undo_ops)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorUndoRedoManager_commit_action_Cfg {
pub:
	execute bool
}

pub fn (s &EditorUndoRedoManager) commit_action(cfg EditorUndoRedoManager_commit_action_Cfg) {
	classname := StringName.new("EditorUndoRedoManager")
	fnname := StringName.new("commit_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.execute)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorUndoRedoManager) is_committing_action() bool {
	mut result := false
	classname := StringName.new("EditorUndoRedoManager")
	fnname := StringName.new("is_committing_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorUndoRedoManager) force_fixed_history() {
	classname := StringName.new("EditorUndoRedoManager")
	fnname := StringName.new("force_fixed_history")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorUndoRedoManager) add_do_method(object Object, method string) {
	classname := StringName.new("EditorUndoRedoManager")
	fnname := StringName.new("add_do_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1517810467)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&object.ptr)
	arg_sn1 := StringName.new(method)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorUndoRedoManager) add_undo_method(object Object, method string) {
	classname := StringName.new("EditorUndoRedoManager")
	fnname := StringName.new("add_undo_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1517810467)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&object.ptr)
	arg_sn1 := StringName.new(method)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorUndoRedoManager) add_do_property(object Object, property string, value Variant) {
	classname := StringName.new("EditorUndoRedoManager")
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

pub fn (s &EditorUndoRedoManager) add_undo_property(object Object, property string, value Variant) {
	classname := StringName.new("EditorUndoRedoManager")
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

pub fn (s &EditorUndoRedoManager) add_do_reference(object Object) {
	classname := StringName.new("EditorUndoRedoManager")
	fnname := StringName.new("add_do_reference")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorUndoRedoManager) add_undo_reference(object Object) {
	classname := StringName.new("EditorUndoRedoManager")
	fnname := StringName.new("add_undo_reference")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorUndoRedoManager) get_object_history_id(object Object) i64 {
	mut result := i64(0)
	classname := StringName.new("EditorUndoRedoManager")
	fnname := StringName.new("get_object_history_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1107568780)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorUndoRedoManager) get_history_undo_redo(id i64) UndoRedo {
	mut result := UndoRedo{}
	classname := StringName.new("EditorUndoRedoManager")
	fnname := StringName.new("get_history_undo_redo")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2417974513)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct EditorUndoRedoManager_clear_history_Cfg {
pub:
	id i64
	increase_version bool
}

pub fn (s &EditorUndoRedoManager) clear_history(cfg EditorUndoRedoManager_clear_history_Cfg) {
	classname := StringName.new("EditorUndoRedoManager")
	fnname := StringName.new("clear_history")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2020603371)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.id)}
	args[1] = unsafe{voidptr(&cfg.increase_version)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
