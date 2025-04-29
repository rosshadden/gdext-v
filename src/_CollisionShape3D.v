module gd

pub struct CollisionShape3D {
	Node3D
}

pub fn (s &CollisionShape3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CollisionShape3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CollisionShape3D) resource_changed(resource Resource) {
	classname := StringName.new("CollisionShape3D")
	fnname := StringName.new("resource_changed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&resource.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionShape3D) set_shape(shape Shape3D) {
	classname := StringName.new("CollisionShape3D")
	fnname := StringName.new("set_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549710052)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&shape.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionShape3D) get_shape() Shape3D {
	mut result := Shape3D{}
	classname := StringName.new("CollisionShape3D")
	fnname := StringName.new("get_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3214262478)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionShape3D) set_disabled(enable bool) {
	classname := StringName.new("CollisionShape3D")
	fnname := StringName.new("set_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionShape3D) is_disabled() bool {
	mut result := false
	classname := StringName.new("CollisionShape3D")
	fnname := StringName.new("is_disabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionShape3D) make_convex_from_siblings() {
	classname := StringName.new("CollisionShape3D")
	fnname := StringName.new("make_convex_from_siblings")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionShape3D) set_debug_color(color Color) {
	classname := StringName.new("CollisionShape3D")
	fnname := StringName.new("set_debug_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionShape3D) get_debug_color() Color {
	mut result := Color{}
	classname := StringName.new("CollisionShape3D")
	fnname := StringName.new("get_debug_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CollisionShape3D) set_enable_debug_fill(enable bool) {
	classname := StringName.new("CollisionShape3D")
	fnname := StringName.new("set_enable_debug_fill")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CollisionShape3D) get_enable_debug_fill() bool {
	mut result := false
	classname := StringName.new("CollisionShape3D")
	fnname := StringName.new("get_enable_debug_fill")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
