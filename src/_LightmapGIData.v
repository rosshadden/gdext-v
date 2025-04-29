module gd

pub enum LightmapGIDataShadowmaskMode as i64 {
	shadowmask_mode_none = 0
	shadowmask_mode_replace = 1
	shadowmask_mode_overlay = 2
}

pub struct LightmapGIData {
	Resource
}

pub fn (s &LightmapGIData) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s LightmapGIData) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &LightmapGIData) set_lightmap_textures(light_textures Array) {
	classname := StringName.new("LightmapGIData")
	fnname := StringName.new("set_lightmap_textures")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&light_textures)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGIData) get_lightmap_textures() Array {
	mut result := Array{}
	classname := StringName.new("LightmapGIData")
	fnname := StringName.new("get_lightmap_textures")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGIData) set_shadowmask_textures(shadowmask_textures Array) {
	classname := StringName.new("LightmapGIData")
	fnname := StringName.new("set_shadowmask_textures")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&shadowmask_textures)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGIData) get_shadowmask_textures() Array {
	mut result := Array{}
	classname := StringName.new("LightmapGIData")
	fnname := StringName.new("get_shadowmask_textures")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGIData) set_uses_spherical_harmonics(uses_spherical_harmonics bool) {
	classname := StringName.new("LightmapGIData")
	fnname := StringName.new("set_uses_spherical_harmonics")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&uses_spherical_harmonics)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGIData) is_using_spherical_harmonics() bool {
	mut result := false
	classname := StringName.new("LightmapGIData")
	fnname := StringName.new("is_using_spherical_harmonics")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGIData) add_user(path NodePath, uv_scale Rect2, slice_index i64, sub_instance i64) {
	classname := StringName.new("LightmapGIData")
	fnname := StringName.new("add_user")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4272570515)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	args[1] = unsafe{voidptr(&uv_scale)}
	args[2] = unsafe{voidptr(&slice_index)}
	args[3] = unsafe{voidptr(&sub_instance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGIData) get_user_count() i64 {
	mut result := i64(0)
	classname := StringName.new("LightmapGIData")
	fnname := StringName.new("get_user_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGIData) get_user_path(user_idx i64) NodePath {
	mut result := NodePath{}
	classname := StringName.new("LightmapGIData")
	fnname := StringName.new("get_user_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&user_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &LightmapGIData) clear_users() {
	classname := StringName.new("LightmapGIData")
	fnname := StringName.new("clear_users")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGIData) set_light_texture(light_texture TextureLayered) {
	classname := StringName.new("LightmapGIData")
	fnname := StringName.new("set_light_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1278366092)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&light_texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &LightmapGIData) get_light_texture() TextureLayered {
	mut result := TextureLayered{}
	classname := StringName.new("LightmapGIData")
	fnname := StringName.new("get_light_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3984243839)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
