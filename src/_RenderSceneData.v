module gd

pub struct RenderSceneData {
	Object
}

pub fn (s &RenderSceneData) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RenderSceneData) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RenderSceneData) get_cam_transform() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("RenderSceneData")
	fnname := StringName.new("get_cam_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneData) get_cam_projection() Projection {
	mut result := Projection{}
	classname := StringName.new("RenderSceneData")
	fnname := StringName.new("get_cam_projection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2910717950)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneData) get_view_count() i64 {
	mut result := i64(0)
	classname := StringName.new("RenderSceneData")
	fnname := StringName.new("get_view_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneData) get_view_eye_offset(view i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("RenderSceneData")
	fnname := StringName.new("get_view_eye_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&view)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneData) get_view_projection(view i64) Projection {
	mut result := Projection{}
	classname := StringName.new("RenderSceneData")
	fnname := StringName.new("get_view_projection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3179846605)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&view)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderSceneData) get_uniform_buffer() RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneData")
	fnname := StringName.new("get_uniform_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
