module gd

pub struct GLTFAnimation {
	Resource
}

pub fn (s &GLTFAnimation) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFAnimation) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GLTFAnimation) get_original_name() string {
	mut result := String{}
	classname := StringName.new("GLTFAnimation")
	fnname := StringName.new("get_original_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GLTFAnimation) set_original_name(original_name string) {
	classname := StringName.new("GLTFAnimation")
	fnname := StringName.new("set_original_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(original_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAnimation) get_loop() bool {
	mut result := false
	classname := StringName.new("GLTFAnimation")
	fnname := StringName.new("get_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAnimation) set_loop(loop bool) {
	classname := StringName.new("GLTFAnimation")
	fnname := StringName.new("set_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&loop)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFAnimation) get_additional_data(extension_name string) Variant {
	mut result := Variant{}
	classname := StringName.new("GLTFAnimation")
	fnname := StringName.new("get_additional_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(extension_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFAnimation) set_additional_data(extension_name string, additional_data Variant) {
	classname := StringName.new("GLTFAnimation")
	fnname := StringName.new("set_additional_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(extension_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&additional_data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
