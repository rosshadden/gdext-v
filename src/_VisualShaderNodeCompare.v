module gd

pub enum VisualShaderNodeCompareComparisonType as i64 {
	ctype_scalar = 0
	ctype_scalar_int = 1
	ctype_scalar_uint = 2
	ctype_vector_2d = 3
	ctype_vector_3d = 4
	ctype_vector_4d = 5
	ctype_boolean = 6
	ctype_transform = 7
	ctype_max = 8
}

pub enum VisualShaderNodeCompareFunction as i64 {
	func_equal = 0
	func_not_equal = 1
	func_greater_than = 2
	func_greater_than_equal = 3
	func_less_than = 4
	func_less_than_equal = 5
	func_max = 6
}

pub enum VisualShaderNodeCompareCondition as i64 {
	cond_all = 0
	cond_any = 1
	cond_max = 2
}

pub struct VisualShaderNodeCompare {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeCompare) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeCompare) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeCompare) set_comparison_type(gd_type VisualShaderNodeCompareComparisonType) {
	classname := StringName.new("VisualShaderNodeCompare")
	fnname := StringName.new("set_comparison_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 516558320)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeCompare) get_comparison_type() VisualShaderNodeCompareComparisonType {
	mut result := i64(VisualShaderNodeCompareComparisonType.ctype_scalar)
	classname := StringName.new("VisualShaderNodeCompare")
	fnname := StringName.new("get_comparison_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3495315961)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeCompareComparisonType(result)}
}

pub fn (s &VisualShaderNodeCompare) set_function(func VisualShaderNodeCompareFunction) {
	classname := StringName.new("VisualShaderNodeCompare")
	fnname := StringName.new("set_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2370951349)
	mut args := unsafe { [1]voidptr{} }
	i64_func := i64(func)
	args[0] = unsafe{voidptr(&i64_func)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeCompare) get_function() VisualShaderNodeCompareFunction {
	mut result := i64(VisualShaderNodeCompareFunction.func_equal)
	classname := StringName.new("VisualShaderNodeCompare")
	fnname := StringName.new("get_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4089164265)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeCompareFunction(result)}
}

pub fn (s &VisualShaderNodeCompare) set_condition(condition VisualShaderNodeCompareCondition) {
	classname := StringName.new("VisualShaderNodeCompare")
	fnname := StringName.new("set_condition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 918742392)
	mut args := unsafe { [1]voidptr{} }
	i64_condition := i64(condition)
	args[0] = unsafe{voidptr(&i64_condition)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeCompare) get_condition() VisualShaderNodeCompareCondition {
	mut result := i64(VisualShaderNodeCompareCondition.cond_all)
	classname := StringName.new("VisualShaderNodeCompare")
	fnname := StringName.new("get_condition")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3281078941)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeCompareCondition(result)}
}
