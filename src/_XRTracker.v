module gd

pub struct XRTracker {
	RefCounted
}

pub fn (s &XRTracker) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRTracker) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRTracker) get_tracker_type() XRServerTrackerType {
	mut result := i64(XRServerTrackerType.tracker_head)
	classname := StringName.new("XRTracker")
	fnname := StringName.new("get_tracker_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2784508102)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRServerTrackerType(result)}
}

pub fn (s &XRTracker) set_tracker_type(gd_type XRServerTrackerType) {
	classname := StringName.new("XRTracker")
	fnname := StringName.new("set_tracker_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3055763575)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRTracker) get_tracker_name() string {
	mut result := StringName{}
	classname := StringName.new("XRTracker")
	fnname := StringName.new("get_tracker_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XRTracker) set_tracker_name(name string) {
	classname := StringName.new("XRTracker")
	fnname := StringName.new("set_tracker_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRTracker) get_tracker_desc() string {
	mut result := String{}
	classname := StringName.new("XRTracker")
	fnname := StringName.new("get_tracker_desc")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XRTracker) set_tracker_desc(description string) {
	classname := StringName.new("XRTracker")
	fnname := StringName.new("set_tracker_desc")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(description)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
