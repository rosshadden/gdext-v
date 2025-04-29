module gd

pub struct Parallax2D {
	Node2D
}

pub fn (s &Parallax2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Parallax2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Parallax2D) set_scroll_scale(scale Vector2) {
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("set_scroll_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Parallax2D) get_scroll_scale() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("get_scroll_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Parallax2D) set_repeat_size(repeat_size Vector2) {
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("set_repeat_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&repeat_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Parallax2D) get_repeat_size() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("get_repeat_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Parallax2D) set_repeat_times(repeat_times i64) {
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("set_repeat_times")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&repeat_times)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Parallax2D) get_repeat_times() i64 {
	mut result := i64(0)
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("get_repeat_times")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Parallax2D) set_autoscroll(autoscroll Vector2) {
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("set_autoscroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&autoscroll)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Parallax2D) get_autoscroll() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("get_autoscroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Parallax2D) set_scroll_offset(offset Vector2) {
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("set_scroll_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Parallax2D) get_scroll_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("get_scroll_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Parallax2D) set_screen_offset(offset Vector2) {
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("set_screen_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Parallax2D) get_screen_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("get_screen_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Parallax2D) set_limit_begin(offset Vector2) {
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("set_limit_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Parallax2D) get_limit_begin() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("get_limit_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Parallax2D) set_limit_end(offset Vector2) {
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("set_limit_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Parallax2D) get_limit_end() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("get_limit_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Parallax2D) set_follow_viewport(follow bool) {
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("set_follow_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&follow)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Parallax2D) get_follow_viewport() bool {
	mut result := false
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("get_follow_viewport")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Parallax2D) set_ignore_camera_scroll(ignore bool) {
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("set_ignore_camera_scroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ignore)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Parallax2D) is_ignore_camera_scroll() bool {
	mut result := false
	classname := StringName.new("Parallax2D")
	fnname := StringName.new("is_ignore_camera_scroll")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
