module gd

pub struct RDPipelineColorBlendStateAttachment {
	RefCounted
}

pub fn (s &RDPipelineColorBlendStateAttachment) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RDPipelineColorBlendStateAttachment) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RDPipelineColorBlendStateAttachment) set_as_mix() {
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("set_as_mix")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendStateAttachment) set_enable_blend(p_member bool) {
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("set_enable_blend")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendStateAttachment) get_enable_blend() bool {
	mut result := false
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("get_enable_blend")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDPipelineColorBlendStateAttachment) set_src_color_blend_factor(p_member RenderingDeviceBlendFactor) {
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("set_src_color_blend_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2251019273)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendStateAttachment) get_src_color_blend_factor() RenderingDeviceBlendFactor {
	mut result := i64(RenderingDeviceBlendFactor.blend_factor_zero)
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("get_src_color_blend_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3691288359)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceBlendFactor(result)}
}

pub fn (s &RDPipelineColorBlendStateAttachment) set_dst_color_blend_factor(p_member RenderingDeviceBlendFactor) {
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("set_dst_color_blend_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2251019273)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendStateAttachment) get_dst_color_blend_factor() RenderingDeviceBlendFactor {
	mut result := i64(RenderingDeviceBlendFactor.blend_factor_zero)
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("get_dst_color_blend_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3691288359)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceBlendFactor(result)}
}

pub fn (s &RDPipelineColorBlendStateAttachment) set_color_blend_op(p_member RenderingDeviceBlendOperation) {
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("set_color_blend_op")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3073022720)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendStateAttachment) get_color_blend_op() RenderingDeviceBlendOperation {
	mut result := i64(RenderingDeviceBlendOperation.blend_op_add)
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("get_color_blend_op")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1385093561)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceBlendOperation(result)}
}

pub fn (s &RDPipelineColorBlendStateAttachment) set_src_alpha_blend_factor(p_member RenderingDeviceBlendFactor) {
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("set_src_alpha_blend_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2251019273)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendStateAttachment) get_src_alpha_blend_factor() RenderingDeviceBlendFactor {
	mut result := i64(RenderingDeviceBlendFactor.blend_factor_zero)
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("get_src_alpha_blend_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3691288359)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceBlendFactor(result)}
}

pub fn (s &RDPipelineColorBlendStateAttachment) set_dst_alpha_blend_factor(p_member RenderingDeviceBlendFactor) {
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("set_dst_alpha_blend_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2251019273)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendStateAttachment) get_dst_alpha_blend_factor() RenderingDeviceBlendFactor {
	mut result := i64(RenderingDeviceBlendFactor.blend_factor_zero)
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("get_dst_alpha_blend_factor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3691288359)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceBlendFactor(result)}
}

pub fn (s &RDPipelineColorBlendStateAttachment) set_alpha_blend_op(p_member RenderingDeviceBlendOperation) {
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("set_alpha_blend_op")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3073022720)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendStateAttachment) get_alpha_blend_op() RenderingDeviceBlendOperation {
	mut result := i64(RenderingDeviceBlendOperation.blend_op_add)
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("get_alpha_blend_op")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1385093561)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceBlendOperation(result)}
}

pub fn (s &RDPipelineColorBlendStateAttachment) set_write_r(p_member bool) {
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("set_write_r")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendStateAttachment) get_write_r() bool {
	mut result := false
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("get_write_r")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDPipelineColorBlendStateAttachment) set_write_g(p_member bool) {
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("set_write_g")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendStateAttachment) get_write_g() bool {
	mut result := false
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("get_write_g")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDPipelineColorBlendStateAttachment) set_write_b(p_member bool) {
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("set_write_b")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendStateAttachment) get_write_b() bool {
	mut result := false
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("get_write_b")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDPipelineColorBlendStateAttachment) set_write_a(p_member bool) {
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("set_write_a")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineColorBlendStateAttachment) get_write_a() bool {
	mut result := false
	classname := StringName.new("RDPipelineColorBlendStateAttachment")
	fnname := StringName.new("get_write_a")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
