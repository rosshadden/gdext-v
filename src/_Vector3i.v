module gd

pub enum Vector3iAxis as i64 {
	axis_x = 0
	axis_y = 1
	axis_z = 2
}

@[packed]
pub struct Vector3i {
pub mut:
	x i32 // offset 0
	y i32 // offset 4
	z i32 // offset 8
}

pub fn Vector3i.new0() Vector3i {
	mut inst := Vector3i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3i, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn Vector3i.new1(from &Vector3i) Vector3i {
	mut inst := Vector3i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3i, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Vector3i.new2(from &Vector3) Vector3i {
	mut inst := Vector3i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3i, 2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Vector3i.new3(x &i64, y &i64, z &i64) Vector3i {
	mut inst := Vector3i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3i, 3)
	mut args := unsafe { [3]voidptr{} }
	args[0] = x
	args[1] = y
	args[2] = z
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &Vector3i) min_axis_index() i64 {
	mut result := i64(0)
	fnname := StringName.new("min_axis_index")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) max_axis_index() i64 {
	mut result := i64(0)
	fnname := StringName.new("max_axis_index")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) distance_to(to Vector3i) f64 {
	mut result := f64(0)
	fnname := StringName.new("distance_to")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 1975170430)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) distance_squared_to(to Vector3i) i64 {
	mut result := i64(0)
	fnname := StringName.new("distance_squared_to")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 2947717320)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) length() f64 {
	mut result := f64(0)
	fnname := StringName.new("length")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 466405837)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) length_squared() i64 {
	mut result := i64(0)
	fnname := StringName.new("length_squared")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 3173160232)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) sign() Vector3i {
	mut result := Vector3i{}
	fnname := StringName.new("sign")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 3729604559)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) abs() Vector3i {
	mut result := Vector3i{}
	fnname := StringName.new("abs")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 3729604559)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) clamp(min Vector3i, max Vector3i) Vector3i {
	mut result := Vector3i{}
	fnname := StringName.new("clamp")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 1086892323)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min)
	args[1] = voidptr(&max)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) clampi(min i64, max i64) Vector3i {
	mut result := Vector3i{}
	fnname := StringName.new("clampi")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 1077216921)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min)
	args[1] = voidptr(&max)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) snapped(step Vector3i) Vector3i {
	mut result := Vector3i{}
	fnname := StringName.new("snapped")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 1989319750)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&step)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) snappedi(step i64) Vector3i {
	mut result := Vector3i{}
	fnname := StringName.new("snappedi")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 2377625641)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&step)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) min(with Vector3i) Vector3i {
	mut result := Vector3i{}
	fnname := StringName.new("min")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 1989319750)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) mini(with i64) Vector3i {
	mut result := Vector3i{}
	fnname := StringName.new("mini")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 2377625641)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) max(with Vector3i) Vector3i {
	mut result := Vector3i{}
	fnname := StringName.new("max")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 1989319750)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Vector3i) maxi(with i64) Vector3i {
	mut result := Vector3i{}
	fnname := StringName.new("maxi")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 2377625641)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (v &Vector3i) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector3i)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t Vector3i) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_vector3i)
	variant_to_type(voidptr(&t), var)
}

pub fn (v &Vector3i) index(i i64) i64 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector3i)
	mut result := i64(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&result))
	return result
}

pub fn (a Vector3i) mul_i64(b i64) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_i64)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) div_i64(b i64) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_i64)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) mod_i64(b i64) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_i64)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) mul_f64(b f64) Vector3 {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_f64)
	res := Vector3{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) div_f64(b f64) Vector3 {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_f64)
	res := Vector3{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) == (b Vector3i) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) eq_vector3i(b Vector3i) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) ne_vector3i(b Vector3i) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) < (b Vector3i) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) lt_vector3i(b Vector3i) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) le_vector3i(b Vector3i) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less_equal, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) gt_vector3i(b Vector3i) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_greater, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) ge_vector3i(b Vector3i) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_greater_equal, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) + (b Vector3i) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) add_vector3i(b Vector3i) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) - (b Vector3i) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_subtract, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) sub_vector3i(b Vector3i) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_subtract, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) * (b Vector3i) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) mul_vector3i(b Vector3i) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) / (b Vector3i) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) div_vector3i(b Vector3i) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) % (b Vector3i) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) mod_vector3i(b Vector3i) Vector3i {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_vector3i)
	res := Vector3i{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Vector3i) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_vector3i, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
