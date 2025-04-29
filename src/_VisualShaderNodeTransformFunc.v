module gd

pub enum VisualShaderNodeTransformFuncFunction as i64 {
	func_inverse = 0
	func_transpose = 1
	func_max = 2
}

pub struct VisualShaderNodeTransformFunc {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeTransformFunc) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeTransformFunc) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeTransformFunc) set_function(func VisualShaderNodeTransformFuncFunction) {
	classname := StringName.new("VisualShaderNodeTransformFunc")
	fnname := StringName.new("set_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2900990409)
	mut args := unsafe { [1]voidptr{} }
	i64_func := i64(func)
	args[0] = unsafe{voidptr(&i64_func)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeTransformFunc) get_function() VisualShaderNodeTransformFuncFunction {
	mut result := i64(VisualShaderNodeTransformFuncFunction.func_inverse)
	classname := StringName.new("VisualShaderNodeTransformFunc")
	fnname := StringName.new("get_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2839926569)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeTransformFuncFunction(result)}
}
