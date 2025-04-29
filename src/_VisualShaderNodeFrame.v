module gd

pub struct VisualShaderNodeFrame {
	VisualShaderNodeResizableBase
}

pub fn (s &VisualShaderNodeFrame) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeFrame) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeFrame) set_title(title string) {
	classname := StringName.new("VisualShaderNodeFrame")
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

pub fn (s &VisualShaderNodeFrame) get_title() string {
	mut result := String{}
	classname := StringName.new("VisualShaderNodeFrame")
	fnname := StringName.new("get_title")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &VisualShaderNodeFrame) set_tint_color_enabled(enable bool) {
	classname := StringName.new("VisualShaderNodeFrame")
	fnname := StringName.new("set_tint_color_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFrame) is_tint_color_enabled() bool {
	mut result := false
	classname := StringName.new("VisualShaderNodeFrame")
	fnname := StringName.new("is_tint_color_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeFrame) set_tint_color(color Color) {
	classname := StringName.new("VisualShaderNodeFrame")
	fnname := StringName.new("set_tint_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFrame) get_tint_color() Color {
	mut result := Color{}
	classname := StringName.new("VisualShaderNodeFrame")
	fnname := StringName.new("get_tint_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeFrame) set_autoshrink_enabled(enable bool) {
	classname := StringName.new("VisualShaderNodeFrame")
	fnname := StringName.new("set_autoshrink_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFrame) is_autoshrink_enabled() bool {
	mut result := false
	classname := StringName.new("VisualShaderNodeFrame")
	fnname := StringName.new("is_autoshrink_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualShaderNodeFrame) add_attached_node(node i64) {
	classname := StringName.new("VisualShaderNodeFrame")
	fnname := StringName.new("add_attached_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&node)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFrame) remove_attached_node(node i64) {
	classname := StringName.new("VisualShaderNodeFrame")
	fnname := StringName.new("remove_attached_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&node)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFrame) set_attached_nodes(attached_nodes PackedInt32Array) {
	classname := StringName.new("VisualShaderNodeFrame")
	fnname := StringName.new("set_attached_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&attached_nodes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeFrame) get_attached_nodes() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("VisualShaderNodeFrame")
	fnname := StringName.new("get_attached_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
