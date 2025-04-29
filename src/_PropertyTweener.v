module gd

pub struct PropertyTweener {
	Tweener
}

pub fn (s &PropertyTweener) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PropertyTweener) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &PropertyTweener) from(value Variant) PropertyTweener {
	mut result := PropertyTweener{}
	classname := StringName.new("PropertyTweener")
	fnname := StringName.new("from")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4190193059)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PropertyTweener) from_current() PropertyTweener {
	mut result := PropertyTweener{}
	classname := StringName.new("PropertyTweener")
	fnname := StringName.new("from_current")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4279177709)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PropertyTweener) as_relative() PropertyTweener {
	mut result := PropertyTweener{}
	classname := StringName.new("PropertyTweener")
	fnname := StringName.new("as_relative")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4279177709)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PropertyTweener) set_trans(trans TweenTransitionType) PropertyTweener {
	mut result := PropertyTweener{}
	classname := StringName.new("PropertyTweener")
	fnname := StringName.new("set_trans")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1899107404)
	mut args := unsafe { [1]voidptr{} }
	i64_trans := i64(trans)
	args[0] = unsafe{voidptr(&i64_trans)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PropertyTweener) set_ease(ease TweenEaseType) PropertyTweener {
	mut result := PropertyTweener{}
	classname := StringName.new("PropertyTweener")
	fnname := StringName.new("set_ease")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1080455622)
	mut args := unsafe { [1]voidptr{} }
	i64_ease := i64(ease)
	args[0] = unsafe{voidptr(&i64_ease)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PropertyTweener) set_custom_interpolator(interpolator_method Callable) PropertyTweener {
	mut result := PropertyTweener{}
	classname := StringName.new("PropertyTweener")
	fnname := StringName.new("set_custom_interpolator")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3174170268)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&interpolator_method)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &PropertyTweener) set_delay(delay f64) PropertyTweener {
	mut result := PropertyTweener{}
	classname := StringName.new("PropertyTweener")
	fnname := StringName.new("set_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2171559331)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delay)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
