module gd

pub struct DampedSpringJoint2D {
	Joint2D
}

pub fn (s &DampedSpringJoint2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s DampedSpringJoint2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &DampedSpringJoint2D) set_length(length f64) {
	classname := StringName.new("DampedSpringJoint2D")
	fnname := StringName.new("set_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DampedSpringJoint2D) get_length() f64 {
	mut result := f64(0)
	classname := StringName.new("DampedSpringJoint2D")
	fnname := StringName.new("get_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DampedSpringJoint2D) set_rest_length(rest_length f64) {
	classname := StringName.new("DampedSpringJoint2D")
	fnname := StringName.new("set_rest_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rest_length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DampedSpringJoint2D) get_rest_length() f64 {
	mut result := f64(0)
	classname := StringName.new("DampedSpringJoint2D")
	fnname := StringName.new("get_rest_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DampedSpringJoint2D) set_stiffness(stiffness f64) {
	classname := StringName.new("DampedSpringJoint2D")
	fnname := StringName.new("set_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&stiffness)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DampedSpringJoint2D) get_stiffness() f64 {
	mut result := f64(0)
	classname := StringName.new("DampedSpringJoint2D")
	fnname := StringName.new("get_stiffness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &DampedSpringJoint2D) set_damping(damping f64) {
	classname := StringName.new("DampedSpringJoint2D")
	fnname := StringName.new("set_damping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&damping)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &DampedSpringJoint2D) get_damping() f64 {
	mut result := f64(0)
	classname := StringName.new("DampedSpringJoint2D")
	fnname := StringName.new("get_damping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
