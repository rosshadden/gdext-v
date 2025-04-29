module gd

pub enum CameraFeedFeedDataType as i64 {
	feed_noimage = 0
	feed_rgb = 1
	feed_ycbcr = 2
	feed_ycbcr_sep = 3
	feed_external = 4
}

pub enum CameraFeedFeedPosition as i64 {
	feed_unspecified = 0
	feed_front = 1
	feed_back = 2
}

pub struct CameraFeed {
	RefCounted
}

pub fn (s &CameraFeed) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CameraFeed) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ICameraFeedActivateFeed {
mut:
	activate_feed_() bool
}

pub fn (s &CameraFeed) gd_activate_feed() bool {
	mut result := false
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("_activate_feed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface ICameraFeedDeactivateFeed {
mut:
	deactivate_feed_()
}

pub fn (s &CameraFeed) gd_deactivate_feed() {
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("_deactivate_feed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraFeed) get_id() i64 {
	mut result := i64(0)
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("get_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraFeed) is_active() bool {
	mut result := false
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("is_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraFeed) set_active(active bool) {
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("set_active")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&active)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraFeed) get_name() string {
	mut result := String{}
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &CameraFeed) set_name(name string) {
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("set_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraFeed) get_position() CameraFeedFeedPosition {
	mut result := i64(CameraFeedFeedPosition.feed_unspecified)
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2711679033)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{CameraFeedFeedPosition(result)}
}

pub fn (s &CameraFeed) set_position(position CameraFeedFeedPosition) {
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("set_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 611162623)
	mut args := unsafe { [1]voidptr{} }
	i64_position := i64(position)
	args[0] = unsafe{voidptr(&i64_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraFeed) get_transform() Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("get_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraFeed) set_transform(transform Transform2D) {
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("set_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraFeed) set_rgb_image(rgb_image Image) {
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("set_rgb_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&rgb_image.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraFeed) set_ycbcr_image(ycbcr_image Image) {
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("set_ycbcr_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&ycbcr_image.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraFeed) set_external(width i64, height i64) {
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("set_external")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	args[1] = unsafe{voidptr(&height)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CameraFeed) get_texture_tex_id(feed_image_type CameraServerFeedImage) i64 {
	mut result := i64(0)
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("get_texture_tex_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1135699418)
	mut args := unsafe { [1]voidptr{} }
	i64_feed_image_type := i64(feed_image_type)
	args[0] = unsafe{voidptr(&i64_feed_image_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraFeed) get_datatype() CameraFeedFeedDataType {
	mut result := i64(CameraFeedFeedDataType.feed_noimage)
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("get_datatype")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1477782850)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{CameraFeedFeedDataType(result)}
}

pub fn (s &CameraFeed) get_formats() Array {
	mut result := Array{}
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("get_formats")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CameraFeed) set_format(index i64, parameters Dictionary) bool {
	mut result := false
	classname := StringName.new("CameraFeed")
	fnname := StringName.new("set_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 31872775)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&parameters)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
