module gd

@[packed]
pub struct PackedByteArray {
	godot_data [16]u8 // filler
}

pub fn PackedByteArray.new0() PackedByteArray {
	mut inst := PackedByteArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedbytearray, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn PackedByteArray.new1(from &PackedByteArray) PackedByteArray {
	mut inst := PackedByteArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedbytearray, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn PackedByteArray.new2(from &Array) PackedByteArray {
	mut inst := PackedByteArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedbytearray, 2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &PackedByteArray) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedbytearray)
	destructor(voidptr(s))
}

pub fn (s &PackedByteArray) get(index i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("get")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&index)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) set(index i64, value i64) {
	fnname := StringName.new("set")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) size() i64 {
	mut result := i64(0)
	fnname := StringName.new("size")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) is_empty() bool {
	mut result := false
	fnname := StringName.new("is_empty")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) push_back(value i64) bool {
	mut result := false
	fnname := StringName.new("push_back")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 694024632)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) append(value i64) bool {
	mut result := false
	fnname := StringName.new("append")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 694024632)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) append_array(array PackedByteArray) {
	fnname := StringName.new("append_array")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 791097111)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &PackedByteArray) remove_at(index i64) {
	fnname := StringName.new("remove_at")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2823966027)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &PackedByteArray) insert(at_index i64, value i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("insert")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1487112728)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) fill(value i64) {
	fnname := StringName.new("fill")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2823966027)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 1)
	fnname.deinit()
}

pub fn (s &PackedByteArray) resize(new_size i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("resize")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) clear() {
	fnname := StringName.new("clear")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &PackedByteArray) has(value i64) bool {
	mut result := false
	fnname := StringName.new("has")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 931488181)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) reverse() {
	fnname := StringName.new("reverse")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &PackedByteArray) slice(begin i64, end i64) PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("slice")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2278869132)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) sort() {
	fnname := StringName.new("sort")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3218959716)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn (s &PackedByteArray) bsearch(value i64, before bool) i64 {
	mut result := i64(0)
	fnname := StringName.new("bsearch")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3380005890)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) duplicate() PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("duplicate")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 851781288)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) find(value i64, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("find")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2984303840)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) rfind(value i64, from i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("rfind")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2984303840)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) count(value i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("count")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) erase(value i64) bool {
	mut result := false
	fnname := StringName.new("erase")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 694024632)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) get_string_from_ascii() String {
	mut result := String{}
	fnname := StringName.new("get_string_from_ascii")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) get_string_from_utf8() String {
	mut result := String{}
	fnname := StringName.new("get_string_from_utf8")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) get_string_from_utf16() String {
	mut result := String{}
	fnname := StringName.new("get_string_from_utf16")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) get_string_from_utf32() String {
	mut result := String{}
	fnname := StringName.new("get_string_from_utf32")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) get_string_from_wchar() String {
	mut result := String{}
	fnname := StringName.new("get_string_from_wchar")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) get_string_from_multibyte_char(encoding String) String {
	mut result := String{}
	fnname := StringName.new("get_string_from_multibyte_char")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&encoding)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) hex_encode() String {
	mut result := String{}
	fnname := StringName.new("hex_encode")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3942272618)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) compress(compression_mode i64) PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("compress")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1845905913)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&compression_mode)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decompress(buffer_size i64, compression_mode i64) PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("decompress")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2278869132)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&buffer_size)
	args[1] = voidptr(&compression_mode)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decompress_dynamic(max_output_size i64, compression_mode i64) PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("decompress_dynamic")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2278869132)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&max_output_size)
	args[1] = voidptr(&compression_mode)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_u8(byte_offset i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("decode_u8")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_s8(byte_offset i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("decode_s8")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_u16(byte_offset i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("decode_u16")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_s16(byte_offset i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("decode_s16")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_u32(byte_offset i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("decode_u32")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_s32(byte_offset i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("decode_s32")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_u64(byte_offset i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("decode_u64")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_s64(byte_offset i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("decode_s64")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_half(byte_offset i64) f64 {
	mut result := f64(0)
	fnname := StringName.new("decode_half")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1401583798)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_float(byte_offset i64) f64 {
	mut result := f64(0)
	fnname := StringName.new("decode_float")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1401583798)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_double(byte_offset i64) f64 {
	mut result := f64(0)
	fnname := StringName.new("decode_double")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1401583798)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) has_encoded_var(byte_offset i64, allow_objects bool) bool {
	mut result := false
	fnname := StringName.new("has_encoded_var")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2914632957)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&byte_offset)
	args[1] = voidptr(&allow_objects)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_var(byte_offset i64, allow_objects bool) Variant {
	mut result := Variant{}
	fnname := StringName.new("decode_var")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1740420038)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&byte_offset)
	args[1] = voidptr(&allow_objects)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) decode_var_size(byte_offset i64, allow_objects bool) i64 {
	mut result := i64(0)
	fnname := StringName.new("decode_var_size")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 954237325)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&byte_offset)
	args[1] = voidptr(&allow_objects)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) to_int32_array() PackedInt32Array {
	mut result := PackedInt32Array{}
	fnname := StringName.new("to_int32_array")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3158844420)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) to_int64_array() PackedInt64Array {
	mut result := PackedInt64Array{}
	fnname := StringName.new("to_int64_array")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1961294120)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) to_float32_array() PackedFloat32Array {
	mut result := PackedFloat32Array{}
	fnname := StringName.new("to_float32_array")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3575107827)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) to_float64_array() PackedFloat64Array {
	mut result := PackedFloat64Array{}
	fnname := StringName.new("to_float64_array")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1627308337)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &PackedByteArray) bswap16(offset i64, count i64) {
	fnname := StringName.new("bswap16")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) bswap32(offset i64, count i64) {
	fnname := StringName.new("bswap32")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) bswap64(offset i64, count i64) {
	fnname := StringName.new("bswap64")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) encode_u8(byte_offset i64, value i64) {
	fnname := StringName.new("encode_u8")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) encode_s8(byte_offset i64, value i64) {
	fnname := StringName.new("encode_s8")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) encode_u16(byte_offset i64, value i64) {
	fnname := StringName.new("encode_u16")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) encode_s16(byte_offset i64, value i64) {
	fnname := StringName.new("encode_s16")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) encode_u32(byte_offset i64, value i64) {
	fnname := StringName.new("encode_u32")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) encode_s32(byte_offset i64, value i64) {
	fnname := StringName.new("encode_s32")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) encode_u64(byte_offset i64, value i64) {
	fnname := StringName.new("encode_u64")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) encode_s64(byte_offset i64, value i64) {
	fnname := StringName.new("encode_s64")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) encode_half(byte_offset i64, value f64) {
	fnname := StringName.new("encode_half")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1113000516)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) encode_float(byte_offset i64, value f64) {
	fnname := StringName.new("encode_float")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1113000516)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) encode_double(byte_offset i64, value f64) {
	fnname := StringName.new("encode_double")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1113000516)
	f(voidptr(s), unsafe{nil}, unsafe{nil}, 2)
	fnname.deinit()
}

