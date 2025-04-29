module gd

pub enum TouchScreenButtonVisibilityMode as i64 {
	visibility_always = 0
	visibility_touchscreen_only = 1
}

pub struct TouchScreenButton {
	Node2D
}

pub fn (s &TouchScreenButton) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TouchScreenButton) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TouchScreenButton) set_texture_normal(texture Texture2D) {
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("set_texture_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TouchScreenButton) get_texture_normal() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("get_texture_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TouchScreenButton) set_texture_pressed(texture Texture2D) {
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("set_texture_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TouchScreenButton) get_texture_pressed() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("get_texture_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TouchScreenButton) set_bitmask(bitmask BitMap) {
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("set_bitmask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 698588216)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&bitmask.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TouchScreenButton) get_bitmask() BitMap {
	mut result := BitMap{}
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("get_bitmask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2459671998)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TouchScreenButton) set_shape(shape Shape2D) {
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("set_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 771364740)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&shape.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TouchScreenButton) get_shape() Shape2D {
	mut result := Shape2D{}
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("get_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 522005891)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TouchScreenButton) set_shape_centered(gd_bool bool) {
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("set_shape_centered")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_bool)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TouchScreenButton) is_shape_centered() bool {
	mut result := false
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("is_shape_centered")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TouchScreenButton) set_shape_visible(gd_bool bool) {
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("set_shape_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&gd_bool)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TouchScreenButton) is_shape_visible() bool {
	mut result := false
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("is_shape_visible")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TouchScreenButton) set_action(action string) {
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("set_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(action)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TouchScreenButton) get_action() string {
	mut result := String{}
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("get_action")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &TouchScreenButton) set_visibility_mode(mode TouchScreenButtonVisibilityMode) {
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("set_visibility_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3031128463)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TouchScreenButton) get_visibility_mode() TouchScreenButtonVisibilityMode {
	mut result := i64(TouchScreenButtonVisibilityMode.visibility_always)
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("get_visibility_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2558996468)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{TouchScreenButtonVisibilityMode(result)}
}

pub fn (s &TouchScreenButton) set_passby_press(enabled bool) {
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("set_passby_press")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TouchScreenButton) is_passby_press_enabled() bool {
	mut result := false
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("is_passby_press_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TouchScreenButton) is_pressed() bool {
	mut result := false
	classname := StringName.new("TouchScreenButton")
	fnname := StringName.new("is_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
