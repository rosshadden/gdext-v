module gd

pub struct EditorProperty {
	Container
}

pub fn (s &EditorProperty) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorProperty) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorPropertyUpdateProperty {
mut:
	update_property_()
}

pub fn (s &EditorProperty) gd_update_property() {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("_update_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorPropertySetReadOnly {
mut:
	set_read_only_(read_only bool)
}

pub fn (s &EditorProperty) gd_set_read_only(read_only bool) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("_set_read_only")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&read_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) set_label(text string) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) get_label() string {
	mut result := String{}
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("get_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorProperty) set_read_only(read_only bool) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_read_only")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&read_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) is_read_only() bool {
	mut result := false
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("is_read_only")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorProperty) set_draw_label(draw_label bool) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_draw_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&draw_label)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) is_draw_label() bool {
	mut result := false
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("is_draw_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorProperty) set_draw_background(draw_background bool) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_draw_background")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&draw_background)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) is_draw_background() bool {
	mut result := false
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("is_draw_background")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorProperty) set_checkable(checkable bool) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&checkable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) is_checkable() bool {
	mut result := false
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("is_checkable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorProperty) set_checked(checked bool) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_checked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&checked)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) is_checked() bool {
	mut result := false
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("is_checked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorProperty) set_draw_warning(draw_warning bool) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_draw_warning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&draw_warning)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) is_draw_warning() bool {
	mut result := false
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("is_draw_warning")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorProperty) set_keying(keying bool) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_keying")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&keying)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) is_keying() bool {
	mut result := false
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("is_keying")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorProperty) set_deletable(deletable bool) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_deletable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&deletable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) is_deletable() bool {
	mut result := false
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("is_deletable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorProperty) get_edited_property() string {
	mut result := StringName{}
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("get_edited_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorProperty) get_edited_object() Object {
	mut result := Object{}
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("get_edited_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2050059866)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorProperty) update_property() {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("update_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) add_focusable(control Control) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("add_focusable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) set_bottom_editor(editor Control) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_bottom_editor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&editor.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) set_selectable(selectable bool) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_selectable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&selectable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) is_selectable() bool {
	mut result := false
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("is_selectable")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorProperty) set_use_folding(use_folding bool) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_use_folding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_folding)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) is_using_folding() bool {
	mut result := false
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("is_using_folding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorProperty) set_name_split_ratio(ratio f64) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_name_split_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) get_name_split_ratio() f64 {
	mut result := f64(0)
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("get_name_split_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorProperty) deselect() {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("deselect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) is_selected() bool {
	mut result := false
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("is_selected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct EditorProperty_gd_select_Cfg {
pub:
	focusable i64
}

pub fn (s &EditorProperty) gd_select(cfg EditorProperty_gd_select_Cfg) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("select")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.focusable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) set_object_and_property(object Object, property string) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_object_and_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4157606280)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&object.ptr)
	arg_sn1 := StringName.new(property)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorProperty) set_label_reference(control Control) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("set_label_reference")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorProperty_emit_changed_Cfg {
pub:
	field string
	changing bool
}

pub fn (s &EditorProperty) emit_changed(property string, value Variant, cfg EditorProperty_emit_changed_Cfg) {
	classname := StringName.new("EditorProperty")
	fnname := StringName.new("emit_changed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1822500399)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	arg_sn2 := StringName.new(cfg.field)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = unsafe{voidptr(&cfg.changing)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}
