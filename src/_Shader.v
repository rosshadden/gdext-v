module gd

pub enum ShaderMode as i64 {
	mode_spatial = 0
	mode_canvas_item = 1
	mode_particles = 2
	mode_sky = 3
	mode_fog = 4
}

pub struct Shader {
	Resource
}

pub fn (s &Shader) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Shader) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Shader) get_mode() ShaderMode {
	mut result := i64(ShaderMode.mode_spatial)
	classname := StringName.new("Shader")
	fnname := StringName.new("get_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3392948163)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{ShaderMode(result)}
}

pub fn (s &Shader) set_code(code string) {
	classname := StringName.new("Shader")
	fnname := StringName.new("set_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(code)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Shader) get_code() string {
	mut result := String{}
	classname := StringName.new("Shader")
	fnname := StringName.new("get_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct Shader_set_default_texture_parameter_Cfg {
pub:
	index i64
}

pub fn (s &Shader) set_default_texture_parameter(name string, texture Texture, cfg Shader_set_default_texture_parameter_Cfg) {
	classname := StringName.new("Shader")
	fnname := StringName.new("set_default_texture_parameter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3850209648)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&texture.ptr)
	args[2] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Shader_get_default_texture_parameter_Cfg {
pub:
	index i64
}

pub fn (s &Shader) get_default_texture_parameter(name string, cfg Shader_get_default_texture_parameter_Cfg) Texture {
	mut result := Texture{}
	classname := StringName.new("Shader")
	fnname := StringName.new("get_default_texture_parameter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4213877425)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Shader_get_shader_uniform_list_Cfg {
pub:
	get_groups bool
}

pub fn (s &Shader) get_shader_uniform_list(cfg Shader_get_shader_uniform_list_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("Shader")
	fnname := StringName.new("get_shader_uniform_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1230511656)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.get_groups)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Shader) inspect_native_shader_code() {
	classname := StringName.new("Shader")
	fnname := StringName.new("inspect_native_shader_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
