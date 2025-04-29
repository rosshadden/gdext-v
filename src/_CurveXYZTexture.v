module gd

pub struct CurveXYZTexture {
	Texture2D
}

pub fn (s &CurveXYZTexture) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CurveXYZTexture) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CurveXYZTexture) set_width(width i64) {
	classname := StringName.new("CurveXYZTexture")
	fnname := StringName.new("set_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CurveXYZTexture) set_curve_x(curve Curve) {
	classname := StringName.new("CurveXYZTexture")
	fnname := StringName.new("set_curve_x")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CurveXYZTexture) get_curve_x() Curve {
	mut result := Curve{}
	classname := StringName.new("CurveXYZTexture")
	fnname := StringName.new("get_curve_x")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CurveXYZTexture) set_curve_y(curve Curve) {
	classname := StringName.new("CurveXYZTexture")
	fnname := StringName.new("set_curve_y")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CurveXYZTexture) get_curve_y() Curve {
	mut result := Curve{}
	classname := StringName.new("CurveXYZTexture")
	fnname := StringName.new("get_curve_y")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CurveXYZTexture) set_curve_z(curve Curve) {
	classname := StringName.new("CurveXYZTexture")
	fnname := StringName.new("set_curve_z")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CurveXYZTexture) get_curve_z() Curve {
	mut result := Curve{}
	classname := StringName.new("CurveXYZTexture")
	fnname := StringName.new("get_curve_z")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
