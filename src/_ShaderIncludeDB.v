module gd

pub struct ShaderIncludeDB {
	Object
}

pub fn (s &ShaderIncludeDB) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ShaderIncludeDB) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn ShaderIncludeDB.list_built_in_include_files() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("ShaderIncludeDB")
	fnname := StringName.new("list_built_in_include_files")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn ShaderIncludeDB.has_built_in_include_file(filename string) bool {
	mut result := false
	classname := StringName.new("ShaderIncludeDB")
	fnname := StringName.new("has_built_in_include_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(filename)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn ShaderIncludeDB.get_built_in_include_file(filename string) string {
	mut result := String{}
	classname := StringName.new("ShaderIncludeDB")
	fnname := StringName.new("get_built_in_include_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(filename)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
