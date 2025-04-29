module gd

pub struct RenderSceneDataExtension {
	RenderSceneData
}

pub fn (s &RenderSceneDataExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RenderSceneDataExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IRenderSceneDataExtensionGetCamTransform {
mut:
	get_cam_transform_() Transform3D
}

pub fn (s &RenderSceneDataExtension) gd_get_cam_transform() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("RenderSceneDataExtension")
	fnname := StringName.new("_get_cam_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IRenderSceneDataExtensionGetCamProjection {
mut:
	get_cam_projection_() Projection
}

pub fn (s &RenderSceneDataExtension) gd_get_cam_projection() Projection {
	mut result := Projection{}
	classname := StringName.new("RenderSceneDataExtension")
	fnname := StringName.new("_get_cam_projection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2910717950)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IRenderSceneDataExtensionGetViewCount {
mut:
	get_view_count_() i64
}

pub fn (s &RenderSceneDataExtension) gd_get_view_count() i64 {
	mut result := i64(0)
	classname := StringName.new("RenderSceneDataExtension")
	fnname := StringName.new("_get_view_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IRenderSceneDataExtensionGetViewEyeOffset {
mut:
	get_view_eye_offset_(view i64) Vector3
}

pub fn (s &RenderSceneDataExtension) gd_get_view_eye_offset(view i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("RenderSceneDataExtension")
	fnname := StringName.new("_get_view_eye_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&view)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IRenderSceneDataExtensionGetViewProjection {
mut:
	get_view_projection_(view i64) Projection
}

pub fn (s &RenderSceneDataExtension) gd_get_view_projection(view i64) Projection {
	mut result := Projection{}
	classname := StringName.new("RenderSceneDataExtension")
	fnname := StringName.new("_get_view_projection")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3179846605)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&view)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IRenderSceneDataExtensionGetUniformBuffer {
mut:
	get_uniform_buffer_() RID
}

pub fn (s &RenderSceneDataExtension) gd_get_uniform_buffer() RID {
	mut result := RID{}
	classname := StringName.new("RenderSceneDataExtension")
	fnname := StringName.new("_get_uniform_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
