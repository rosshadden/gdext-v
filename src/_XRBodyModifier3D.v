module gd

pub enum XRBodyModifier3DBodyUpdate as i64 {
	body_update_upper_body = 1
	body_update_lower_body = 2
	body_update_hands = 4
}

pub enum XRBodyModifier3DBoneUpdate as i64 {
	bone_update_full = 0
	bone_update_rotation_only = 1
	bone_update_max = 2
}

pub struct XRBodyModifier3D {
	SkeletonModifier3D
}

pub fn (s &XRBodyModifier3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRBodyModifier3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRBodyModifier3D) set_body_tracker(tracker_name string) {
	classname := StringName.new("XRBodyModifier3D")
	fnname := StringName.new("set_body_tracker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(tracker_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRBodyModifier3D) get_body_tracker() string {
	mut result := StringName{}
	classname := StringName.new("XRBodyModifier3D")
	fnname := StringName.new("get_body_tracker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &XRBodyModifier3D) set_body_update(body_update XRBodyModifier3DBodyUpdate) {
	classname := StringName.new("XRBodyModifier3D")
	fnname := StringName.new("set_body_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2211199417)
	mut args := unsafe { [1]voidptr{} }
	i64_body_update := i64(body_update)
	args[0] = unsafe{voidptr(&i64_body_update)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRBodyModifier3D) get_body_update() XRBodyModifier3DBodyUpdate {
	mut result := i64(XRBodyModifier3DBodyUpdate.body_update_upper_body)
	classname := StringName.new("XRBodyModifier3D")
	fnname := StringName.new("get_body_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2642335328)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRBodyModifier3DBodyUpdate(result)}
}

pub fn (s &XRBodyModifier3D) set_bone_update(bone_update XRBodyModifier3DBoneUpdate) {
	classname := StringName.new("XRBodyModifier3D")
	fnname := StringName.new("set_bone_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3356796943)
	mut args := unsafe { [1]voidptr{} }
	i64_bone_update := i64(bone_update)
	args[0] = unsafe{voidptr(&i64_bone_update)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRBodyModifier3D) get_bone_update() XRBodyModifier3DBoneUpdate {
	mut result := i64(XRBodyModifier3DBoneUpdate.bone_update_full)
	classname := StringName.new("XRBodyModifier3D")
	fnname := StringName.new("get_bone_update")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1309305964)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{XRBodyModifier3DBoneUpdate(result)}
}
