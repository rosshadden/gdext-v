module gd

pub struct XRController3D {
	XRNode3D
}

pub fn (s &XRController3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRController3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRController3D) is_button_pressed(name string) bool {
	mut result := false
	classname := StringName.new("XRController3D")
	fnname := StringName.new("is_button_pressed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRController3D) get_input(name string) Variant {
	mut result := Variant{}
	classname := StringName.new("XRController3D")
	fnname := StringName.new("get_input")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRController3D) get_float(name string) f64 {
	mut result := f64(0)
	classname := StringName.new("XRController3D")
	fnname := StringName.new("get_float")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2349060816)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRController3D) get_vector2(name string) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("XRController3D")
	fnname := StringName.new("get_vector2")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3100822709)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRController3D) get_tracker_hand() XRPositionalTrackerTrackerHand {
	mut result := i64(XRPositionalTrackerTrackerHand.tracker_hand_unknown)
	classname := StringName.new("XRController3D")
	fnname := StringName.new("get_tracker_hand")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4181770860)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRPositionalTrackerTrackerHand(result)}
}
