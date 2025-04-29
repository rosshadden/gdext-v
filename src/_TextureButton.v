module gd

pub enum TextureButtonStretchMode as i64 {
	stretch_scale = 0
	stretch_tile = 1
	stretch_keep = 2
	stretch_keep_centered = 3
	stretch_keep_aspect = 4
	stretch_keep_aspect_centered = 5
	stretch_keep_aspect_covered = 6
}

pub struct TextureButton {
	BaseButton
}

pub fn (s &TextureButton) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TextureButton) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TextureButton) set_texture_normal(texture Texture2D) {
	classname := StringName.new("TextureButton")
	fnname := StringName.new("set_texture_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextureButton) set_texture_pressed(texture Texture2D) {
	classname := StringName.new("TextureButton")
	fnname := StringName.new("set_texture_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextureButton) set_texture_hover(texture Texture2D) {
	classname := StringName.new("TextureButton")
	fnname := StringName.new("set_texture_hover")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextureButton) set_texture_disabled(texture Texture2D) {
	classname := StringName.new("TextureButton")
	fnname := StringName.new("set_texture_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextureButton) set_texture_focused(texture Texture2D) {
	classname := StringName.new("TextureButton")
	fnname := StringName.new("set_texture_focused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextureButton) set_click_mask(mask BitMap) {
	classname := StringName.new("TextureButton")
	fnname := StringName.new("set_click_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 698588216)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&mask.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextureButton) set_ignore_texture_size(ignore bool) {
	classname := StringName.new("TextureButton")
	fnname := StringName.new("set_ignore_texture_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ignore)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextureButton) set_stretch_mode(mode TextureButtonStretchMode) {
	classname := StringName.new("TextureButton")
	fnname := StringName.new("set_stretch_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 252530840)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextureButton) set_flip_h(enable bool) {
	classname := StringName.new("TextureButton")
	fnname := StringName.new("set_flip_h")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextureButton) is_flipped_h() bool {
	mut result := false
	classname := StringName.new("TextureButton")
	fnname := StringName.new("is_flipped_h")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureButton) set_flip_v(enable bool) {
	classname := StringName.new("TextureButton")
	fnname := StringName.new("set_flip_v")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextureButton) is_flipped_v() bool {
	mut result := false
	classname := StringName.new("TextureButton")
	fnname := StringName.new("is_flipped_v")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureButton) get_texture_normal() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TextureButton")
	fnname := StringName.new("get_texture_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureButton) get_texture_pressed() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TextureButton")
	fnname := StringName.new("get_texture_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureButton) get_texture_hover() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TextureButton")
	fnname := StringName.new("get_texture_hover")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureButton) get_texture_disabled() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TextureButton")
	fnname := StringName.new("get_texture_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureButton) get_texture_focused() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TextureButton")
	fnname := StringName.new("get_texture_focused")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureButton) get_click_mask() BitMap {
	mut result := BitMap{}
	classname := StringName.new("TextureButton")
	fnname := StringName.new("get_click_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2459671998)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureButton) get_ignore_texture_size() bool {
	mut result := false
	classname := StringName.new("TextureButton")
	fnname := StringName.new("get_ignore_texture_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextureButton) get_stretch_mode() TextureButtonStretchMode {
	mut result := i64(TextureButtonStretchMode.stretch_scale)
	classname := StringName.new("TextureButton")
	fnname := StringName.new("get_stretch_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 33815122)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TextureButtonStretchMode(result)}
}