pub fn (s &PackedByteArray) encode_var(byte_offset i64, value Variant, allow_objects bool) i64 {
	mut result := i64(0)
	fnname := StringName.new("encode_var")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2604460497)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&byte_offset)
	args[1] = voidptr(&value)
	args[2] = voidptr(&allow_objects)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 3)
	fnname.deinit()
	return result
}

pub fn (v &PackedByteArray) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedbytearray)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t PackedByteArray) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_packedbytearray)
	variant_to_type(voidptr(&t), var)
}

pub fn (v &PackedByteArray) index(i i64) i64 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedbytearray)
	mut result := i64(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&result))
	return result
}

pub fn (a PackedByteArray) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedbytearray, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedByteArray) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedbytearray, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedByteArray) == (b PackedByteArray) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedbytearray, GDExtensionVariantType.type_packedbytearray)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedByteArray) eq_packedbytearray(b PackedByteArray) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedbytearray, GDExtensionVariantType.type_packedbytearray)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedByteArray) ne_packedbytearray(b PackedByteArray) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_packedbytearray, GDExtensionVariantType.type_packedbytearray)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedByteArray) + (b PackedByteArray) PackedByteArray {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedbytearray, GDExtensionVariantType.type_packedbytearray)
	res := PackedByteArray{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a PackedByteArray) add_packedbytearray(b PackedByteArray) PackedByteArray {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedbytearray, GDExtensionVariantType.type_packedbytearray)
	res := PackedByteArray{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
