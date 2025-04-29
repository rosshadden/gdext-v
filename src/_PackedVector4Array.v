module gd

@[packed]
pub struct PackedVector4Array {
	godot_data [16]u8 // filler
}

pub fn PackedVector4Array.new0() PackedVector4Array {
	mut inst := PackedVector4Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedvector4array, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn PackedVector4Array.new1(from &PackedVector4Array) PackedVector4Array {
	mut inst := PackedVector4Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedvector4array, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn PackedVector4Array.new2(from &Array) PackedVector4Array {
	mut inst := PackedVector4Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedvector4array, 2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &PackedVector4Array) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedvector4array)
	destructor(voidptr(s))
}

pub fn (s &PackedVector4Array) get(index i64) Vector4 {
	mut result := Vector4{}
	fnname := StringName.new("get")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 1227817084)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&index)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) set(index i64, value Vector4) {
	fnname := StringName.new("set")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 1350366223)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedVector4Array) size() i64 {
	mut result := i64(0)
	fnname := StringName.new("size")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) is_empty() bool {
	mut result := false
	fnname := StringName.new("is_empty")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) push_back(value Vector4) bool {
	mut result := false
	fnname := StringName.new("push_back")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3289167688)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) append(value Vector4) bool {
	mut result := false
	fnname := StringName.new("append")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3289167688)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) append_array(array PackedVector4Array) {
	fnname := StringName.new("append_array")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 537428395)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &PackedVector4Array) remove_at(index i64) {
	fnname := StringName.new("remove_at")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 2823966027)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &PackedVector4Array) insert(at_index i64, value Vector4) i64 {
	mut result := i64(0)
	fnname := StringName.new("insert")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 11085009)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) fill(value Vector4) {
	fnname := StringName.new("fill")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3761353134)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &PackedVector4Array) resize(new_size i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("resize")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) clear() {
	fnname := StringName.new("clear")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &PackedVector4Array) has(value Vector4) bool {
	mut result := false
	fnname := StringName.new("has")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 88913544)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) reverse() {
	fnname := StringName.new("reverse")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &PackedVector4Array) slice(begin i64, end i64) PackedVector4Array {
	mut result := PackedVector4Array{}
	fnname := StringName.new("slice")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 2942803855)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) to_byte_array() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("to_byte_array")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 247621236)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) sort() {
	fnname := StringName.new("sort")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &PackedVector4Array) bsearch(value Vector4, before bool) i64 {
	mut result := i64(0)
	fnname := StringName.new("bsearch")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 735671678)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) duplicate() PackedVector4Array {
	mut result := PackedVector4Array{}
	fnname := StringName.new("duplicate")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3186305013)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) find(value Vector4, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("find")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3091171314)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) rfind(value Vector4, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("rfind")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3091171314)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) count(value Vector4) i64 {
	mut result := i64(0)
	fnname := StringName.new("count")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3956594488)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedVector4Array) erase(value Vector4) bool {
	mut result := false
	fnname := StringName.new("erase")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector4array, voidptr(&fnname), 3289167688)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (v &PackedVector4Array) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedvector4array)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t PackedVector4Array) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_packedvector4array)
	variant_to_type(voidptr(&t), var)
}

pub fn (v &PackedVector4Array) index(i i64) Vector4 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedvector4array)
	mut result := Vector4{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&result))
	return result
}

pub fn (a PackedVector4Array) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedvector4array, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedVector4Array) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedvector4array, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedVector4Array) == (b PackedVector4Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedvector4array, GDExtensionVariantType.type_packedvector4array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedVector4Array) eq_packedvector4array(b PackedVector4Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedvector4array, GDExtensionVariantType.type_packedvector4array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedVector4Array) ne_packedvector4array(b PackedVector4Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_packedvector4array, GDExtensionVariantType.type_packedvector4array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedVector4Array) + (b PackedVector4Array) PackedVector4Array {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedvector4array, GDExtensionVariantType.type_packedvector4array)
	res := PackedVector4Array{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedVector4Array) add_packedvector4array(b PackedVector4Array) PackedVector4Array {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedvector4array, GDExtensionVariantType.type_packedvector4array)
	res := PackedVector4Array{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
