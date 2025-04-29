module gd

pub enum OpenXRFutureResultResultStatus as i64 {
	result_running = 0
	result_finished = 1
	result_cancelled = 2
}

pub struct OpenXRFutureResult {
	RefCounted
}

pub fn (s &OpenXRFutureResult) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OpenXRFutureResult) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OpenXRFutureResult) get_status() OpenXRFutureResultResultStatus {
	mut result := i64(OpenXRFutureResultResultStatus.result_running)
	classname := StringName.new("OpenXRFutureResult")
	fnname := StringName.new("get_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2023607463)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OpenXRFutureResultResultStatus(result)}
}

pub fn (s &OpenXRFutureResult) get_future() i64 {
	mut result := i64(0)
	classname := StringName.new("OpenXRFutureResult")
	fnname := StringName.new("get_future")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &OpenXRFutureResult) cancel_future() {
	classname := StringName.new("OpenXRFutureResult")
	fnname := StringName.new("cancel_future")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
