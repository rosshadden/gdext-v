module gd

pub enum PinJoint3DParam as i64 {
	param_bias = 0
	param_damping = 1
	param_impulse_clamp = 2
}

pub struct PinJoint3D {
	Joint3D
}

pub fn (s &PinJoint3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PinJoint3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PinJoint3D) set_param(param PinJoint3DParam, value f64) {
	classname := StringName.new("PinJoint3D")
	fnname := StringName.new("set_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2059913726)
	mut args := unsafe { [2]voidptr{} }
	i64_param := i64(param)
	args[0] = unsafe{voidptr(&i64_param)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PinJoint3D) get_param(param PinJoint3DParam) f64 {
	mut result := f64(0)
	classname := StringName.new("PinJoint3D")
	fnname := StringName.new("get_param")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1758438771)
	mut args := unsafe { [1]voidptr{} }
	i64_param := i64(param)
	args[0] = unsafe{voidptr(&i64_param)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
