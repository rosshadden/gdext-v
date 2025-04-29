module gd

pub struct RDPipelineColorBlendState {
	RefCounted
}

pub fn (s &RDPipelineColorBlendState) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RDPipelineColorBlendState) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RDPipelineColorBlendState) set_enable_logic_op(p_member bool) {
	classname := StringName.new("RDPipelineColorBlendState")
	fnname := StringName.new("set_enable_logic_op")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendState) get_enable_logic_op() bool {
	mut result := false
	classname := StringName.new("RDPipelineColorBlendState")
	fnname := StringName.new("get_enable_logic_op")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDPipelineColorBlendState) set_logic_op(p_member RenderingDeviceLogicOperation) {
	classname := StringName.new("RDPipelineColorBlendState")
	fnname := StringName.new("set_logic_op")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3610841058)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendState) get_logic_op() RenderingDeviceLogicOperation {
	mut result := i64(RenderingDeviceLogicOperation.logic_op_clear)
	classname := StringName.new("RDPipelineColorBlendState")
	fnname := StringName.new("get_logic_op")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 988254690)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceLogicOperation(result)}
}

pub fn (s &RDPipelineColorBlendState) set_blend_constant(p_member Color) {
	classname := StringName.new("RDPipelineColorBlendState")
	fnname := StringName.new("set_blend_constant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendState) get_blend_constant() Color {
	mut result := Color{}
	classname := StringName.new("RDPipelineColorBlendState")
	fnname := StringName.new("get_blend_constant")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDPipelineColorBlendState) set_attachments(attachments Array) {
	classname := StringName.new("RDPipelineColorBlendState")
	fnname := StringName.new("set_attachments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&attachments)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendState) get_attachments() Array {
	mut result := Array{}
	classname := StringName.new("RDPipelineColorBlendState")
	fnname := StringName.new("get_attachments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
