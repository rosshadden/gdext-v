module gd

@[packed]
pub struct StringName {
	godot_data [8]u8 // filler
}

pub fn StringName.new0() StringName {
	mut inst := StringName{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_stringname, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn StringName.new1(from &StringName) StringName {
	mut inst := StringName{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_stringname, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn StringName.new2(from &String) StringName {
	mut inst := StringName{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_stringname, 2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &StringName) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_stringname)
	destructor(voidptr(s))
}

pub fn (s &StringName) casecmp_to(to String) i64 {
	mut result := i64(0)
	fnname := StringName.new("casecmp_to")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) nocasecmp_to(to String) i64 {
	mut result := i64(0)
	fnname := StringName.new("nocasecmp_to")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) naturalcasecmp_to(to String) i64 {
	mut result := i64(0)
	fnname := StringName.new("naturalcasecmp_to")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) naturalnocasecmp_to(to String) i64 {
	mut result := i64(0)
	fnname := StringName.new("naturalnocasecmp_to")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) filecasecmp_to(to String) i64 {
	mut result := i64(0)
	fnname := StringName.new("filecasecmp_to")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) filenocasecmp_to(to String) i64 {
	mut result := i64(0)
	fnname := StringName.new("filenocasecmp_to")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) length() i64 {
	mut result := i64(0)
	fnname := StringName.new("length")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) substr(from i64, len i64) String {
	mut result := String{}
	fnname := StringName.new("substr")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 787537301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&len)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) get_slice(delimiter String, slice i64) String {
	mut result := String{}
	fnname := StringName.new("get_slice")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3535100402)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&slice)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) get_slicec(delimiter i64, slice i64) String {
	mut result := String{}
	fnname := StringName.new("get_slicec")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 787537301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&slice)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) get_slice_count(delimiter String) i64 {
	mut result := i64(0)
	fnname := StringName.new("get_slice_count")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&delimiter)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) find(what String, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("find")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) findn(what String, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("findn")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) count(what String, from i64, to i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("count")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2343087891)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	args[2] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 3)
	fnname.deinit()
	return result
}

pub fn (s &StringName) countn(what String, from i64, to i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("countn")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2343087891)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	args[2] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 3)
	fnname.deinit()
	return result
}

pub fn (s &StringName) rfind(what String, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("rfind")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) rfindn(what String, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("rfindn")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) gd_match(expr String) bool {
	mut result := false
	fnname := StringName.new("match")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&expr)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) matchn(expr String) bool {
	mut result := false
	fnname := StringName.new("matchn")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&expr)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) begins_with(text String) bool {
	mut result := false
	fnname := StringName.new("begins_with")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) ends_with(text String) bool {
	mut result := false
	fnname := StringName.new("ends_with")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_subsequence_of(text String) bool {
	mut result := false
	fnname := StringName.new("is_subsequence_of")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_subsequence_ofn(text String) bool {
	mut result := false
	fnname := StringName.new("is_subsequence_ofn")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) bigrams() PackedStringArray {
	mut result := PackedStringArray{}
	fnname := StringName.new("bigrams")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 747180633)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) similarity(text String) f64 {
	mut result := f64(0)
	fnname := StringName.new("similarity")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2697460964)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) format(values Variant, placeholder String) String {
	mut result := String{}
	fnname := StringName.new("format")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3212199029)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&values)
	args[1] = voidptr(&placeholder)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) replace(what String, forwhat String) String {
	mut result := String{}
	fnname := StringName.new("replace")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1340436205)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&forwhat)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) replacen(what String, forwhat String) String {
	mut result := String{}
	fnname := StringName.new("replacen")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1340436205)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&forwhat)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) replace_char(key i64, with i64) String {
	mut result := String{}
	fnname := StringName.new("replace_char")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 787537301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&key)
	args[1] = voidptr(&with)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) replace_chars(keys String, with i64) String {
	mut result := String{}
	fnname := StringName.new("replace_chars")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3535100402)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&keys)
	args[1] = voidptr(&with)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) remove_char(what i64) String {
	mut result := String{}
	fnname := StringName.new("remove_char")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&what)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) remove_chars(chars String) String {
	mut result := String{}
	fnname := StringName.new("remove_chars")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&chars)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) repeat(count i64) String {
	mut result := String{}
	fnname := StringName.new("repeat")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&count)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) reverse() String {
	mut result := String{}
	fnname := StringName.new("reverse")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) insert(position i64, what String) String {
	mut result := String{}
	fnname := StringName.new("insert")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 248737229)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&position)
	args[1] = voidptr(&what)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) erase(position i64, chars i64) String {
	mut result := String{}
	fnname := StringName.new("erase")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 787537301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&position)
	args[1] = voidptr(&chars)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) capitalize() String {
	mut result := String{}
	fnname := StringName.new("capitalize")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_camel_case() String {
	mut result := String{}
	fnname := StringName.new("to_camel_case")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_pascal_case() String {
	mut result := String{}
	fnname := StringName.new("to_pascal_case")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_snake_case() String {
	mut result := String{}
	fnname := StringName.new("to_snake_case")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_kebab_case() String {
	mut result := String{}
	fnname := StringName.new("to_kebab_case")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) split(delimiter String, allow_empty bool, maxsplit i64) PackedStringArray {
	mut result := PackedStringArray{}
	fnname := StringName.new("split")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1252735785)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&allow_empty)
	args[2] = voidptr(&maxsplit)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 3)
	fnname.deinit()
	return result
}

pub fn (s &StringName) rsplit(delimiter String, allow_empty bool, maxsplit i64) PackedStringArray {
	mut result := PackedStringArray{}
	fnname := StringName.new("rsplit")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1252735785)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&allow_empty)
	args[2] = voidptr(&maxsplit)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 3)
	fnname.deinit()
	return result
}

