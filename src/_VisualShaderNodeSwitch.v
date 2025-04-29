module gd

pub enum VisualShaderNodeSwitchOpType as i64 {
	op_type_float = 0
	op_type_int = 1
	op_type_uint = 2
	op_type_vector_2d = 3
	op_type_vector_3d = 4
	op_type_vector_4d = 5
	op_type_boolean = 6
	op_type_transform = 7
	op_type_max = 8
}

pub struct VisualShaderNodeSwitch {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeSwitch) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeSwitch) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeSwitch) set_op_type(gd_type VisualShaderNodeSwitchOpType) {
	classname := StringName.new("VisualShaderNodeSwitch")
	fnname := StringName.new("set_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 510471861)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeSwitch) get_op_type() VisualShaderNodeSwitchOpType {
	mut result := i64(VisualShaderNodeSwitchOpType.op_type_float)
	classname := StringName.new("VisualShaderNodeSwitch")
	fnname := StringName.new("get_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2517845071)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeSwitchOpType(result)}
}
