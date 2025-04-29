module gd

pub struct CanvasTexture {
	Texture2D
}

pub fn (s &CanvasTexture) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CanvasTexture) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CanvasTexture) set_diffuse_texture(texture Texture2D) {
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("set_diffuse_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasTexture) get_diffuse_texture() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("get_diffuse_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CanvasTexture) set_normal_texture(texture Texture2D) {
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("set_normal_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasTexture) get_normal_texture() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("get_normal_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CanvasTexture) set_specular_texture(texture Texture2D) {
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("set_specular_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasTexture) get_specular_texture() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("get_specular_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CanvasTexture) set_specular_color(color Color) {
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("set_specular_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasTexture) get_specular_color() Color {
	mut result := Color{}
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("get_specular_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CanvasTexture) set_specular_shininess(shininess f64) {
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("set_specular_shininess")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shininess)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasTexture) get_specular_shininess() f64 {
	mut result := f64(0)
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("get_specular_shininess")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CanvasTexture) set_texture_filter(filter CanvasItemTextureFilter) {
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("set_texture_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1037999706)
	mut args := unsafe { [1]voidptr{} }
	i64_filter := i64(filter)
	args[0] = unsafe{voidptr(&i64_filter)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasTexture) get_texture_filter() CanvasItemTextureFilter {
	mut result := i64(CanvasItemTextureFilter.texture_filter_parent_node)
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("get_texture_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 121960042)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{CanvasItemTextureFilter(result)}
}

pub fn (s &CanvasTexture) set_texture_repeat(repeat CanvasItemTextureRepeat) {
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("set_texture_repeat")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1716472974)
	mut args := unsafe { [1]voidptr{} }
	i64_repeat := i64(repeat)
	args[0] = unsafe{voidptr(&i64_repeat)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasTexture) get_texture_repeat() CanvasItemTextureRepeat {
	mut result := i64(CanvasItemTextureRepeat.texture_repeat_parent_node)
	classname := StringName.new("CanvasTexture")
	fnname := StringName.new("get_texture_repeat")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2667158319)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{CanvasItemTextureRepeat(result)}
}