pub fn (s &StringName) split_floats(delimiter String, allow_empty bool) PackedFloat64Array {
	mut result := PackedFloat64Array{}
	fnname := StringName.new("split_floats")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2092079095)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&allow_empty)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) join(parts PackedStringArray) String {
	mut result := String{}
	fnname := StringName.new("join")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3595973238)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&parts)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_upper() String {
	mut result := String{}
	fnname := StringName.new("to_upper")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_lower() String {
	mut result := String{}
	fnname := StringName.new("to_lower")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) left(length i64) String {
	mut result := String{}
	fnname := StringName.new("left")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&length)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) right(length i64) String {
	mut result := String{}
	fnname := StringName.new("right")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&length)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) strip_edges(left bool, right bool) String {
	mut result := String{}
	fnname := StringName.new("strip_edges")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 907855311)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&left)
	args[1] = voidptr(&right)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) strip_escapes() String {
	mut result := String{}
	fnname := StringName.new("strip_escapes")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) lstrip(chars String) String {
	mut result := String{}
	fnname := StringName.new("lstrip")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&chars)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) rstrip(chars String) String {
	mut result := String{}
	fnname := StringName.new("rstrip")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&chars)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) get_extension() String {
	mut result := String{}
	fnname := StringName.new("get_extension")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) get_basename() String {
	mut result := String{}
	fnname := StringName.new("get_basename")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) path_join(file String) String {
	mut result := String{}
	fnname := StringName.new("path_join")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&file)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) unicode_at(at i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("unicode_at")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&at)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) indent(prefix String) String {
	mut result := String{}
	fnname := StringName.new("indent")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&prefix)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) dedent() String {
	mut result := String{}
	fnname := StringName.new("dedent")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) md5_text() String {
	mut result := String{}
	fnname := StringName.new("md5_text")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) sha1_text() String {
	mut result := String{}
	fnname := StringName.new("sha1_text")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) sha256_text() String {
	mut result := String{}
	fnname := StringName.new("sha256_text")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) md5_buffer() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("md5_buffer")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) sha1_buffer() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("sha1_buffer")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) sha256_buffer() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("sha256_buffer")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_empty() bool {
	mut result := false
	fnname := StringName.new("is_empty")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) contains(what String) bool {
	mut result := false
	fnname := StringName.new("contains")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&what)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) containsn(what String) bool {
	mut result := false
	fnname := StringName.new("containsn")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&what)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_absolute_path() bool {
	mut result := false
	fnname := StringName.new("is_absolute_path")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_relative_path() bool {
	mut result := false
	fnname := StringName.new("is_relative_path")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) simplify_path() String {
	mut result := String{}
	fnname := StringName.new("simplify_path")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) get_base_dir() String {
	mut result := String{}
	fnname := StringName.new("get_base_dir")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) get_file() String {
	mut result := String{}
	fnname := StringName.new("get_file")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) xml_escape(escape_quotes bool) String {
	mut result := String{}
	fnname := StringName.new("xml_escape")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3429816538)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&escape_quotes)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) xml_unescape() String {
	mut result := String{}
	fnname := StringName.new("xml_unescape")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) uri_encode() String {
	mut result := String{}
	fnname := StringName.new("uri_encode")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) uri_decode() String {
	mut result := String{}
	fnname := StringName.new("uri_decode")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) uri_file_decode() String {
	mut result := String{}
	fnname := StringName.new("uri_file_decode")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) c_escape() String {
	mut result := String{}
	fnname := StringName.new("c_escape")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) c_unescape() String {
	mut result := String{}
	fnname := StringName.new("c_unescape")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) json_escape() String {
	mut result := String{}
	fnname := StringName.new("json_escape")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) validate_node_name() String {
	mut result := String{}
	fnname := StringName.new("validate_node_name")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) validate_filename() String {
	mut result := String{}
	fnname := StringName.new("validate_filename")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_valid_ascii_identifier() bool {
	mut result := false
	fnname := StringName.new("is_valid_ascii_identifier")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_valid_unicode_identifier() bool {
	mut result := false
	fnname := StringName.new("is_valid_unicode_identifier")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_valid_identifier() bool {
	mut result := false
	fnname := StringName.new("is_valid_identifier")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_valid_int() bool {
	mut result := false
	fnname := StringName.new("is_valid_int")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_valid_float() bool {
	mut result := false
	fnname := StringName.new("is_valid_float")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_valid_hex_number(with_prefix bool) bool {
	mut result := false
	fnname := StringName.new("is_valid_hex_number")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 593672999)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with_prefix)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_valid_html_color() bool {
	mut result := false
	fnname := StringName.new("is_valid_html_color")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_valid_ip_address() bool {
	mut result := false
	fnname := StringName.new("is_valid_ip_address")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) is_valid_filename() bool {
	mut result := false
	fnname := StringName.new("is_valid_filename")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_int() i64 {
	mut result := i64(0)
	fnname := StringName.new("to_int")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_float() f64 {
	mut result := f64(0)
	fnname := StringName.new("to_float")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 466405837)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) hex_to_int() i64 {
	mut result := i64(0)
	fnname := StringName.new("hex_to_int")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) bin_to_int() i64 {
	mut result := i64(0)
	fnname := StringName.new("bin_to_int")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) lpad(min_length i64, character String) String {
	mut result := String{}
	fnname := StringName.new("lpad")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 248737229)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min_length)
	args[1] = voidptr(&character)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) rpad(min_length i64, character String) String {
	mut result := String{}
	fnname := StringName.new("rpad")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 248737229)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min_length)
	args[1] = voidptr(&character)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &StringName) pad_decimals(digits i64) String {
	mut result := String{}
	fnname := StringName.new("pad_decimals")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&digits)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) pad_zeros(digits i64) String {
	mut result := String{}
	fnname := StringName.new("pad_zeros")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&digits)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) trim_prefix(prefix String) String {
	mut result := String{}
	fnname := StringName.new("trim_prefix")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&prefix)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) trim_suffix(suffix String) String {
	mut result := String{}
	fnname := StringName.new("trim_suffix")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&suffix)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_ascii_buffer() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("to_ascii_buffer")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_utf8_buffer() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("to_utf8_buffer")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_utf16_buffer() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("to_utf16_buffer")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_utf32_buffer() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("to_utf32_buffer")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_wchar_buffer() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("to_wchar_buffer")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) to_multibyte_char_buffer(encoding String) PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("to_multibyte_char_buffer")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3055765187)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&encoding)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &StringName) hex_decode() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("hex_decode")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &StringName) hash() i64 {
	mut result := i64(0)
	fnname := StringName.new("hash")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (v &StringName) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_stringname)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t StringName) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_stringname)
	variant_to_type(voidptr(&t), var)
}

