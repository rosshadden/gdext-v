module gd

@[packed]
pub struct NodePath {
	godot_data [8]u8 // filler
}

pub fn NodePath.new0() NodePath {
	mut inst := NodePath{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_nodepath, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn NodePath.new1(from &NodePath) NodePath {
	mut inst := NodePath{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_nodepath, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn NodePath.new2(from &String) NodePath {
	mut inst := NodePath{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_nodepath, 2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &NodePath) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_nodepath)
	destructor(voidptr(s))
}

pub fn (s &NodePath) is_absolute() bool {
	mut result := false
	fnname := StringName.new("is_absolute")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &NodePath) get_name_count() i64 {
	mut result := i64(0)
	fnname := StringName.new("get_name_count")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &NodePath) get_name(idx i64) StringName {
	mut result := StringName{}
	fnname := StringName.new("get_name")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 2948586938)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&idx)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &NodePath) get_subname_count() i64 {
	mut result := i64(0)
	fnname := StringName.new("get_subname_count")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &NodePath) hash() i64 {
	mut result := i64(0)
	fnname := StringName.new("hash")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &NodePath) get_subname(idx i64) StringName {
	mut result := StringName{}
	fnname := StringName.new("get_subname")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 2948586938)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&idx)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &NodePath) get_concatenated_names() StringName {
	mut result := StringName{}
	fnname := StringName.new("get_concatenated_names")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 1825232092)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &NodePath) get_concatenated_subnames() StringName {
	mut result := StringName{}
	fnname := StringName.new("get_concatenated_subnames")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 1825232092)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &NodePath) slice(begin i64, end i64) NodePath {
	mut result := NodePath{}
	fnname := StringName.new("slice")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 421628484)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &NodePath) get_as_property_path() NodePath {
	mut result := NodePath{}
	fnname := StringName.new("get_as_property_path")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 1598598043)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &NodePath) is_empty() bool {
	mut result := false
	fnname := StringName.new("is_empty")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (v &NodePath) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_nodepath)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t NodePath) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_nodepath)
	variant_to_type(voidptr(&t), var)
}

pub fn (a NodePath) == (b NodePath) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_nodepath, GDExtensionVariantType.type_nodepath)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a NodePath) eq_nodepath(b NodePath) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_nodepath, GDExtensionVariantType.type_nodepath)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a NodePath) ne_nodepath(b NodePath) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_nodepath, GDExtensionVariantType.type_nodepath)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a NodePath) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_nodepath, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a NodePath) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_nodepath, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
