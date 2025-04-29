module gd

pub enum HashingContextHashType as i64 {
	hash_md5 = 0
	hash_sha1 = 1
	hash_sha256 = 2
}

pub struct HashingContext {
	RefCounted
}

pub fn (s &HashingContext) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s HashingContext) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &HashingContext) start(gd_type HashingContextHashType) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("HashingContext")
	fnname := StringName.new("start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3940338335)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &HashingContext) update(chunk PackedByteArray) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("HashingContext")
	fnname := StringName.new("update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&chunk)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &HashingContext) finish() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("HashingContext")
	fnname := StringName.new("finish")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
