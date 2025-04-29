module gd

pub struct RDUniform {
	RefCounted
}

pub fn (s &RDUniform) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RDUniform) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RDUniform) set_uniform_type(p_member RenderingDeviceUniformType) {
	classname := StringName.new("RDUniform")
	fnname := StringName.new("set_uniform_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1664894931)
	mut args := unsafe { [1]voidptr{} }
	i64_p_member := i64(p_member)
	args[0] = unsafe{voidptr(&i64_p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDUniform) get_uniform_type() RenderingDeviceUniformType {
	mut result := i64(RenderingDeviceUniformType.uniform_type_sampler)
	classname := StringName.new("RDUniform")
	fnname := StringName.new("get_uniform_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 475470040)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingDeviceUniformType(result)}
}

pub fn (s &RDUniform) set_binding(p_member i64) {
	classname := StringName.new("RDUniform")
	fnname := StringName.new("set_binding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&p_member)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDUniform) get_binding() i64 {
	mut result := i64(0)
	classname := StringName.new("RDUniform")
	fnname := StringName.new("get_binding")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDUniform) add_id(id RID) {
	classname := StringName.new("RDUniform")
	fnname := StringName.new("add_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDUniform) clear_ids() {
	classname := StringName.new("RDUniform")
	fnname := StringName.new("clear_ids")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDUniform) get_ids() Array {
	mut result := Array{}
	classname := StringName.new("RDUniform")
	fnname := StringName.new("get_ids")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
