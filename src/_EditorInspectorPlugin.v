module gd

pub struct EditorInspectorPlugin {
	RefCounted
}

pub fn (s &EditorInspectorPlugin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorInspectorPlugin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorInspectorPluginCanHandle {
mut:
	can_handle_(object Object) bool
}

pub fn (s &EditorInspectorPlugin) gd_can_handle(object Object) bool {
	mut result := false
	classname := StringName.new("EditorInspectorPlugin")
	fnname := StringName.new("_can_handle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 397768994)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorInspectorPluginParseBegin {
mut:
	parse_begin_(object Object)
}

pub fn (s &EditorInspectorPlugin) gd_parse_begin(object Object) {
	classname := StringName.new("EditorInspectorPlugin")
	fnname := StringName.new("_parse_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorInspectorPluginParseCategory {
mut:
	parse_category_(object Object, category String)
}

pub fn (s &EditorInspectorPlugin) gd_parse_category(object Object, category string) {
	classname := StringName.new("EditorInspectorPlugin")
	fnname := StringName.new("_parse_category")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 357144787)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&object.ptr)
	arg_sn1 := String.new(category)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorInspectorPluginParseGroup {
mut:
	parse_group_(object Object, group String)
}

pub fn (s &EditorInspectorPlugin) gd_parse_group(object Object, group string) {
	classname := StringName.new("EditorInspectorPlugin")
	fnname := StringName.new("_parse_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 357144787)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&object.ptr)
	arg_sn1 := String.new(group)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub interface IEditorInspectorPluginParseProperty {
mut:
	parse_property_(object Object, gd_type VariantType, name String, hint_type PropertyHint, hint_string String, usage_flags PropertyUsageFlags, wide bool) bool
}

pub fn (s &EditorInspectorPlugin) gd_parse_property(object Object, gd_type VariantType, name string, hint_type PropertyHint, hint_string string, usage_flags PropertyUsageFlags, wide bool) bool {
	mut result := false
	classname := StringName.new("EditorInspectorPlugin")
	fnname := StringName.new("_parse_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1087679910)
	mut args := unsafe { [7]voidptr{} }
	args[0] = voidptr(&object.ptr)
	i64_gd_type := i64(gd_type)
	args[1] = unsafe{voidptr(&i64_gd_type)}
	arg_sn2 := String.new(name)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_hint_type := i64(hint_type)
	args[3] = unsafe{voidptr(&i64_hint_type)}
	arg_sn4 := String.new(hint_string)
	args[4] = unsafe{voidptr(&arg_sn4)}
	i64_usage_flags := i64(usage_flags)
	args[5] = unsafe{voidptr(&i64_usage_flags)}
	args[6] = unsafe{voidptr(&wide)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	arg_sn4.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorInspectorPluginParseEnd {
mut:
	parse_end_(object Object)
}

pub fn (s &EditorInspectorPlugin) gd_parse_end(object Object) {
	classname := StringName.new("EditorInspectorPlugin")
	fnname := StringName.new("_parse_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInspectorPlugin) add_custom_control(control Control) {
	classname := StringName.new("EditorInspectorPlugin")
	fnname := StringName.new("add_custom_control")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct EditorInspectorPlugin_add_property_editor_Cfg {
pub:
	add_to_end bool
	label string
}

pub fn (s &EditorInspectorPlugin) add_property_editor(property string, editor Control, cfg EditorInspectorPlugin_add_property_editor_Cfg) {
	classname := StringName.new("EditorInspectorPlugin")
	fnname := StringName.new("add_property_editor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2042698479)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&editor.ptr)
	args[2] = unsafe{voidptr(&cfg.add_to_end)}
	arg_sn3 := String.new(cfg.label)
	args[3] = unsafe{voidptr(&arg_sn3)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInspectorPlugin) add_property_editor_for_multiple_properties(label string, properties PackedStringArray, editor Control) {
	classname := StringName.new("EditorInspectorPlugin")
	fnname := StringName.new("add_property_editor_for_multiple_properties")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 788598683)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(label)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&properties)}
	args[2] = voidptr(&editor.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
