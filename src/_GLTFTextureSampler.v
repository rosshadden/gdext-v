module gd

pub struct GLTFTextureSampler {
	Resource
}

pub fn (s &GLTFTextureSampler) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFTextureSampler) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GLTFTextureSampler) get_mag_filter() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFTextureSampler")
	fnname := StringName.new("get_mag_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFTextureSampler) set_mag_filter(filter_mode i64) {
	classname := StringName.new("GLTFTextureSampler")
	fnname := StringName.new("set_mag_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&filter_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFTextureSampler) get_min_filter() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFTextureSampler")
	fnname := StringName.new("get_min_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFTextureSampler) set_min_filter(filter_mode i64) {
	classname := StringName.new("GLTFTextureSampler")
	fnname := StringName.new("set_min_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&filter_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFTextureSampler) get_wrap_s() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFTextureSampler")
	fnname := StringName.new("get_wrap_s")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFTextureSampler) set_wrap_s(wrap_mode i64) {
	classname := StringName.new("GLTFTextureSampler")
	fnname := StringName.new("set_wrap_s")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&wrap_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFTextureSampler) get_wrap_t() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFTextureSampler")
	fnname := StringName.new("get_wrap_t")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFTextureSampler) set_wrap_t(wrap_mode i64) {
	classname := StringName.new("GLTFTextureSampler")
	fnname := StringName.new("set_wrap_t")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&wrap_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
