module gd

pub enum VisualShaderNodeTextureParameterTextureType as i64 {
	type_data = 0
	type_color = 1
	type_normal_map = 2
	type_anisotropy = 3
	type_max = 4
}

pub enum VisualShaderNodeTextureParameterColorDefault as i64 {
	color_default_white = 0
	color_default_black = 1
	color_default_transparent = 2
	color_default_max = 3
}

pub enum VisualShaderNodeTextureParameterTextureFilter as i64 {
	filter_default = 0
	filter_nearest = 1
	filter_linear = 2
	filter_nearest_mipmap = 3
	filter_linear_mipmap = 4
	filter_nearest_mipmap_anisotropic = 5
	filter_linear_mipmap_anisotropic = 6
	filter_max = 7
}

pub enum VisualShaderNodeTextureParameterTextureRepeat as i64 {
	repeat_default = 0
	repeat_enabled = 1
	repeat_disabled = 2
	repeat_max = 3
}

pub enum VisualShaderNodeTextureParameterTextureSource as i64 {
	source_none = 0
	source_screen = 1
	source_depth = 2
	source_normal_roughness = 3
	source_max = 4
}

pub struct VisualShaderNodeTextureParameter {
	VisualShaderNodeParameter
}

pub fn (s &VisualShaderNodeTextureParameter) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeTextureParameter) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeTextureParameter) set_texture_type(gd_type VisualShaderNodeTextureParameterTextureType) {
	classname := StringName.new("VisualShaderNodeTextureParameter")
	fnname := StringName.new("set_texture_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2227296876)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeTextureParameter) get_texture_type() VisualShaderNodeTextureParameterTextureType {
	mut result := i64(VisualShaderNodeTextureParameterTextureType.type_data)
	classname := StringName.new("VisualShaderNodeTextureParameter")
	fnname := StringName.new("get_texture_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 367922070)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeTextureParameterTextureType(result)}
}

pub fn (s &VisualShaderNodeTextureParameter) set_color_default(color VisualShaderNodeTextureParameterColorDefault) {
	classname := StringName.new("VisualShaderNodeTextureParameter")
	fnname := StringName.new("set_color_default")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4217624432)
	mut args := unsafe { [1]voidptr{} }
	i64_color := i64(color)
	args[0] = unsafe{voidptr(&i64_color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeTextureParameter) get_color_default() VisualShaderNodeTextureParameterColorDefault {
	mut result := i64(VisualShaderNodeTextureParameterColorDefault.color_default_white)
	classname := StringName.new("VisualShaderNodeTextureParameter")
	fnname := StringName.new("get_color_default")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3837060134)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeTextureParameterColorDefault(result)}
}

pub fn (s &VisualShaderNodeTextureParameter) set_texture_filter(filter VisualShaderNodeTextureParameterTextureFilter) {
	classname := StringName.new("VisualShaderNodeTextureParameter")
	fnname := StringName.new("set_texture_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2147684752)
	mut args := unsafe { [1]voidptr{} }
	i64_filter := i64(filter)
	args[0] = unsafe{voidptr(&i64_filter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeTextureParameter) get_texture_filter() VisualShaderNodeTextureParameterTextureFilter {
	mut result := i64(VisualShaderNodeTextureParameterTextureFilter.filter_default)
	classname := StringName.new("VisualShaderNodeTextureParameter")
	fnname := StringName.new("get_texture_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4184490817)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeTextureParameterTextureFilter(result)}
}

pub fn (s &VisualShaderNodeTextureParameter) set_texture_repeat(repeat VisualShaderNodeTextureParameterTextureRepeat) {
	classname := StringName.new("VisualShaderNodeTextureParameter")
	fnname := StringName.new("set_texture_repeat")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2036143070)
	mut args := unsafe { [1]voidptr{} }
	i64_repeat := i64(repeat)
	args[0] = unsafe{voidptr(&i64_repeat)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeTextureParameter) get_texture_repeat() VisualShaderNodeTextureParameterTextureRepeat {
	mut result := i64(VisualShaderNodeTextureParameterTextureRepeat.repeat_default)
	classname := StringName.new("VisualShaderNodeTextureParameter")
	fnname := StringName.new("get_texture_repeat")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1690132794)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeTextureParameterTextureRepeat(result)}
}

pub fn (s &VisualShaderNodeTextureParameter) set_texture_source(source VisualShaderNodeTextureParameterTextureSource) {
	classname := StringName.new("VisualShaderNodeTextureParameter")
	fnname := StringName.new("set_texture_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1212687372)
	mut args := unsafe { [1]voidptr{} }
	i64_source := i64(source)
	args[0] = unsafe{voidptr(&i64_source)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeTextureParameter) get_texture_source() VisualShaderNodeTextureParameterTextureSource {
	mut result := i64(VisualShaderNodeTextureParameterTextureSource.source_none)
	classname := StringName.new("VisualShaderNodeTextureParameter")
	fnname := StringName.new("get_texture_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2039092262)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeTextureParameterTextureSource(result)}
}
