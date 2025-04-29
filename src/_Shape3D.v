module gd

pub struct Shape3D {
	Resource
}

pub fn (s &Shape3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Shape3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Shape3D) set_custom_solver_bias(bias f64) {
	classname := StringName.new("Shape3D")
	fnname := StringName.new("set_custom_solver_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bias)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Shape3D) get_custom_solver_bias() f64 {
	mut result := f64(0)
	classname := StringName.new("Shape3D")
	fnname := StringName.new("get_custom_solver_bias")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Shape3D) set_margin(margin f64) {
	classname := StringName.new("Shape3D")
	fnname := StringName.new("set_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&margin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Shape3D) get_margin() f64 {
	mut result := f64(0)
	classname := StringName.new("Shape3D")
	fnname := StringName.new("get_margin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Shape3D) get_debug_mesh() ArrayMesh {
	mut result := ArrayMesh{}
	classname := StringName.new("Shape3D")
	fnname := StringName.new("get_debug_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1605880883)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
