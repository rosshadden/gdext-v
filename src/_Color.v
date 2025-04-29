module gd

@[packed]
pub struct Color {
pub mut:
	r f32 // offset 0
	g f32 // offset 4
	b f32 // offset 8
	a f32 // offset 12
}

pub fn Color.new0() Color {
	mut inst := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn Color.new1(from &Color) Color {
	mut inst := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Color.new2(from &Color, alpha &f64) Color {
	mut inst := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color, 2)
	mut args := unsafe { [2]voidptr{} }
	args[0] = from
	args[1] = alpha
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Color.new3(r &f64, g &f64, b &f64) Color {
	mut inst := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color, 3)
	mut args := unsafe { [3]voidptr{} }
	args[0] = r
	args[1] = g
	args[2] = b
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Color.new4(r &f64, g &f64, b &f64, a &f64) Color {
	mut inst := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color, 4)
	mut args := unsafe { [4]voidptr{} }
	args[0] = r
	args[1] = g
	args[2] = b
	args[3] = a
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Color.new5(code &String) Color {
	mut inst := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color, 5)
	mut args := unsafe { [1]voidptr{} }
	args[0] = code
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Color.new6(code &String, alpha &f64) Color {
	mut inst := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color, 6)
	mut args := unsafe { [2]voidptr{} }
	args[0] = code
	args[1] = alpha
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &Color) to_argb32() i64 {
	mut result := i64(0)
	fnname := StringName.new("to_argb32")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Color) to_abgr32() i64 {
	mut result := i64(0)
	fnname := StringName.new("to_abgr32")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Color) to_rgba32() i64 {
	mut result := i64(0)
	fnname := StringName.new("to_rgba32")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Color) to_argb64() i64 {
	mut result := i64(0)
	fnname := StringName.new("to_argb64")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Color) to_abgr64() i64 {
	mut result := i64(0)
	fnname := StringName.new("to_abgr64")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Color) to_rgba64() i64 {
	mut result := i64(0)
	fnname := StringName.new("to_rgba64")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Color) to_html(with_alpha bool) String {
	mut result := String{}
	fnname := StringName.new("to_html")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3429816538)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with_alpha)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Color) clamp(min Color, max Color) Color {
	mut result := Color{}
	fnname := StringName.new("clamp")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 105651410)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min)
	args[1] = voidptr(&max)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Color) inverted() Color {
	mut result := Color{}
	fnname := StringName.new("inverted")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3334027602)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Color) lerp(to Color, weight f64) Color {
	mut result := Color{}
	fnname := StringName.new("lerp")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 402949615)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&weight)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Color) lightened(amount f64) Color {
	mut result := Color{}
	fnname := StringName.new("lightened")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 1466039168)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&amount)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Color) darkened(amount f64) Color {
	mut result := Color{}
	fnname := StringName.new("darkened")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 1466039168)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&amount)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Color) blend(over Color) Color {
	mut result := Color{}
	fnname := StringName.new("blend")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3803690977)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&over)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Color) get_luminance() f64 {
	mut result := f64(0)
	fnname := StringName.new("get_luminance")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 466405837)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Color) srgb_to_linear() Color {
	mut result := Color{}
	fnname := StringName.new("srgb_to_linear")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3334027602)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Color) linear_to_srgb() Color {
	mut result := Color{}
	fnname := StringName.new("linear_to_srgb")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3334027602)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Color) is_equal_approx(to Color) bool {
	mut result := false
	fnname := StringName.new("is_equal_approx")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3167426256)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn Color.hex(hex i64) Color {
	mut result := Color{}
	fnname := StringName.new("hex")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 351421375)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&hex)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn Color.hex64(hex i64) Color {
	mut result := Color{}
	fnname := StringName.new("hex64")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 351421375)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&hex)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn Color.html(rgba String) Color {
	mut result := Color{}
	fnname := StringName.new("html")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 2500054655)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&rgba)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn Color.html_is_valid(color String) bool {
	mut result := false
	fnname := StringName.new("html_is_valid")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 2942997125)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&color)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn Color.from_string(str String, default Color) Color {
	mut result := Color{}
	fnname := StringName.new("from_string")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3755044230)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&str)
	args[1] = voidptr(&default)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn Color.from_hsv(h f64, s f64, v f64, alpha f64) Color {
	mut result := Color{}
	fnname := StringName.new("from_hsv")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 1573799446)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&h)
	args[1] = voidptr(&s)
	args[2] = voidptr(&v)
	args[3] = voidptr(&alpha)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 4)
	fnname.deinit()
	return result
}

pub fn Color.from_ok_hsl(h f64, s f64, l f64, alpha f64) Color {
	mut result := Color{}
	fnname := StringName.new("from_ok_hsl")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 1573799446)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&h)
	args[1] = voidptr(&s)
	args[2] = voidptr(&l)
	args[3] = voidptr(&alpha)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 4)
	fnname.deinit()
	return result
}

pub fn Color.from_rgbe9995(rgbe i64) Color {
	mut result := Color{}
	fnname := StringName.new("from_rgbe9995")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 351421375)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&rgbe)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn Color.from_rgba8(r8 i64, g8 i64, b8 i64, a8 i64) Color {
	mut result := Color{}
	fnname := StringName.new("from_rgba8")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname), 3072934735)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&r8)
	args[1] = voidptr(&g8)
	args[2] = voidptr(&b8)
	args[3] = voidptr(&a8)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 4)
	fnname.deinit()
	return result
}

pub fn (v &Color) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_color)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t Color) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_color)
	variant_to_type(voidptr(&t), var)
}

pub fn (v &Color) index(i i64) f64 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_color)
	mut result := f64(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&result))
	return result
}

pub fn (a Color) mul_i64(b i64) Color {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_color, GDExtensionVariantType.type_i64)
	res := Color{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) div_i64(b i64) Color {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_color, GDExtensionVariantType.type_i64)
	res := Color{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) mul_f64(b f64) Color {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_color, GDExtensionVariantType.type_f64)
	res := Color{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) div_f64(b f64) Color {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_color, GDExtensionVariantType.type_f64)
	res := Color{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) == (b Color) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_color, GDExtensionVariantType.type_color)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) eq_color(b Color) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_color, GDExtensionVariantType.type_color)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) ne_color(b Color) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_color, GDExtensionVariantType.type_color)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) + (b Color) Color {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_color, GDExtensionVariantType.type_color)
	res := Color{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) add_color(b Color) Color {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_color, GDExtensionVariantType.type_color)
	res := Color{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) - (b Color) Color {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_subtract, GDExtensionVariantType.type_color, GDExtensionVariantType.type_color)
	res := Color{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) sub_color(b Color) Color {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_subtract, GDExtensionVariantType.type_color, GDExtensionVariantType.type_color)
	res := Color{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) * (b Color) Color {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_color, GDExtensionVariantType.type_color)
	res := Color{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) mul_color(b Color) Color {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_color, GDExtensionVariantType.type_color)
	res := Color{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) / (b Color) Color {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_color, GDExtensionVariantType.type_color)
	res := Color{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) div_color(b Color) Color {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_color, GDExtensionVariantType.type_color)
	res := Color{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_color, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_color, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Color) in_packedcolorarray(b PackedColorArray) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_color, GDExtensionVariantType.type_packedcolorarray)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
