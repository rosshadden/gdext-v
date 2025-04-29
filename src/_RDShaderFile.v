module gd

pub struct RDShaderFile {
	Resource
}

pub fn (s &RDShaderFile) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RDShaderFile) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct RDShaderFile_set_bytecode_Cfg {
pub:
	version string
}

pub fn (s &RDShaderFile) set_bytecode(bytecode RDShaderSPIRV, cfg RDShaderFile_set_bytecode_Cfg) {
	classname := StringName.new("RDShaderFile")
	fnname := StringName.new("set_bytecode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1526857008)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&bytecode.ptr)
	arg_sn1 := StringName.new(cfg.version)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct RDShaderFile_get_spirv_Cfg {
pub:
	version string
}

pub fn (s &RDShaderFile) get_spirv(cfg RDShaderFile_get_spirv_Cfg) RDShaderSPIRV {
	mut result := RDShaderSPIRV{}
	classname := StringName.new("RDShaderFile")
	fnname := StringName.new("get_spirv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2689310080)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(cfg.version)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDShaderFile) get_version_list() Array {
	mut result := Array{}
	classname := StringName.new("RDShaderFile")
	fnname := StringName.new("get_version_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RDShaderFile) set_base_error(error string) {
	classname := StringName.new("RDShaderFile")
	fnname := StringName.new("set_base_error")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(error)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RDShaderFile) get_base_error() string {
	mut result := String{}
	classname := StringName.new("RDShaderFile")
	fnname := StringName.new("get_base_error")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
