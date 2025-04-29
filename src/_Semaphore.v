module gd

pub struct Semaphore {
	RefCounted
}

pub fn (s &Semaphore) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Semaphore) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Semaphore) wait() {
	classname := StringName.new("Semaphore")
	fnname := StringName.new("wait")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Semaphore) try_wait() bool {
	mut result := false
	classname := StringName.new("Semaphore")
	fnname := StringName.new("try_wait")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Semaphore_post_Cfg {
pub:
	count i64
}

pub fn (s &Semaphore) post(cfg Semaphore_post_Cfg) {
	classname := StringName.new("Semaphore")
	fnname := StringName.new("post")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1667783136)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
