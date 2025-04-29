module gd

pub struct AcceptDialog {
	Window
}

pub fn (s &AcceptDialog) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AcceptDialog) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AcceptDialog) get_ok_button() Button {
	mut result := Button{}
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("get_ok_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1856205918)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AcceptDialog) get_label() Label {
	mut result := Label{}
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("get_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 566733104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AcceptDialog) set_hide_on_ok(enabled bool) {
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("set_hide_on_ok")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AcceptDialog) get_hide_on_ok() bool {
	mut result := false
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("get_hide_on_ok")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AcceptDialog) set_close_on_escape(enabled bool) {
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("set_close_on_escape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AcceptDialog) get_close_on_escape() bool {
	mut result := false
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("get_close_on_escape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AcceptDialog_add_button_Cfg {
pub:
	right bool
	action string
}

pub fn (s &AcceptDialog) add_button(text string, cfg AcceptDialog_add_button_Cfg) Button {
	mut result := Button{}
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("add_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3328440682)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.right)}
	arg_sn2 := String.new(cfg.action)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AcceptDialog) add_cancel_button(name string) Button {
	mut result := Button{}
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("add_cancel_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 242045556)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AcceptDialog) remove_button(button Button) {
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("remove_button")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2068354942)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&button.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AcceptDialog) register_text_enter(line_edit LineEdit) {
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("register_text_enter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3714008017)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&line_edit.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AcceptDialog) set_text(text string) {
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("set_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AcceptDialog) get_text() string {
	mut result := String{}
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("get_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AcceptDialog) set_autowrap(autowrap bool) {
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("set_autowrap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&autowrap)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AcceptDialog) has_autowrap() bool {
	mut result := false
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("has_autowrap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AcceptDialog) set_ok_button_text(text string) {
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("set_ok_button_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AcceptDialog) get_ok_button_text() string {
	mut result := String{}
	classname := StringName.new("AcceptDialog")
	fnname := StringName.new("get_ok_button_text")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
