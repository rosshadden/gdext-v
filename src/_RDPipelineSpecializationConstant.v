module gd

pub struct RDPipelineSpecializationConstant {
	RefCounted
}

pub fn (s &RDPipelineSpecializationConstant) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RDPipelineSpecializationConstant) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RDPipelineSpecializationConstant) set_value(value Variant) {
	classname := StringName.new("RDPipelineSpecializationConstant")
	fnname := StringName.new("set_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1114965689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineSpecializationConstant) get_value() Variant {
	mut result := Variant{}
	classname := StringName.new("RDPipelineSpecializationConstant")
	fnname := StringName.new("get_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDPipelineSpecializationConstant) set_constant_id(constant_id i64) {
	classname := StringName.new("RDPipelineSpecializationConstant")
	fnname := StringName.new("set_constant_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&constant_id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDPipelineSpecializationConstant) get_constant_id() i64 {
	mut result := i64(0)
	classname := StringName.new("RDPipelineSpecializationConstant")
	fnname := StringName.new("get_constant_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
