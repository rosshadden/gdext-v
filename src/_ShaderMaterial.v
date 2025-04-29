module gd

pub struct ShaderMaterial {
	Material
}

pub fn (s &ShaderMaterial) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ShaderMaterial) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ShaderMaterial) set_shader(shader Shader) {
	classname := StringName.new("ShaderMaterial")
	fnname := StringName.new("set_shader")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341921675)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&shader.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ShaderMaterial) get_shader() Shader {
	mut result := Shader{}
	classname := StringName.new("ShaderMaterial")
	fnname := StringName.new("get_shader")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2078273437)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ShaderMaterial) set_shader_parameter(param string, value Variant) {
	classname := StringName.new("ShaderMaterial")
	fnname := StringName.new("set_shader_parameter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(param)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ShaderMaterial) get_shader_parameter(param string) Variant {
	mut result := Variant{}
	classname := StringName.new("ShaderMaterial")
	fnname := StringName.new("get_shader_parameter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(param)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}
