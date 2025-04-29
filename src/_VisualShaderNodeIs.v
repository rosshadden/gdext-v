module gd

pub enum VisualShaderNodeIsFunction as i64 {
	func_is_inf = 0
	func_is_nan = 1
	func_max = 2
}

pub struct VisualShaderNodeIs {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeIs) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeIs) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeIs) set_function(func VisualShaderNodeIsFunction) {
	classname := StringName.new("VisualShaderNodeIs")
	fnname := StringName.new("set_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1438374690)
	mut args := unsafe { [1]voidptr{} }
	i64_func := i64(func)
	args[0] = unsafe{voidptr(&i64_func)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeIs) get_function() VisualShaderNodeIsFunction {
	mut result := i64(VisualShaderNodeIsFunction.func_is_inf)
	classname := StringName.new("VisualShaderNodeIs")
	fnname := StringName.new("get_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 580678557)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeIsFunction(result)}
}
