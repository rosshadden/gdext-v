module gd

pub struct CollisionShape2D {
	Node2D
}

pub fn (s &CollisionShape2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CollisionShape2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CollisionShape2D) set_shape(shape Shape2D) {
	classname := StringName.new("CollisionShape2D")
	fnname := StringName.new("set_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 771364740)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&shape.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionShape2D) get_shape() Shape2D {
	mut result := Shape2D{}
	classname := StringName.new("CollisionShape2D")
	fnname := StringName.new("get_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 522005891)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionShape2D) set_disabled(disabled bool) {
	classname := StringName.new("CollisionShape2D")
	fnname := StringName.new("set_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionShape2D) is_disabled() bool {
	mut result := false
	classname := StringName.new("CollisionShape2D")
	fnname := StringName.new("is_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionShape2D) set_one_way_collision(enabled bool) {
	classname := StringName.new("CollisionShape2D")
	fnname := StringName.new("set_one_way_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionShape2D) is_one_way_collision_enabled() bool {
	mut result := false
	classname := StringName.new("CollisionShape2D")
	fnname := StringName.new("is_one_way_collision_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionShape2D) set_one_way_collision_margin(margin f64) {
	classname := StringName.new("CollisionShape2D")
	fnname := StringName.new("set_one_way_collision_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionShape2D) get_one_way_collision_margin() f64 {
	mut result := f64(0)
	classname := StringName.new("CollisionShape2D")
	fnname := StringName.new("get_one_way_collision_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionShape2D) set_debug_color(color Color) {
	classname := StringName.new("CollisionShape2D")
	fnname := StringName.new("set_debug_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionShape2D) get_debug_color() Color {
	mut result := Color{}
	classname := StringName.new("CollisionShape2D")
	fnname := StringName.new("get_debug_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
