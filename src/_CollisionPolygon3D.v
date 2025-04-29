module gd

pub struct CollisionPolygon3D {
	Node3D
}

pub fn (s &CollisionPolygon3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CollisionPolygon3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CollisionPolygon3D) set_depth(depth f64) {
	classname := StringName.new("CollisionPolygon3D")
	fnname := StringName.new("set_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&depth)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionPolygon3D) get_depth() f64 {
	mut result := f64(0)
	classname := StringName.new("CollisionPolygon3D")
	fnname := StringName.new("get_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionPolygon3D) set_polygon(polygon PackedVector2Array) {
	classname := StringName.new("CollisionPolygon3D")
	fnname := StringName.new("set_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&polygon)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionPolygon3D) get_polygon() PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("CollisionPolygon3D")
	fnname := StringName.new("get_polygon")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionPolygon3D) set_disabled(disabled bool) {
	classname := StringName.new("CollisionPolygon3D")
	fnname := StringName.new("set_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&disabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionPolygon3D) is_disabled() bool {
	mut result := false
	classname := StringName.new("CollisionPolygon3D")
	fnname := StringName.new("is_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionPolygon3D) set_debug_color(color Color) {
	classname := StringName.new("CollisionPolygon3D")
	fnname := StringName.new("set_debug_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionPolygon3D) get_debug_color() Color {
	mut result := Color{}
	classname := StringName.new("CollisionPolygon3D")
	fnname := StringName.new("get_debug_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionPolygon3D) set_enable_debug_fill(enable bool) {
	classname := StringName.new("CollisionPolygon3D")
	fnname := StringName.new("set_enable_debug_fill")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionPolygon3D) get_enable_debug_fill() bool {
	mut result := false
	classname := StringName.new("CollisionPolygon3D")
	fnname := StringName.new("get_enable_debug_fill")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionPolygon3D) set_margin(margin f64) {
	classname := StringName.new("CollisionPolygon3D")
	fnname := StringName.new("set_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionPolygon3D) get_margin() f64 {
	mut result := f64(0)
	classname := StringName.new("CollisionPolygon3D")
	fnname := StringName.new("get_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
