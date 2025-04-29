module gd

@[packed]
pub struct PackedFloat32Array {
	godot_data [16]u8 // filler
}

pub fn PackedFloat32Array.new0() PackedFloat32Array {
	mut inst := PackedFloat32Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedfloat32array, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn PackedFloat32Array.new1(from &PackedFloat32Array) PackedFloat32Array {
	mut inst := PackedFloat32Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedfloat32array, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn PackedFloat32Array.new2(from &Array) PackedFloat32Array {
	mut inst := PackedFloat32Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedfloat32array, 2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &PackedFloat32Array) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedfloat32array)
	destructor(voidptr(s))
}

pub fn (s &PackedFloat32Array) get(index i64) f64 {
	mut result := f64(0)
	fnname := StringName.new("get")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 1401583798)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&index)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) set(index i64, value f64) {
	fnname := StringName.new("set")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 1113000516)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedFloat32Array) size() i64 {
	mut result := i64(0)
	fnname := StringName.new("size")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) is_empty() bool {
	mut result := false
	fnname := StringName.new("is_empty")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) push_back(value f64) bool {
	mut result := false
	fnname := StringName.new("push_back")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 4094791666)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) append(value f64) bool {
	mut result := false
	fnname := StringName.new("append")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 4094791666)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) append_array(array PackedFloat32Array) {
	fnname := StringName.new("append_array")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 2981316639)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &PackedFloat32Array) remove_at(index i64) {
	fnname := StringName.new("remove_at")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 2823966027)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &PackedFloat32Array) insert(at_index i64, value f64) i64 {
	mut result := i64(0)
	fnname := StringName.new("insert")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 1379903876)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) fill(value f64) {
	fnname := StringName.new("fill")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 833936903)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &PackedFloat32Array) resize(new_size i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("resize")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) clear() {
	fnname := StringName.new("clear")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &PackedFloat32Array) has(value f64) bool {
	mut result := false
	fnname := StringName.new("has")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 1296369134)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) reverse() {
	fnname := StringName.new("reverse")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &PackedFloat32Array) slice(begin i64, end i64) PackedFloat32Array {
	mut result := PackedFloat32Array{}
	fnname := StringName.new("slice")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 1418229160)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) to_byte_array() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("to_byte_array")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 247621236)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) sort() {
	fnname := StringName.new("sort")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &PackedFloat32Array) bsearch(value f64, before bool) i64 {
	mut result := i64(0)
	fnname := StringName.new("bsearch")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 1188816338)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) duplicate() PackedFloat32Array {
	mut result := PackedFloat32Array{}
	fnname := StringName.new("duplicate")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 831114784)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) find(value f64, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("find")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 1343150241)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) rfind(value f64, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("rfind")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 1343150241)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) count(value f64) i64 {
	mut result := i64(0)
	fnname := StringName.new("count")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 2859915090)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedFloat32Array) erase(value f64) bool {
	mut result := false
	fnname := StringName.new("erase")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array, voidptr(&fnname), 4094791666)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (v &PackedFloat32Array) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedfloat32array)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t PackedFloat32Array) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_packedfloat32array)
	variant_to_type(voidptr(&t), var)
}

pub fn (v &PackedFloat32Array) index(i i64) f64 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedfloat32array)
	mut result := f64(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&result))
	return result
}

pub fn (a PackedFloat32Array) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedfloat32array, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedFloat32Array) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedfloat32array, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedFloat32Array) == (b PackedFloat32Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedfloat32array, GDExtensionVariantType.type_packedfloat32array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedFloat32Array) eq_packedfloat32array(b PackedFloat32Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedfloat32array, GDExtensionVariantType.type_packedfloat32array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedFloat32Array) ne_packedfloat32array(b PackedFloat32Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_packedfloat32array, GDExtensionVariantType.type_packedfloat32array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedFloat32Array) + (b PackedFloat32Array) PackedFloat32Array {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedfloat32array, GDExtensionVariantType.type_packedfloat32array)
	res := PackedFloat32Array{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedFloat32Array) add_packedfloat32array(b PackedFloat32Array) PackedFloat32Array {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedfloat32array, GDExtensionVariantType.type_packedfloat32array)
	res := PackedFloat32Array{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
