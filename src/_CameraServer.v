module gd

pub enum CameraServerFeedImage as i64 {
	feed_rgba_image = 0
	feed_cbcr_image = 1
}

pub struct CameraServer {
	Object
}

pub fn CameraServer.get_singleton() CameraServer {
	sn := StringName.new("CameraServer")
	result := CameraServer{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &CameraServer) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CameraServer) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CameraServer) set_monitoring_feeds(is_monitoring_feeds bool) {
	classname := StringName.new("CameraServer")
	fnname := StringName.new("set_monitoring_feeds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&is_monitoring_feeds)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraServer) is_monitoring_feeds() bool {
	mut result := false
	classname := StringName.new("CameraServer")
	fnname := StringName.new("is_monitoring_feeds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraServer) get_feed(index i64) CameraFeed {
	mut result := CameraFeed{}
	classname := StringName.new("CameraServer")
	fnname := StringName.new("get_feed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 361927068)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraServer) get_feed_count() i64 {
	mut result := i64(0)
	classname := StringName.new("CameraServer")
	fnname := StringName.new("get_feed_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraServer) feeds() Array {
	mut result := Array{}
	classname := StringName.new("CameraServer")
	fnname := StringName.new("feeds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraServer) add_feed(feed CameraFeed) {
	classname := StringName.new("CameraServer")
	fnname := StringName.new("add_feed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3204782488)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&feed.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraServer) remove_feed(feed CameraFeed) {
	classname := StringName.new("CameraServer")
	fnname := StringName.new("remove_feed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3204782488)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&feed.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
