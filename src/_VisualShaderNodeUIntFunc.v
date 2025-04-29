module gd

pub enum VisualShaderNodeUIntFuncFunction as i64 {
	func_negate = 0
	func_bitwise_not = 1
	func_max = 2
}

pub struct VisualShaderNodeUIntFunc {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeUIntFunc) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeUIntFunc) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeUIntFunc) set_function(func VisualShaderNodeUIntFuncFunction) {
	classname := StringName.new("VisualShaderNodeUIntFunc")
	fnname := StringName.new("set_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2273148961)
	mut args := unsafe { [1]voidptr{} }
	i64_func := i64(func)
	args[0] = unsafe{voidptr(&i64_func)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeUIntFunc) get_function() VisualShaderNodeUIntFuncFunction {
	mut result := i64(VisualShaderNodeUIntFuncFunction.func_negate)
	classname := StringName.new("VisualShaderNodeUIntFunc")
	fnname := StringName.new("get_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4187123296)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeUIntFuncFunction(result)}
}
