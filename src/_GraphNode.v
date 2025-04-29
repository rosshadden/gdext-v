module gd

pub struct GraphNode {
	GraphElement
}

pub fn (s &GraphNode) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GraphNode) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IGraphNodeDrawPort {
mut:
	draw_port_(slot_index i64, position Vector2i, left bool, color Color)
}

pub fn (s &GraphNode) gd_draw_port(slot_index i64, position Vector2i, left bool, color Color) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("_draw_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 93366828)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	args[1] = unsafe{voidptr(&position)}
	args[2] = unsafe{voidptr(&left)}
	args[3] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) set_title(title string) {
	classname := StringName.new("GraphNode")
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

pub fn (s &GraphNode) get_title() string {
	mut result := String{}
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GraphNode) get_titlebar_hbox() HBoxContainer {
	mut result := HBoxContainer{}
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_titlebar_hbox")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3590609951)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct GraphNode_set_slot_Cfg {
pub:
	custom_icon_left Texture2D
	custom_icon_right Texture2D
	draw_stylebox bool
}

pub fn (s &GraphNode) set_slot(slot_index i64, enable_left_port bool, type_left i64, color_left Color, enable_right_port bool, type_right i64, color_right Color, cfg GraphNode_set_slot_Cfg) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("set_slot")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2873310869)
	mut args := unsafe { [10]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	args[1] = unsafe{voidptr(&enable_left_port)}
	args[2] = unsafe{voidptr(&type_left)}
	args[3] = unsafe{voidptr(&color_left)}
	args[4] = unsafe{voidptr(&enable_right_port)}
	args[5] = unsafe{voidptr(&type_right)}
	args[6] = unsafe{voidptr(&color_right)}
	args[7] = voidptr(&cfg.custom_icon_left.ptr)
	args[8] = voidptr(&cfg.custom_icon_right.ptr)
	args[9] = unsafe{voidptr(&cfg.draw_stylebox)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) clear_slot(slot_index i64) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("clear_slot")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) clear_all_slots() {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("clear_all_slots")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) is_slot_enabled_left(slot_index i64) bool {
	mut result := false
	classname := StringName.new("GraphNode")
	fnname := StringName.new("is_slot_enabled_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) set_slot_enabled_left(slot_index i64, enable bool) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("set_slot_enabled_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) set_slot_type_left(slot_index i64, gd_type i64) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("set_slot_type_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	args[1] = unsafe{voidptr(&gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) get_slot_type_left(slot_index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_slot_type_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) set_slot_color_left(slot_index i64, color Color) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("set_slot_color_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	args[1] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) get_slot_color_left(slot_index i64) Color {
	mut result := Color{}
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_slot_color_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) set_slot_custom_icon_left(slot_index i64, custom_icon Texture2D) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("set_slot_custom_icon_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	args[1] = voidptr(&custom_icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) get_slot_custom_icon_left(slot_index i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_slot_custom_icon_left")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) is_slot_enabled_right(slot_index i64) bool {
	mut result := false
	classname := StringName.new("GraphNode")
	fnname := StringName.new("is_slot_enabled_right")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) set_slot_enabled_right(slot_index i64, enable bool) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("set_slot_enabled_right")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) set_slot_type_right(slot_index i64, gd_type i64) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("set_slot_type_right")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	args[1] = unsafe{voidptr(&gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) get_slot_type_right(slot_index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_slot_type_right")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) set_slot_color_right(slot_index i64, color Color) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("set_slot_color_right")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	args[1] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) get_slot_color_right(slot_index i64) Color {
	mut result := Color{}
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_slot_color_right")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) set_slot_custom_icon_right(slot_index i64, custom_icon Texture2D) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("set_slot_custom_icon_right")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	args[1] = voidptr(&custom_icon.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) get_slot_custom_icon_right(slot_index i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_slot_custom_icon_right")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) is_slot_draw_stylebox(slot_index i64) bool {
	mut result := false
	classname := StringName.new("GraphNode")
	fnname := StringName.new("is_slot_draw_stylebox")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) set_slot_draw_stylebox(slot_index i64, enable bool) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("set_slot_draw_stylebox")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&slot_index)}
	args[1] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) set_ignore_invalid_connection_type(ignore bool) {
	classname := StringName.new("GraphNode")
	fnname := StringName.new("set_ignore_invalid_connection_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ignore)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GraphNode) is_ignoring_valid_connection_type() bool {
	mut result := false
	classname := StringName.new("GraphNode")
	fnname := StringName.new("is_ignoring_valid_connection_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) get_input_port_count() i64 {
	mut result := i64(0)
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_input_port_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) get_input_port_position(port_idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_input_port_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3114997196)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) get_input_port_type(port_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_input_port_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) get_input_port_color(port_idx i64) Color {
	mut result := Color{}
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_input_port_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2624840992)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) get_input_port_slot(port_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_input_port_slot")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) get_output_port_count() i64 {
	mut result := i64(0)
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_output_port_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) get_output_port_position(port_idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_output_port_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3114997196)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) get_output_port_type(port_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_output_port_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) get_output_port_color(port_idx i64) Color {
	mut result := Color{}
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_output_port_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2624840992)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GraphNode) get_output_port_slot(port_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("GraphNode")
	fnname := StringName.new("get_output_port_slot")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
