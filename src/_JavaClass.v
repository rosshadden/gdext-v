module gd

pub struct JavaClass {
	RefCounted
}

pub fn (s &JavaClass) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s JavaClass) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &JavaClass) get_java_class_name() string {
	mut result := String{}
	classname := StringName.new("JavaClass")
	fnname := StringName.new("get_java_class_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &JavaClass) get_java_method_list() Array {
	mut result := Array{}
	classname := StringName.new("JavaClass")
	fnname := StringName.new("get_java_method_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JavaClass) get_java_parent_class() JavaClass {
	mut result := JavaClass{}
	classname := StringName.new("JavaClass")
	fnname := StringName.new("get_java_parent_class")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 541536347)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
