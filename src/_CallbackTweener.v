module gd

pub struct CallbackTweener {
	Tweener
}

pub fn (s &CallbackTweener) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CallbackTweener) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CallbackTweener) set_delay(delay f64) CallbackTweener {
	mut result := CallbackTweener{}
	classname := StringName.new("CallbackTweener")
	fnname := StringName.new("set_delay")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3008182292)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&delay)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
