module gd

@[packed]
pub struct Array {
	godot_data [8]u8 // filler
}

pub fn Array.new0() Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn Array.new1(from &Array) Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Array.new2(base &Array, type &i64, class_name &StringName, script &Variant) Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 2)
	mut args := unsafe { [4]voidptr{} }
	args[0] = base
	args[1] = type
	args[2] = class_name
	args[3] = script
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Array.new3(from &PackedByteArray) Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 3)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Array.new4(from &PackedInt32Array) Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 4)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Array.new5(from &PackedInt64Array) Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 5)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Array.new6(from &PackedFloat32Array) Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 6)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Array.new7(from &PackedFloat64Array) Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 7)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Array.new8(from &PackedStringArray) Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 8)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Array.new9(from &PackedVector2Array) Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 9)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Array.new10(from &PackedVector3Array) Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 10)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Array.new11(from &PackedColorArray) Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 11)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Array.new12(from &PackedVector4Array) Array {
	mut inst := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 12)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &Array) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_array)
	destructor(voidptr(s))
}

pub fn (s &Array) size() i64 {
	mut result := i64(0)
	fnname := StringName.new("size")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) is_empty() bool {
	mut result := false
	fnname := StringName.new("is_empty")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) clear() {
	fnname := StringName.new("clear")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &Array) hash() i64 {
	mut result := i64(0)
	fnname := StringName.new("hash")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) assign(array Array) {
	fnname := StringName.new("assign")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2307260970)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &Array) get(index i64) Variant {
	mut result := Variant{}
	fnname := StringName.new("get")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 708700221)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&index)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Array) set(index i64, value Variant) {
	fnname := StringName.new("set")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3798478031)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &Array) push_back(value Variant) {
	fnname := StringName.new("push_back")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &Array) push_front(value Variant) {
	fnname := StringName.new("push_front")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &Array) append(value Variant) {
	fnname := StringName.new("append")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &Array) append_array(array Array) {
	fnname := StringName.new("append_array")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2307260970)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &Array) resize(size i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("resize")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&size)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Array) insert(position i64, value Variant) i64 {
	mut result := i64(0)
	fnname := StringName.new("insert")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3176316662)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&position)
	args[1] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Array) remove_at(position i64) {
	fnname := StringName.new("remove_at")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2823966027)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &Array) fill(value Variant) {
	fnname := StringName.new("fill")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &Array) erase(value Variant) {
	fnname := StringName.new("erase")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &Array) front() Variant {
	mut result := Variant{}
	fnname := StringName.new("front")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) back() Variant {
	mut result := Variant{}
	fnname := StringName.new("back")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) pick_random() Variant {
	mut result := Variant{}
	fnname := StringName.new("pick_random")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) find(what Variant, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("find")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2336346817)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Array) find_custom(method Callable, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("find_custom")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2145562546)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&method)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Array) rfind(what Variant, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("rfind")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2336346817)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Array) rfind_custom(method Callable, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("rfind_custom")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2145562546)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&method)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Array) count(value Variant) i64 {
	mut result := i64(0)
	fnname := StringName.new("count")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1481661226)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Array) has(value Variant) bool {
	mut result := false
	fnname := StringName.new("has")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3680194679)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Array) pop_back() Variant {
	mut result := Variant{}
	fnname := StringName.new("pop_back")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1321915136)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) pop_front() Variant {
	mut result := Variant{}
	fnname := StringName.new("pop_front")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1321915136)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) pop_at(position i64) Variant {
	mut result := Variant{}
	fnname := StringName.new("pop_at")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3518259424)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&position)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Array) sort() {
	fnname := StringName.new("sort")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &Array) sort_custom(func Callable) {
	fnname := StringName.new("sort_custom")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3470848906)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &Array) shuffle() {
	fnname := StringName.new("shuffle")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &Array) bsearch(value Variant, before bool) i64 {
	mut result := i64(0)
	fnname := StringName.new("bsearch")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3372222236)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Array) bsearch_custom(value Variant, func Callable, before bool) i64 {
	mut result := i64(0)
	fnname := StringName.new("bsearch_custom")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 161317131)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&func)
	args[2] = voidptr(&before)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 3)
	fnname.deinit()
	return result
}

pub fn (s &Array) reverse() {
	fnname := StringName.new("reverse")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &Array) duplicate(deep bool) Array {
	mut result := Array{}
	fnname := StringName.new("duplicate")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 636440122)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&deep)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Array) slice(begin i64, end i64, step i64, deep bool) Array {
	mut result := Array{}
	fnname := StringName.new("slice")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1393718243)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	args[2] = voidptr(&step)
	args[3] = voidptr(&deep)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 4)
	fnname.deinit()
	return result
}

pub fn (s &Array) filter(method Callable) Array {
	mut result := Array{}
	fnname := StringName.new("filter")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4075186556)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&method)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Array) gd_map(method Callable) Array {
	mut result := Array{}
	fnname := StringName.new("map")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4075186556)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&method)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Array) reduce(method Callable, accum Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("reduce")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4272450342)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&method)
	args[1] = voidptr(&accum)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Array) any(method Callable) bool {
	mut result := false
	fnname := StringName.new("any")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4129521963)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&method)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Array) all(method Callable) bool {
	mut result := false
	fnname := StringName.new("all")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4129521963)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&method)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Array) max() Variant {
	mut result := Variant{}
	fnname := StringName.new("max")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) min() Variant {
	mut result := Variant{}
	fnname := StringName.new("min")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) is_typed() bool {
	mut result := false
	fnname := StringName.new("is_typed")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) is_same_typed(array Array) bool {
	mut result := false
	fnname := StringName.new("is_same_typed")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2988181878)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&array)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Array) get_typed_builtin() i64 {
	mut result := i64(0)
	fnname := StringName.new("get_typed_builtin")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) get_typed_class_name() StringName {
	mut result := StringName{}
	fnname := StringName.new("get_typed_class_name")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1825232092)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) get_typed_script() Variant {
	mut result := Variant{}
	fnname := StringName.new("get_typed_script")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Array) make_read_only() {
	fnname := StringName.new("make_read_only")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &Array) is_read_only() bool {
	mut result := false
	fnname := StringName.new("is_read_only")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (v &Array) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_array)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t Array) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_array)
	variant_to_type(voidptr(&t), var)
}

pub fn (v &Array) index(i i64) Variant {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_array)
	mut result := Variant{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&result))
	return result
}

pub fn (a Array) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_array, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Array) == (b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Array) eq_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Array) ne_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Array) < (b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Array) lt_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Array) le_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less_equal, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Array) gt_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_greater, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Array) ge_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_greater_equal, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Array) + (b Array) Array {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
	res := Array{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Array) add_array(b Array) Array {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
	res := Array{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Array) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
