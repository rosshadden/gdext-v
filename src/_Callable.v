module gd

@[packed]
pub struct Callable {
	godot_data [16]u8 // filler
}

pub fn Callable.new0() Callable {
	mut inst := Callable{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_callable, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn Callable.new1(from &Callable) Callable {
	mut inst := Callable{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_callable, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Callable.new2(object &Object, method &StringName) Callable {
	mut inst := Callable{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_callable, 2)
	mut args := unsafe { [2]voidptr{} }
	args[0] = object
	args[1] = method
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &Callable) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_callable)
	destructor(voidptr(s))
}

pub fn Callable.create(variant Variant, method StringName) Callable {
	mut result := Callable{}
	fnname := StringName.new("create")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 1709381114)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&variant)
	args[1] = voidptr(&method)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Callable) callv(arguments Array) Variant {
	mut result := Variant{}
	fnname := StringName.new("callv")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 413578926)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arguments)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Callable) is_null() bool {
	mut result := false
	fnname := StringName.new("is_null")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) is_custom() bool {
	mut result := false
	fnname := StringName.new("is_custom")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) is_standard() bool {
	mut result := false
	fnname := StringName.new("is_standard")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) is_valid() bool {
	mut result := false
	fnname := StringName.new("is_valid")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) get_object() Object {
	mut result := Object{}
	fnname := StringName.new("get_object")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 4008621732)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) get_object_id() i64 {
	mut result := i64(0)
	fnname := StringName.new("get_object_id")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) get_method() StringName {
	mut result := StringName{}
	fnname := StringName.new("get_method")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 1825232092)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) get_argument_count() i64 {
	mut result := i64(0)
	fnname := StringName.new("get_argument_count")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) get_bound_arguments_count() i64 {
	mut result := i64(0)
	fnname := StringName.new("get_bound_arguments_count")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) get_bound_arguments() Array {
	mut result := Array{}
	fnname := StringName.new("get_bound_arguments")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 4144163970)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) get_unbound_arguments_count() i64 {
	mut result := i64(0)
	fnname := StringName.new("get_unbound_arguments_count")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) hash() i64 {
	mut result := i64(0)
	fnname := StringName.new("hash")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) bindv(arguments Array) Callable {
	mut result := Callable{}
	fnname := StringName.new("bindv")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3564560322)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arguments)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Callable) unbind(argcount i64) Callable {
	mut result := Callable{}
	fnname := StringName.new("unbind")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 755001590)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&argcount)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Callable) call() Variant {
	mut result := Variant{}
	fnname := StringName.new("call")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3643564216)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Callable) call_deferred() {
	fnname := StringName.new("call_deferred")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3286317445)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &Callable) rpc() {
	fnname := StringName.new("rpc")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3286317445)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &Callable) rpc_id(peer_id i64) {
	fnname := StringName.new("rpc_id")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 2270047679)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &Callable) bind() Callable {
	mut result := Callable{}
	fnname := StringName.new("bind")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3224143119)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (v &Callable) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_callable)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t Callable) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_callable)
	variant_to_type(voidptr(&t), var)
}

pub fn (a Callable) == (b Callable) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_callable, GDExtensionVariantType.type_callable)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Callable) eq_callable(b Callable) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_callable, GDExtensionVariantType.type_callable)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Callable) ne_callable(b Callable) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_callable, GDExtensionVariantType.type_callable)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Callable) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_callable, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Callable) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_callable, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
