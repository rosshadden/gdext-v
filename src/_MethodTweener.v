module gd

pub struct MethodTweener {
	Tweener
}

pub fn (s &MethodTweener) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MethodTweener) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &MethodTweener) set_delay(delay f64) MethodTweener {
	mut result := MethodTweener{}
	classname := StringName.new("MethodTweener")
	fnname := StringName.new("set_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 266477812)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delay)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MethodTweener) set_trans(trans TweenTransitionType) MethodTweener {
	mut result := MethodTweener{}
	classname := StringName.new("MethodTweener")
	fnname := StringName.new("set_trans")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740975367)
	mut args := unsafe { [1]voidptr{} }
	i64_trans := i64(trans)
	args[0] = unsafe{voidptr(&i64_trans)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MethodTweener) set_ease(ease TweenEaseType) MethodTweener {
	mut result := MethodTweener{}
	classname := StringName.new("MethodTweener")
	fnname := StringName.new("set_ease")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 315540545)
	mut args := unsafe { [1]voidptr{} }
	i64_ease := i64(ease)
	args[0] = unsafe{voidptr(&i64_ease)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
