module gd

pub enum GDExtensionInitializationLevel as i64 {
	initialization_level_core = 0
	initialization_level_servers = 1
	initialization_level_scene = 2
	initialization_level_editor = 3
}

pub struct GDExtension {
	Resource
}

pub fn (s &GDExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GDExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GDExtension) is_library_open() bool {
	mut result := false
	classname := StringName.new("GDExtension")
	fnname := StringName.new("is_library_open")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GDExtension) get_minimum_library_initialization_level() GDExtensionInitializationLevel {
	mut result := i64(GDExtensionInitializationLevel.initialization_level_core)
	classname := StringName.new("GDExtension")
	fnname := StringName.new("get_minimum_library_initialization_level")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 964858755)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDExtensionInitializationLevel(result)}
}
