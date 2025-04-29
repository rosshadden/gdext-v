module gd

pub struct HMACContext {
	RefCounted
}

pub fn (s &HMACContext) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s HMACContext) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &HMACContext) start(hash_type HashingContextHashType, key PackedByteArray) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("HMACContext")
	fnname := StringName.new("start")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3537364598)
	mut args := unsafe { [2]voidptr{} }
	i64_hash_type := i64(hash_type)
	args[0] = unsafe{voidptr(&i64_hash_type)}
	args[1] = unsafe{voidptr(&key)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &HMACContext) update(data PackedByteArray) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("HMACContext")
	fnname := StringName.new("update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &HMACContext) finish() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("HMACContext")
	fnname := StringName.new("finish")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
