module gd

pub struct CameraTexture {
	Texture2D
}

pub fn (s &CameraTexture) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CameraTexture) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CameraTexture) set_camera_feed_id(feed_id i64) {
	classname := StringName.new("CameraTexture")
	fnname := StringName.new("set_camera_feed_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&feed_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraTexture) get_camera_feed_id() i64 {
	mut result := i64(0)
	classname := StringName.new("CameraTexture")
	fnname := StringName.new("get_camera_feed_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraTexture) set_which_feed(which_feed CameraServerFeedImage) {
	classname := StringName.new("CameraTexture")
	fnname := StringName.new("set_which_feed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1595299230)
	mut args := unsafe { [1]voidptr{} }
	i64_which_feed := i64(which_feed)
	args[0] = unsafe{voidptr(&i64_which_feed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraTexture) get_which_feed() CameraServerFeedImage {
	mut result := i64(CameraServerFeedImage.feed_rgba_image)
	classname := StringName.new("CameraTexture")
	fnname := StringName.new("get_which_feed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 91039457)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{CameraServerFeedImage(result)}
}

pub fn (s &CameraTexture) set_camera_active(active bool) {
	classname := StringName.new("CameraTexture")
	fnname := StringName.new("set_camera_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&active)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraTexture) get_camera_active() bool {
	mut result := false
	classname := StringName.new("CameraTexture")
	fnname := StringName.new("get_camera_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
