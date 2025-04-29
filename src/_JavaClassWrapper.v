module gd

pub struct JavaClassWrapper {
	Object
}

pub fn JavaClassWrapper.get_singleton() JavaClassWrapper {
	sn := StringName.new("JavaClassWrapper")
	result := JavaClassWrapper{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &JavaClassWrapper) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s JavaClassWrapper) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &JavaClassWrapper) wrap(name string) JavaClass {
	mut result := JavaClass{}
	classname := StringName.new("JavaClassWrapper")
	fnname := StringName.new("wrap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1124367868)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &JavaClassWrapper) get_exception() JavaObject {
	mut result := JavaObject{}
	classname := StringName.new("JavaClassWrapper")
	fnname := StringName.new("get_exception")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3277089691)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
