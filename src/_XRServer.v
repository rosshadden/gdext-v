module gd

pub enum XRServerTrackerType as i64 {
	tracker_head = 1
	tracker_controller = 2
	tracker_basestation = 4
	tracker_anchor = 8
	tracker_hand = 16
	tracker_body = 32
	tracker_face = 64
	tracker_any_known = 127
	tracker_unknown = 128
	tracker_any = 255
}

pub enum XRServerRotationMode as i64 {
	reset_full_rotation = 0
	reset_but_keep_tilt = 1
	dont_reset_rotation = 2
}

pub struct XRServer {
	Object
}

pub fn XRServer.get_singleton() XRServer {
	sn := StringName.new("XRServer")
	result := XRServer{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &XRServer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s XRServer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &XRServer) get_world_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("XRServer")
	fnname := StringName.new("get_world_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRServer) set_world_scale(scale f64) {
	classname := StringName.new("XRServer")
	fnname := StringName.new("set_world_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRServer) get_world_origin() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("XRServer")
	fnname := StringName.new("get_world_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRServer) set_world_origin(world_origin Transform3D) {
	classname := StringName.new("XRServer")
	fnname := StringName.new("set_world_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&world_origin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRServer) get_reference_frame() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("XRServer")
	fnname := StringName.new("get_reference_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRServer) clear_reference_frame() {
	classname := StringName.new("XRServer")
	fnname := StringName.new("clear_reference_frame")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRServer) center_on_hmd(rotation_mode XRServerRotationMode, keep_height bool) {
	classname := StringName.new("XRServer")
	fnname := StringName.new("center_on_hmd")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1450904707)
	mut args := unsafe { [2]voidptr{} }
	i64_rotation_mode := i64(rotation_mode)
	args[0] = unsafe{voidptr(&i64_rotation_mode)}
	args[1] = unsafe{voidptr(&keep_height)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRServer) get_hmd_transform() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("XRServer")
	fnname := StringName.new("get_hmd_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4183770049)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRServer) set_camera_locked_to_origin(enabled bool) {
	classname := StringName.new("XRServer")
	fnname := StringName.new("set_camera_locked_to_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRServer) is_camera_locked_to_origin() bool {
	mut result := false
	classname := StringName.new("XRServer")
	fnname := StringName.new("is_camera_locked_to_origin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRServer) add_interface(gd_interface XRInterface) {
	classname := StringName.new("XRServer")
	fnname := StringName.new("add_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1898711491)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gd_interface.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRServer) get_interface_count() i64 {
	mut result := i64(0)
	classname := StringName.new("XRServer")
	fnname := StringName.new("get_interface_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRServer) remove_interface(gd_interface XRInterface) {
	classname := StringName.new("XRServer")
	fnname := StringName.new("remove_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1898711491)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gd_interface.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRServer) get_interface(idx i64) XRInterface {
	mut result := XRInterface{}
	classname := StringName.new("XRServer")
	fnname := StringName.new("get_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4237347919)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRServer) get_interfaces() Array {
	mut result := Array{}
	classname := StringName.new("XRServer")
	fnname := StringName.new("get_interfaces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRServer) find_interface(name string) XRInterface {
	mut result := XRInterface{}
	classname := StringName.new("XRServer")
	fnname := StringName.new("find_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1395192955)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRServer) add_tracker(tracker XRTracker) {
	classname := StringName.new("XRServer")
	fnname := StringName.new("add_tracker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 684804553)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&tracker.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRServer) remove_tracker(tracker XRTracker) {
	classname := StringName.new("XRServer")
	fnname := StringName.new("remove_tracker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 684804553)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&tracker.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &XRServer) get_trackers(tracker_types i64) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("XRServer")
	fnname := StringName.new("get_trackers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3554694381)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tracker_types)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRServer) get_tracker(tracker_name string) XRTracker {
	mut result := XRTracker{}
	classname := StringName.new("XRServer")
	fnname := StringName.new("get_tracker")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 147382240)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(tracker_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRServer) get_primary_interface() XRInterface {
	mut result := XRInterface{}
	classname := StringName.new("XRServer")
	fnname := StringName.new("get_primary_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2143545064)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &XRServer) set_primary_interface(gd_interface XRInterface) {
	classname := StringName.new("XRServer")
	fnname := StringName.new("set_primary_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1898711491)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gd_interface.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
