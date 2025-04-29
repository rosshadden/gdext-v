module gd

@[packed]
pub struct Dictionary {
	godot_data [8]u8 // filler
}

pub fn Dictionary.new0() Dictionary {
	mut inst := Dictionary{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_dictionary, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn Dictionary.new1(from &Dictionary) Dictionary {
	mut inst := Dictionary{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_dictionary, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Dictionary.new2(base &Dictionary, key_type &i64, key_class_name &StringName, key_script &Variant, value_type &i64, value_class_name &StringName, value_script &Variant) Dictionary {
	mut inst := Dictionary{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_dictionary, 2)
	mut args := unsafe { [7]voidptr{} }
	args[0] = base
	args[1] = key_type
	args[2] = key_class_name
	args[3] = key_script
	args[4] = value_type
	args[5] = value_class_name
	args[6] = value_script
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &Dictionary) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_dictionary)
	destructor(voidptr(s))
}

pub fn (s &Dictionary) size() i64 {
	mut result := i64(0)
	fnname := StringName.new("size")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) is_empty() bool {
	mut result := false
	fnname := StringName.new("is_empty")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) clear() {
	fnname := StringName.new("clear")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &Dictionary) assign(dictionary Dictionary) {
	fnname := StringName.new("assign")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3642266950)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &Dictionary) sort() {
	fnname := StringName.new("sort")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &Dictionary) merge(dictionary Dictionary, overwrite bool) {
	fnname := StringName.new("merge")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 2079548978)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &Dictionary) merged(dictionary Dictionary, overwrite bool) Dictionary {
	mut result := Dictionary{}
	fnname := StringName.new("merged")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 2271165639)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&dictionary)
	args[1] = voidptr(&overwrite)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) has(key Variant) bool {
	mut result := false
	fnname := StringName.new("has")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3680194679)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&key)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) has_all(keys Array) bool {
	mut result := false
	fnname := StringName.new("has_all")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 2988181878)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&keys)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) find_key(value Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("find_key")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 1988825835)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) erase(key Variant) bool {
	mut result := false
	fnname := StringName.new("erase")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 1776646889)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&key)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) hash() i64 {
	mut result := i64(0)
	fnname := StringName.new("hash")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) keys() Array {
	mut result := Array{}
	fnname := StringName.new("keys")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 4144163970)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) values() Array {
	mut result := Array{}
	fnname := StringName.new("values")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 4144163970)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) duplicate(deep bool) Dictionary {
	mut result := Dictionary{}
	fnname := StringName.new("duplicate")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 830099069)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&deep)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) get(key Variant, default Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("get")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 2205440559)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&key)
	args[1] = voidptr(&default)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) get_or_add(key Variant, default Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("get_or_add")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 1052551076)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&key)
	args[1] = voidptr(&default)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) set(key Variant, value Variant) bool {
	mut result := false
	fnname := StringName.new("set")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 2175348267)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&key)
	args[1] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) is_typed() bool {
	mut result := false
	fnname := StringName.new("is_typed")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) is_typed_key() bool {
	mut result := false
	fnname := StringName.new("is_typed_key")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) is_typed_value() bool {
	mut result := false
	fnname := StringName.new("is_typed_value")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) is_same_typed(dictionary Dictionary) bool {
	mut result := false
	fnname := StringName.new("is_same_typed")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3471775634)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&dictionary)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) is_same_typed_key(dictionary Dictionary) bool {
	mut result := false
	fnname := StringName.new("is_same_typed_key")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3471775634)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&dictionary)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) is_same_typed_value(dictionary Dictionary) bool {
	mut result := false
	fnname := StringName.new("is_same_typed_value")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3471775634)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&dictionary)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) get_typed_key_builtin() i64 {
	mut result := i64(0)
	fnname := StringName.new("get_typed_key_builtin")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) get_typed_value_builtin() i64 {
	mut result := i64(0)
	fnname := StringName.new("get_typed_value_builtin")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) get_typed_key_class_name() StringName {
	mut result := StringName{}
	fnname := StringName.new("get_typed_key_class_name")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 1825232092)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) get_typed_value_class_name() StringName {
	mut result := StringName{}
	fnname := StringName.new("get_typed_value_class_name")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 1825232092)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) get_typed_key_script() Variant {
	mut result := Variant{}
	fnname := StringName.new("get_typed_key_script")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 1460142086)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) get_typed_value_script() Variant {
	mut result := Variant{}
	fnname := StringName.new("get_typed_value_script")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 1460142086)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) make_read_only() {
	fnname := StringName.new("make_read_only")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &Dictionary) is_read_only() bool {
	mut result := false
	fnname := StringName.new("is_read_only")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Dictionary) recursive_equal(dictionary Dictionary, recursion_count i64) bool {
	mut result := false
	fnname := StringName.new("recursive_equal")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 1404404751)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&dictionary)
	args[1] = voidptr(&recursion_count)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (v &Dictionary) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_dictionary)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t Dictionary) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_dictionary)
	variant_to_type(voidptr(&t), var)
}

pub fn (v &Dictionary) index_get(i &Variant) ?Variant {
	as_var := v.to_variant()
	ret := Variant{}
	suc := GDExtensionBool(false)
	gdf.variant_get(&as_var, i, voidptr(&ret), &suc)
	if suc != GDExtensionBool(true) {
	return none
	}
	return ret
}

pub fn (v &Dictionary) index_get_named(sn &StringName) ?Variant {
	as_var := v.to_variant()
	ret := Variant{}
	suc := GDExtensionBool(false)
	gdf.variant_get_named(&as_var, sn, voidptr(&ret), &suc)
	if suc != GDExtensionBool(true) {
	return none
	}
	return ret
}

pub fn (v &Dictionary) index_get_keyed(i &Variant) ?Variant {
	as_var := v.to_variant()
	ret := Variant{}
	suc := GDExtensionBool(false)
	gdf.variant_get_keyed(&as_var, i, voidptr(&ret), &suc)
	if suc != GDExtensionBool(true) {
	return none
	}
	return ret
}

pub fn (v &Dictionary) index_set(key &Variant, value &Variant) ! {
	as_var := v.to_variant()
	suc := GDExtensionBool(false)
	gdf.variant_set(&as_var, key, value, &suc)
	if suc != GDExtensionBool(true) {
	return error("invalid set on Dictionary")
	}
}

pub fn (v &Dictionary) index_set_named(key &StringName, value &Variant) ! {
	as_var := v.to_variant()
	suc := GDExtensionBool(false)
	gdf.variant_set_named(&as_var, key, value, &suc)
	if suc != GDExtensionBool(true) {
	return error("invalid set_named on Dictionary")
	}
}

pub fn (v &Dictionary) index_set_keyed(key &Variant, value &Variant) ! {
	as_var := v.to_variant()
	suc := GDExtensionBool(false)
	gdf.variant_set_keyed(&as_var, key, value, &suc)
	if suc != GDExtensionBool(true) {
	return error("invalid set_keyed on Dictionary")
	}
}

pub fn (a Dictionary) == (b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_dictionary, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Dictionary) eq_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_dictionary, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Dictionary) ne_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_dictionary, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Dictionary) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_dictionary, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Dictionary) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_dictionary, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