pub fn (a StringName) mod_bool(b bool) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_bool)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_i64(b i64) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_i64)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_f64(b f64) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_f64)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) eq_string(b String) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_string)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) ne_string(b String) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_string)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) add_string(b String) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_string)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_string(b String) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_string)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) in_string(b String) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_string)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_vector2(b Vector2) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_vector2)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_vector2i(b Vector2i) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_vector2i)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_rect2(b Rect2) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_rect2)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_rect2i(b Rect2i) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_rect2i)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_vector3(b Vector3) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_vector3)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_vector3i(b Vector3i) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_vector3i)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_transform2d(b Transform2D) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_transform2d)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_vector4(b Vector4) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_vector4)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_vector4i(b Vector4i) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_vector4i)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_plane(b Plane) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_plane)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_quaternion(b Quaternion) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_quaternion)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_aabb(b AABB) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_aabb)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_basis(b Basis) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_basis)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_transform3d(b Transform3D) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_transform3d)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_projection(b Projection) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_projection)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_color(b Color) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_color)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) == (b StringName) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) eq_stringname(b StringName) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) ne_stringname(b StringName) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) < (b StringName) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) lt_stringname(b StringName) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) le_stringname(b StringName) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less_equal, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) gt_stringname(b StringName) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_greater, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) ge_stringname(b StringName) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_greater_equal, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) + (b StringName) StringName {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := StringName{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) add_stringname(b StringName) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) % (b StringName) StringName {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := StringName{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_stringname(b StringName) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) in_stringname(b StringName) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_stringname)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_nodepath(b NodePath) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_nodepath)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_object(b Object) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_object)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) in_object(b Object) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_object)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_callable(b Callable) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_callable)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_signal(b Signal) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_signal)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_dictionary(b Dictionary) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_dictionary)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_array(b Array) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_array)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_packedbytearray(b PackedByteArray) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_packedbytearray)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_packedint32array(b PackedInt32Array) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_packedint32array)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_packedint64array(b PackedInt64Array) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_packedint64array)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_packedfloat32array(b PackedFloat32Array) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_packedfloat32array)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_packedfloat64array(b PackedFloat64Array) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_packedfloat64array)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_packedstringarray(b PackedStringArray) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_packedstringarray)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) in_packedstringarray(b PackedStringArray) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_packedstringarray)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_packedvector2array(b PackedVector2Array) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_packedvector2array)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_packedvector3array(b PackedVector3Array) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_packedvector3array)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_packedcolorarray(b PackedColorArray) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_packedcolorarray)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a StringName) mod_packedvector4array(b PackedVector4Array) String {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_stringname, GDExtensionVariantType.type_packedvector4array)
	res := String{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
