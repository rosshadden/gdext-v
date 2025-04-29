module gd

@[packed]
pub struct Rect2 {
pub mut:
	position Vector2 // offset 0
	size Vector2 // offset 8
}

pub fn Rect2.new0() Rect2 {
	mut inst := Rect2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn Rect2.new1(from &Rect2) Rect2 {
	mut inst := Rect2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Rect2.new2(from &Rect2i) Rect2 {
	mut inst := Rect2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2, 2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Rect2.new3(position &Vector2, size &Vector2) Rect2 {
	mut inst := Rect2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2, 3)
	mut args := unsafe { [2]voidptr{} }
	args[0] = position
	args[1] = size
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Rect2.new4(x &f64, y &f64, width &f64, height &f64) Rect2 {
	mut inst := Rect2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2, 4)
	mut args := unsafe { [4]voidptr{} }
	args[0] = x
	args[1] = y
	args[2] = width
	args[3] = height
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &Rect2) get_center() Vector2 {
	mut result := Vector2{}
	fnname := StringName.new("get_center")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 2428350749)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) get_area() f64 {
	mut result := f64(0)
	fnname := StringName.new("get_area")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 466405837)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) has_area() bool {
	mut result := false
	fnname := StringName.new("has_area")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) has_point(point Vector2) bool {
	mut result := false
	fnname := StringName.new("has_point")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 3190634762)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&point)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) is_equal_approx(rect Rect2) bool {
	mut result := false
	fnname := StringName.new("is_equal_approx")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 1908192260)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&rect)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) is_finite() bool {
	mut result := false
	fnname := StringName.new("is_finite")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) intersects(b Rect2, include_borders bool) bool {
	mut result := false
	fnname := StringName.new("intersects")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 819294880)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&b)
	args[1] = voidptr(&include_borders)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) encloses(b Rect2) bool {
	mut result := false
	fnname := StringName.new("encloses")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 1908192260)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) intersection(b Rect2) Rect2 {
	mut result := Rect2{}
	fnname := StringName.new("intersection")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 2282977743)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) merge(b Rect2) Rect2 {
	mut result := Rect2{}
	fnname := StringName.new("merge")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 2282977743)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) expand(to Vector2) Rect2 {
	mut result := Rect2{}
	fnname := StringName.new("expand")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 293272265)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) get_support(direction Vector2) Vector2 {
	mut result := Vector2{}
	fnname := StringName.new("get_support")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 2026743667)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&direction)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) grow(amount f64) Rect2 {
	mut result := Rect2{}
	fnname := StringName.new("grow")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 39664498)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&amount)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) grow_side(side i64, amount f64) Rect2 {
	mut result := Rect2{}
	fnname := StringName.new("grow_side")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 4177736158)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&side)
	args[1] = voidptr(&amount)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) grow_individual(left f64, top f64, right f64, bottom f64) Rect2 {
	mut result := Rect2{}
	fnname := StringName.new("grow_individual")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 3203390369)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&left)
	args[1] = voidptr(&top)
	args[2] = voidptr(&right)
	args[3] = voidptr(&bottom)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 4)
	fnname.deinit()
	return result
}

pub fn (s &Rect2) abs() Rect2 {
	mut result := Rect2{}
	fnname := StringName.new("abs")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 3107653634)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (v &Rect2) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_rect2)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t Rect2) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_rect2)
	variant_to_type(voidptr(&t), var)
}

pub fn (a Rect2) == (b Rect2) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_rect2, GDExtensionVariantType.type_rect2)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Rect2) eq_rect2(b Rect2) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_rect2, GDExtensionVariantType.type_rect2)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Rect2) ne_rect2(b Rect2) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_rect2, GDExtensionVariantType.type_rect2)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Rect2) mul_transform2d(b Transform2D) Rect2 {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_rect2, GDExtensionVariantType.type_transform2d)
	res := Rect2{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Rect2) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_rect2, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Rect2) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_rect2, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
