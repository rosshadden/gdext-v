module gd

pub struct Sprite3D {
	SpriteBase3D
}

pub fn (s &Sprite3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Sprite3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Sprite3D) set_texture(texture Texture2D) {
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("set_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Sprite3D) get_texture() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("get_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Sprite3D) set_region_enabled(enabled bool) {
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("set_region_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Sprite3D) is_region_enabled() bool {
	mut result := false
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("is_region_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Sprite3D) set_region_rect(rect Rect2) {
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("set_region_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Sprite3D) get_region_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("get_region_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Sprite3D) set_frame(frame i64) {
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("set_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&frame)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Sprite3D) get_frame() i64 {
	mut result := i64(0)
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("get_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Sprite3D) set_frame_coords(coords Vector2i) {
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("set_frame_coords")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Sprite3D) get_frame_coords() Vector2i {
	mut result := Vector2i{}
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("get_frame_coords")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Sprite3D) set_vframes(vframes i64) {
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("set_vframes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vframes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Sprite3D) get_vframes() i64 {
	mut result := i64(0)
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("get_vframes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Sprite3D) set_hframes(hframes i64) {
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("set_hframes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&hframes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Sprite3D) get_hframes() i64 {
	mut result := i64(0)
	classname := StringName.new("Sprite3D")
	fnname := StringName.new("get_hframes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
