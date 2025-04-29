module gd

pub enum XRHandModifier3DBoneUpdate as i64 {
	bone_update_full = 0
	bone_update_rotation_only = 1
	bone_update_max = 2
}

pub struct XRHandModifier3D {
	SkeletonModifier3D
}

pub fn (s &XRHandModifier3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRHandModifier3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRHandModifier3D) set_hand_tracker(tracker_name string) {
	classname := StringName.new("XRHandModifier3D")
	fnname := StringName.new("set_hand_tracker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(tracker_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRHandModifier3D) get_hand_tracker() string {
	mut result := StringName{}
	classname := StringName.new("XRHandModifier3D")
	fnname := StringName.new("get_hand_tracker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XRHandModifier3D) set_bone_update(bone_update XRHandModifier3DBoneUpdate) {
	classname := StringName.new("XRHandModifier3D")
	fnname := StringName.new("set_bone_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635701455)
	mut args := unsafe { [1]voidptr{} }
	i64_bone_update := i64(bone_update)
	args[0] = unsafe{voidptr(&i64_bone_update)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRHandModifier3D) get_bone_update() XRHandModifier3DBoneUpdate {
	mut result := i64(XRHandModifier3DBoneUpdate.bone_update_full)
	classname := StringName.new("XRHandModifier3D")
	fnname := StringName.new("get_bone_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2873665691)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRHandModifier3DBoneUpdate(result)}
}
