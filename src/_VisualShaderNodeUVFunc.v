module gd

pub enum VisualShaderNodeUVFuncFunction as i64 {
	func_panning = 0
	func_scaling = 1
	func_max = 2
}

pub struct VisualShaderNodeUVFunc {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeUVFunc) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeUVFunc) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeUVFunc) set_function(func VisualShaderNodeUVFuncFunction) {
	classname := StringName.new("VisualShaderNodeUVFunc")
	fnname := StringName.new("set_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 765791915)
	mut args := unsafe { [1]voidptr{} }
	i64_func := i64(func)
	args[0] = unsafe{voidptr(&i64_func)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeUVFunc) get_function() VisualShaderNodeUVFuncFunction {
	mut result := i64(VisualShaderNodeUVFuncFunction.func_panning)
	classname := StringName.new("VisualShaderNodeUVFunc")
	fnname := StringName.new("get_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3772902164)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeUVFuncFunction(result)}
}
