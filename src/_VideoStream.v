module gd

pub struct VideoStream {
	Resource
}

pub fn (s &VideoStream) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VideoStream) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IVideoStreamInstantiatePlayback {
mut:
	instantiate_playback_() VideoStreamPlayback
}

pub fn (s &VideoStream) gd_instantiate_playback() VideoStreamPlayback {
	mut result := VideoStreamPlayback{}
	classname := StringName.new("VideoStream")
	fnname := StringName.new("_instantiate_playback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 294648086)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VideoStream) set_file(file string) {
	classname := StringName.new("VideoStream")
	fnname := StringName.new("set_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(file)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VideoStream) get_file() string {
	mut result := String{}
	classname := StringName.new("VideoStream")
	fnname := StringName.new("get_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
