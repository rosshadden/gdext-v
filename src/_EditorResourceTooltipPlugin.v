module gd

pub struct EditorResourceTooltipPlugin {
	RefCounted
}

pub fn (s &EditorResourceTooltipPlugin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorResourceTooltipPlugin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorResourceTooltipPluginHandles {
mut:
	handles_(gd_type String) bool
}

pub fn (s &EditorResourceTooltipPlugin) gd_handles(gd_type string) bool {
	mut result := false
	classname := StringName.new("EditorResourceTooltipPlugin")
	fnname := StringName.new("_handles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorResourceTooltipPluginMakeTooltipForPath {
mut:
	make_tooltip_for_path_(path String, metadata Dictionary, base Control) Control
}

pub fn (s &EditorResourceTooltipPlugin) gd_make_tooltip_for_path(path string, metadata Dictionary, base Control) Control {
	mut result := Control{}
	classname := StringName.new("EditorResourceTooltipPlugin")
	fnname := StringName.new("_make_tooltip_for_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4100114520)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&metadata)}
	args[2] = voidptr(&base.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &EditorResourceTooltipPlugin) request_thumbnail(path string, control TextureRect) {
	classname := StringName.new("EditorResourceTooltipPlugin")
	fnname := StringName.new("request_thumbnail")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3245519720)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&control.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
