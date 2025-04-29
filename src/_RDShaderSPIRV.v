module gd

pub struct RDShaderSPIRV {
	Resource
}

pub fn (s &RDShaderSPIRV) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RDShaderSPIRV) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RDShaderSPIRV) set_stage_bytecode(stage RenderingDeviceShaderStage, bytecode PackedByteArray) {
	classname := StringName.new("RDShaderSPIRV")
	fnname := StringName.new("set_stage_bytecode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3514097977)
	mut args := unsafe { [2]voidptr{} }
	i64_stage := i64(stage)
	args[0] = unsafe{voidptr(&i64_stage)}
	args[1] = unsafe{voidptr(&bytecode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDShaderSPIRV) get_stage_bytecode(stage RenderingDeviceShaderStage) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("RDShaderSPIRV")
	fnname := StringName.new("get_stage_bytecode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3816765404)
	mut args := unsafe { [1]voidptr{} }
	i64_stage := i64(stage)
	args[0] = unsafe{voidptr(&i64_stage)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDShaderSPIRV) set_stage_compile_error(stage RenderingDeviceShaderStage, compile_error string) {
	classname := StringName.new("RDShaderSPIRV")
	fnname := StringName.new("set_stage_compile_error")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 620821314)
	mut args := unsafe { [2]voidptr{} }
	i64_stage := i64(stage)
	args[0] = unsafe{voidptr(&i64_stage)}
	arg_sn1 := String.new(compile_error)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDShaderSPIRV) get_stage_compile_error(stage RenderingDeviceShaderStage) string {
	mut result := String{}
	classname := StringName.new("RDShaderSPIRV")
	fnname := StringName.new("get_stage_compile_error")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3354920045)
	mut args := unsafe { [1]voidptr{} }
	i64_stage := i64(stage)
	args[0] = unsafe{voidptr(&i64_stage)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
