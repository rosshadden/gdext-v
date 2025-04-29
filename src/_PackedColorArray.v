module gd

@[packed]
pub struct PackedColorArray {
	godot_data [16]u8 // filler
}

pub fn PackedColorArray.new0() PackedColorArray {
	mut inst := PackedColorArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedcolorarray, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn PackedColorArray.new1(from &PackedColorArray) PackedColorArray {
	mut inst := PackedColorArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedcolorarray, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn PackedColorArray.new2(from &Array) PackedColorArray {
	mut inst := PackedColorArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedcolorarray, 2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &PackedColorArray) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedcolorarray)
	destructor(voidptr(s))
}

pub fn (s &PackedColorArray) get(index i64) Color {
	mut result := Color{}
	fnname := StringName.new("get")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 2972831132)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&index)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) set(index i64, value Color) {
	fnname := StringName.new("set")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 1444096570)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedColorArray) size() i64 {
	mut result := i64(0)
	fnname := StringName.new("size")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) is_empty() bool {
	mut result := false
	fnname := StringName.new("is_empty")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) push_back(value Color) bool {
	mut result := false
	fnname := StringName.new("push_back")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 1007858200)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) append(value Color) bool {
	mut result := false
	fnname := StringName.new("append")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 1007858200)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) append_array(array PackedColorArray) {
	fnname := StringName.new("append_array")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 798822497)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &PackedColorArray) remove_at(index i64) {
	fnname := StringName.new("remove_at")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 2823966027)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &PackedColorArray) insert(at_index i64, value Color) i64 {
	mut result := i64(0)
	fnname := StringName.new("insert")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 785289703)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) fill(value Color) {
	fnname := StringName.new("fill")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3730314301)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &PackedColorArray) resize(new_size i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("resize")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) clear() {
	fnname := StringName.new("clear")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &PackedColorArray) has(value Color) bool {
	mut result := false
	fnname := StringName.new("has")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3167426256)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) reverse() {
	fnname := StringName.new("reverse")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &PackedColorArray) slice(begin i64, end i64) PackedColorArray {
	mut result := PackedColorArray{}
	fnname := StringName.new("slice")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 2451797139)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) to_byte_array() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("to_byte_array")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 247621236)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) sort() {
	fnname := StringName.new("sort")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &PackedColorArray) bsearch(value Color, before bool) i64 {
	mut result := i64(0)
	fnname := StringName.new("bsearch")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 314143821)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) duplicate() PackedColorArray {
	mut result := PackedColorArray{}
	fnname := StringName.new("duplicate")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 1011903421)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) find(value Color, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("find")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3156095363)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) rfind(value Color, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("rfind")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3156095363)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) count(value Color) i64 {
	mut result := i64(0)
	fnname := StringName.new("count")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 1682108616)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedColorArray) erase(value Color) bool {
	mut result := false
	fnname := StringName.new("erase")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 1007858200)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (v &PackedColorArray) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedcolorarray)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t PackedColorArray) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_packedcolorarray)
	variant_to_type(voidptr(&t), var)
}

pub fn (v &PackedColorArray) index(i i64) Color {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedcolorarray)
	mut result := Color{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&result))
	return result
}

pub fn (a PackedColorArray) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedcolorarray, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedColorArray) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedcolorarray, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedColorArray) == (b PackedColorArray) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedcolorarray, GDExtensionVariantType.type_packedcolorarray)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedColorArray) eq_packedcolorarray(b PackedColorArray) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedcolorarray, GDExtensionVariantType.type_packedcolorarray)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedColorArray) ne_packedcolorarray(b PackedColorArray) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_packedcolorarray, GDExtensionVariantType.type_packedcolorarray)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedColorArray) + (b PackedColorArray) PackedColorArray {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedcolorarray, GDExtensionVariantType.type_packedcolorarray)
	res := PackedColorArray{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedColorArray) add_packedcolorarray(b PackedColorArray) PackedColorArray {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedcolorarray, GDExtensionVariantType.type_packedcolorarray)
	res := PackedColorArray{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
