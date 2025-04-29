module gd

pub enum VisualShaderNodeColorFuncFunction as i64 {
	func_grayscale = 0
	func_hsv2rgb = 1
	func_rgb2hsv = 2
	func_sepia = 3
	func_linear_to_srgb = 4
	func_srgb_to_linear = 5
	func_max = 6
}

pub struct VisualShaderNodeColorFunc {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeColorFunc) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeColorFunc) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeColorFunc) set_function(func VisualShaderNodeColorFuncFunction) {
	classname := StringName.new("VisualShaderNodeColorFunc")
	fnname := StringName.new("set_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3973396138)
	mut args := unsafe { [1]voidptr{} }
	i64_func := i64(func)
	args[0] = unsafe{voidptr(&i64_func)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeColorFunc) get_function() VisualShaderNodeColorFuncFunction {
	mut result := i64(VisualShaderNodeColorFuncFunction.func_grayscale)
	classname := StringName.new("VisualShaderNodeColorFunc")
	fnname := StringName.new("get_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 554863321)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeColorFuncFunction(result)}
}
