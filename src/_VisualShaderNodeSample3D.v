module gd

pub enum VisualShaderNodeSample3DSource as i64 {
	source_texture = 0
	source_port = 1
	source_max = 2
}

pub struct VisualShaderNodeSample3D {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeSample3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeSample3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeSample3D) set_source(value VisualShaderNodeSample3DSource) {
	classname := StringName.new("VisualShaderNodeSample3D")
	fnname := StringName.new("set_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3315130991)
	mut args := unsafe { [1]voidptr{} }
	i64_value := i64(value)
	args[0] = unsafe{voidptr(&i64_value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeSample3D) get_source() VisualShaderNodeSample3DSource {
	mut result := i64(VisualShaderNodeSample3DSource.source_texture)
	classname := StringName.new("VisualShaderNodeSample3D")
	fnname := StringName.new("get_source")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1079494121)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeSample3DSource(result)}
}
