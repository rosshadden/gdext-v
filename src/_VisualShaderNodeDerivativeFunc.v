module gd

pub enum VisualShaderNodeDerivativeFuncOpType as i64 {
	op_type_scalar = 0
	op_type_vector_2d = 1
	op_type_vector_3d = 2
	op_type_vector_4d = 3
	op_type_max = 4
}

pub enum VisualShaderNodeDerivativeFuncFunction as i64 {
	func_sum = 0
	func_x = 1
	func_y = 2
	func_max = 3
}

pub enum VisualShaderNodeDerivativeFuncPrecision as i64 {
	precision_none = 0
	precision_coarse = 1
	precision_fine = 2
	precision_max = 3
}

pub struct VisualShaderNodeDerivativeFunc {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeDerivativeFunc) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeDerivativeFunc) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeDerivativeFunc) set_op_type(gd_type VisualShaderNodeDerivativeFuncOpType) {
	classname := StringName.new("VisualShaderNodeDerivativeFunc")
	fnname := StringName.new("set_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 377800221)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeDerivativeFunc) get_op_type() VisualShaderNodeDerivativeFuncOpType {
	mut result := i64(VisualShaderNodeDerivativeFuncOpType.op_type_scalar)
	classname := StringName.new("VisualShaderNodeDerivativeFunc")
	fnname := StringName.new("get_op_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3997800514)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeDerivativeFuncOpType(result)}
}

pub fn (s &VisualShaderNodeDerivativeFunc) set_function(func VisualShaderNodeDerivativeFuncFunction) {
	classname := StringName.new("VisualShaderNodeDerivativeFunc")
	fnname := StringName.new("set_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1944704156)
	mut args := unsafe { [1]voidptr{} }
	i64_func := i64(func)
	args[0] = unsafe{voidptr(&i64_func)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeDerivativeFunc) get_function() VisualShaderNodeDerivativeFuncFunction {
	mut result := i64(VisualShaderNodeDerivativeFuncFunction.func_sum)
	classname := StringName.new("VisualShaderNodeDerivativeFunc")
	fnname := StringName.new("get_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2389093396)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeDerivativeFuncFunction(result)}
}

pub fn (s &VisualShaderNodeDerivativeFunc) set_precision(precision VisualShaderNodeDerivativeFuncPrecision) {
	classname := StringName.new("VisualShaderNodeDerivativeFunc")
	fnname := StringName.new("set_precision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 797270566)
	mut args := unsafe { [1]voidptr{} }
	i64_precision := i64(precision)
	args[0] = unsafe{voidptr(&i64_precision)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeDerivativeFunc) get_precision() VisualShaderNodeDerivativeFuncPrecision {
	mut result := i64(VisualShaderNodeDerivativeFuncPrecision.precision_none)
	classname := StringName.new("VisualShaderNodeDerivativeFunc")
	fnname := StringName.new("get_precision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3822547323)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeDerivativeFuncPrecision(result)}
}
