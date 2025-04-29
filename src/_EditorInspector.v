module gd

pub struct EditorInspector {
	ScrollContainer
}

pub fn (s &EditorInspector) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorInspector) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &EditorInspector) edit(object Object) {
	classname := StringName.new("EditorInspector")
	fnname := StringName.new("edit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &EditorInspector) get_selected_path() string {
	mut result := String{}
	classname := StringName.new("EditorInspector")
	fnname := StringName.new("get_selected_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &EditorInspector) get_edited_object() Object {
	mut result := Object{}
	classname := StringName.new("EditorInspector")
	fnname := StringName.new("get_edited_object")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2050059866)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct EditorInspector_instantiate_property_editor_Cfg {
pub:
	wide bool
}

pub fn EditorInspector.instantiate_property_editor(object Object, gd_type VariantType, path string, hint PropertyHint, hint_text string, usage i64, cfg EditorInspector_instantiate_property_editor_Cfg) EditorProperty {
	mut result := EditorProperty{}
	classname := StringName.new("EditorInspector")
	fnname := StringName.new("instantiate_property_editor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1429914152)
	mut args := unsafe { [7]voidptr{} }
	args[0] = voidptr(&object.ptr)
	i64_gd_type := i64(gd_type)
	args[1] = unsafe{voidptr(&i64_gd_type)}
	arg_sn2 := String.new(path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	i64_hint := i64(hint)
	args[3] = unsafe{voidptr(&i64_hint)}
	arg_sn4 := String.new(hint_text)
	args[4] = unsafe{voidptr(&arg_sn4)}
	args[5] = unsafe{voidptr(&usage)}
	args[6] = unsafe{voidptr(&cfg.wide)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	arg_sn4.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
