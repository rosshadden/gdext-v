module gd

pub enum VisualShaderNodeIntFuncFunction as i64 {
	func_abs = 0
	func_negate = 1
	func_sign = 2
	func_bitwise_not = 3
	func_max = 4
}

pub struct VisualShaderNodeIntFunc {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeIntFunc) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeIntFunc) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeIntFunc) set_function(func VisualShaderNodeIntFuncFunction) {
	classname := StringName.new("VisualShaderNodeIntFunc")
	fnname := StringName.new("set_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 424195284)
	mut args := unsafe { [1]voidptr{} }
	i64_func := i64(func)
	args[0] = unsafe{voidptr(&i64_func)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeIntFunc) get_function() VisualShaderNodeIntFuncFunction {
	mut result := i64(VisualShaderNodeIntFuncFunction.func_abs)
	classname := StringName.new("VisualShaderNodeIntFunc")
	fnname := StringName.new("get_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2753496911)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeIntFuncFunction(result)}
}
