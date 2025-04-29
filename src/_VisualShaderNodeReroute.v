module gd

pub struct VisualShaderNodeReroute {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeReroute) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeReroute) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeReroute) get_port_type() VisualShaderNodePortType {
	mut result := i64(VisualShaderNodePortType.port_type_scalar)
	classname := StringName.new("VisualShaderNodeReroute")
	fnname := StringName.new("get_port_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1287173294)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodePortType(result)}
}
