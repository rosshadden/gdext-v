pub fn (a @class_name) @op_name@{right_type_suffix}(b @right_type) @return_type {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator@op_type, GDExtensionVariantType.type_@class_name_lower, GDExtensionVariantType.type_@right_type_lower)
	res := @res_init
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
