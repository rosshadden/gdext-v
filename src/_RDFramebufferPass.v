module gd

pub struct RDFramebufferPass {
	RefCounted
}

pub fn (s &RDFramebufferPass) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RDFramebufferPass) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RDFramebufferPass) set_color_attachments(p_member PackedInt32Array) {
	classname := StringName.new("RDFramebufferPass")
	fnname := StringName.new("set_color_attachments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDFramebufferPass) get_color_attachments() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("RDFramebufferPass")
	fnname := StringName.new("get_color_attachments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDFramebufferPass) set_input_attachments(p_member PackedInt32Array) {
	classname := StringName.new("RDFramebufferPass")
	fnname := StringName.new("set_input_attachments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDFramebufferPass) get_input_attachments() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("RDFramebufferPass")
	fnname := StringName.new("get_input_attachments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDFramebufferPass) set_resolve_attachments(p_member PackedInt32Array) {
	classname := StringName.new("RDFramebufferPass")
	fnname := StringName.new("set_resolve_attachments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDFramebufferPass) get_resolve_attachments() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("RDFramebufferPass")
	fnname := StringName.new("get_resolve_attachments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDFramebufferPass) set_preserve_attachments(p_member PackedInt32Array) {
	classname := StringName.new("RDFramebufferPass")
	fnname := StringName.new("set_preserve_attachments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDFramebufferPass) get_preserve_attachments() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("RDFramebufferPass")
	fnname := StringName.new("get_preserve_attachments")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDFramebufferPass) set_depth_attachment(p_member i64) {
	classname := StringName.new("RDFramebufferPass")
	fnname := StringName.new("set_depth_attachment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDFramebufferPass) get_depth_attachment() i64 {
	mut result := i64(0)
	classname := StringName.new("RDFramebufferPass")
	fnname := StringName.new("get_depth_attachment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
