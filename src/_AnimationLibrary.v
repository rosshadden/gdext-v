module gd

pub struct AnimationLibrary {
	Resource
}

pub fn (s &AnimationLibrary) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationLibrary) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &AnimationLibrary) add_animation(name string, animation Animation) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("AnimationLibrary")
	fnname := StringName.new("add_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1811855551)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&animation.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &AnimationLibrary) remove_animation(name string) {
	classname := StringName.new("AnimationLibrary")
	fnname := StringName.new("remove_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationLibrary) rename_animation(name string, newname string) {
	classname := StringName.new("AnimationLibrary")
	fnname := StringName.new("rename_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(newname)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationLibrary) has_animation(name string) bool {
	mut result := false
	classname := StringName.new("AnimationLibrary")
	fnname := StringName.new("has_animation")
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

pub fn (s &AnimationLibrary) get_animation(name string) Animation {
	mut result := Animation{}
	classname := StringName.new("AnimationLibrary")
	fnname := StringName.new("get_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2933122410)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationLibrary) get_animation_list() Array {
	mut result := Array{}
	classname := StringName.new("AnimationLibrary")
	fnname := StringName.new("get_animation_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationLibrary) get_animation_list_size() i64 {
	mut result := i64(0)
	classname := StringName.new("AnimationLibrary")
	fnname := StringName.new("get_animation_list_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
