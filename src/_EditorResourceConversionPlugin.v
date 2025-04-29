module gd

pub struct EditorResourceConversionPlugin {
	RefCounted
}

pub fn (s &EditorResourceConversionPlugin) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s EditorResourceConversionPlugin) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IEditorResourceConversionPluginConvertsTo {
mut:
	converts_to_() String
}

pub fn (s &EditorResourceConversionPlugin) gd_converts_to() string {
	mut result := String{}
	classname := StringName.new("EditorResourceConversionPlugin")
	fnname := StringName.new("_converts_to")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IEditorResourceConversionPluginHandles {
mut:
	handles_(resource Resource) bool
}

pub fn (s &EditorResourceConversionPlugin) gd_handles(resource Resource) bool {
	mut result := false
	classname := StringName.new("EditorResourceConversionPlugin")
	fnname := StringName.new("_handles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3190994482)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&resource.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IEditorResourceConversionPluginConvert {
mut:
	convert_(resource Resource) Resource
}

pub fn (s &EditorResourceConversionPlugin) gd_convert(resource Resource) Resource {
	mut result := Resource{}
	classname := StringName.new("EditorResourceConversionPlugin")
	fnname := StringName.new("_convert")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 325183270)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&resource.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
