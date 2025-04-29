module gd

pub enum CollisionPolygon2DBuildMode as i64 {
	build_solids = 0
	build_segments = 1
}

pub struct CollisionPolygon2D {
	Node2D
}

pub fn (s &CollisionPolygon2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CollisionPolygon2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CollisionPolygon2D) set_polygon(polygon PackedVector2Array) {
	classname := StringName.new("CollisionPolygon2D")
	fnname := StringName.new("set_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&polygon)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionPolygon2D) get_polygon() PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("CollisionPolygon2D")
	fnname := StringName.new("get_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionPolygon2D) set_build_mode(build_mode CollisionPolygon2DBuildMode) {
	classname := StringName.new("CollisionPolygon2D")
	fnname := StringName.new("set_build_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2780803135)
	mut args := unsafe { [1]voidptr{} }
	i64_build_mode := i64(build_mode)
	args[0] = unsafe{voidptr(&i64_build_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionPolygon2D) get_build_mode() CollisionPolygon2DBuildMode {
	mut result := i64(CollisionPolygon2DBuildMode.build_solids)
	classname := StringName.new("CollisionPolygon2D")
	fnname := StringName.new("get_build_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3044948800)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{CollisionPolygon2DBuildMode(result)}
}

pub fn (s &CollisionPolygon2D) set_disabled(disabled bool) {
	classname := StringName.new("CollisionPolygon2D")
	fnname := StringName.new("set_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionPolygon2D) is_disabled() bool {
	mut result := false
	classname := StringName.new("CollisionPolygon2D")
	fnname := StringName.new("is_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionPolygon2D) set_one_way_collision(enabled bool) {
	classname := StringName.new("CollisionPolygon2D")
	fnname := StringName.new("set_one_way_collision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionPolygon2D) is_one_way_collision_enabled() bool {
	mut result := false
	classname := StringName.new("CollisionPolygon2D")
	fnname := StringName.new("is_one_way_collision_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionPolygon2D) set_one_way_collision_margin(margin f64) {
	classname := StringName.new("CollisionPolygon2D")
	fnname := StringName.new("set_one_way_collision_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionPolygon2D) get_one_way_collision_margin() f64 {
	mut result := f64(0)
	classname := StringName.new("CollisionPolygon2D")
	fnname := StringName.new("get_one_way_collision_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
