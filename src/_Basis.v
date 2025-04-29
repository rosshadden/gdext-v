module gd

@[packed]
pub struct Basis {
pub mut:
	x Vector3 // offset 0
	y Vector3 // offset 12
	z Vector3 // offset 24
}

pub fn Basis.new0() Basis {
	mut inst := Basis{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn Basis.new1(from &Basis) Basis {
	mut inst := Basis{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Basis.new2(from &Quaternion) Basis {
	mut inst := Basis{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis, 2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Basis.new3(axis &Vector3, angle &f64) Basis {
	mut inst := Basis{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis, 3)
	mut args := unsafe { [2]voidptr{} }
	args[0] = axis
	args[1] = angle
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Basis.new4(x_axis &Vector3, y_axis &Vector3, z_axis &Vector3) Basis {
	mut inst := Basis{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis, 4)
	mut args := unsafe { [3]voidptr{} }
	args[0] = x_axis
	args[1] = y_axis
	args[2] = z_axis
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &Basis) inverse() Basis {
	mut result := Basis{}
	fnname := StringName.new("inverse")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 594669093)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Basis) transposed() Basis {
	mut result := Basis{}
	fnname := StringName.new("transposed")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 594669093)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Basis) orthonormalized() Basis {
	mut result := Basis{}
	fnname := StringName.new("orthonormalized")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 594669093)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Basis) determinant() f64 {
	mut result := f64(0)
	fnname := StringName.new("determinant")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 466405837)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Basis) rotated(axis Vector3, angle f64) Basis {
	mut result := Basis{}
	fnname := StringName.new("rotated")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 1998708965)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&axis)
	args[1] = voidptr(&angle)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Basis) scaled(scale Vector3) Basis {
	mut result := Basis{}
	fnname := StringName.new("scaled")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3934786792)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scale)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Basis) get_scale() Vector3 {
	mut result := Vector3{}
	fnname := StringName.new("get_scale")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 1776574132)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Basis) get_euler(order i64) Vector3 {
	mut result := Vector3{}
	fnname := StringName.new("get_euler")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 1394941017)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&order)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Basis) tdotx(with Vector3) f64 {
	mut result := f64(0)
	fnname := StringName.new("tdotx")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 1047977935)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Basis) tdoty(with Vector3) f64 {
	mut result := f64(0)
	fnname := StringName.new("tdoty")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 1047977935)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Basis) tdotz(with Vector3) f64 {
	mut result := f64(0)
	fnname := StringName.new("tdotz")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 1047977935)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Basis) slerp(to Basis, weight f64) Basis {
	mut result := Basis{}
	fnname := StringName.new("slerp")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3118673011)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&weight)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Basis) is_conformal() bool {
	mut result := false
	fnname := StringName.new("is_conformal")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Basis) is_equal_approx(b Basis) bool {
	mut result := false
	fnname := StringName.new("is_equal_approx")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3165333982)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Basis) is_finite() bool {
	mut result := false
	fnname := StringName.new("is_finite")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Basis) get_rotation_quaternion() Quaternion {
	mut result := Quaternion{}
	fnname := StringName.new("get_rotation_quaternion")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 4274879941)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn Basis.looking_at(target Vector3, up Vector3, use_model_front bool) Basis {
	mut result := Basis{}
	fnname := StringName.new("looking_at")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3728732505)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&target)
	args[1] = voidptr(&up)
	args[2] = voidptr(&use_model_front)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 3)
	fnname.deinit()
	return result
}

pub fn Basis.from_scale(scale Vector3) Basis {
	mut result := Basis{}
	fnname := StringName.new("from_scale")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3703240166)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scale)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn Basis.from_euler(euler Vector3, order i64) Basis {
	mut result := Basis{}
	fnname := StringName.new("from_euler")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 2802321791)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&euler)
	args[1] = voidptr(&order)
	f(unsafe{nil}, voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (v &Basis) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_basis)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t Basis) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_basis)
	variant_to_type(voidptr(&t), var)
}

pub fn (v &Basis) index(i i64) Vector3 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_basis)
	mut result := Vector3{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&result))
	return result
}

pub fn (a Basis) mul_i64(b i64) Basis {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_i64)
	res := Basis{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Basis) div_i64(b i64) Basis {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_i64)
	res := Basis{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Basis) mul_f64(b f64) Basis {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_f64)
	res := Basis{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Basis) div_f64(b f64) Basis {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_f64)
	res := Basis{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Basis) mul_vector3(b Vector3) Vector3 {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_vector3)
	res := Vector3{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Basis) == (b Basis) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_basis)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Basis) eq_basis(b Basis) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_basis)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Basis) ne_basis(b Basis) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_basis)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Basis) * (b Basis) Basis {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_basis)
	res := Basis{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Basis) mul_basis(b Basis) Basis {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_basis)
	res := Basis{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Basis) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Basis) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
