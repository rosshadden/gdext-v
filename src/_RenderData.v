module gd

pub struct RenderData {
	Object
}

pub fn (s &RenderData) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RenderData) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RenderData) get_render_scene_buffers() RenderSceneBuffers {
	mut result := RenderSceneBuffers{}
	classname := StringName.new("RenderData")
	fnname := StringName.new("get_render_scene_buffers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2793216201)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderData) get_render_scene_data() RenderSceneData {
	mut result := RenderSceneData{}
	classname := StringName.new("RenderData")
	fnname := StringName.new("get_render_scene_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1288715698)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderData) get_environment() RID {
	mut result := RID{}
	classname := StringName.new("RenderData")
	fnname := StringName.new("get_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RenderData) get_camera_attributes() RID {
	mut result := RID{}
	classname := StringName.new("RenderData")
	fnname := StringName.new("get_camera_attributes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
