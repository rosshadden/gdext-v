module gd

pub struct GraphFrame {
	GraphElement
}

pub fn (s &GraphFrame) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GraphFrame) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GraphFrame) set_title(title string) {
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("set_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(title)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphFrame) get_title() string {
	mut result := String{}
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("get_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GraphFrame) get_titlebar_hbox() HBoxContainer {
	mut result := HBoxContainer{}
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("get_titlebar_hbox")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3590609951)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphFrame) set_autoshrink_enabled(shrink bool) {
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("set_autoshrink_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shrink)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphFrame) is_autoshrink_enabled() bool {
	mut result := false
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("is_autoshrink_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphFrame) set_autoshrink_margin(autoshrink_margin i64) {
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("set_autoshrink_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&autoshrink_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphFrame) get_autoshrink_margin() i64 {
	mut result := i64(0)
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("get_autoshrink_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphFrame) set_drag_margin(drag_margin i64) {
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("set_drag_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&drag_margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphFrame) get_drag_margin() i64 {
	mut result := i64(0)
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("get_drag_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphFrame) set_tint_color_enabled(enable bool) {
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("set_tint_color_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphFrame) is_tint_color_enabled() bool {
	mut result := false
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("is_tint_color_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphFrame) set_tint_color(color Color) {
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("set_tint_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphFrame) get_tint_color() Color {
	mut result := Color{}
	classname := StringName.new("GraphFrame")
	fnname := StringName.new("get_tint_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
