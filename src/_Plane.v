module gd

@[packed]
pub struct Plane {
pub mut:
	normal Vector3 // offset 0
	d f32 // offset 12
}

pub fn Plane.new0() Plane {
	mut inst := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 0)
	constructor(voidptr(&inst), unsafe{nil})
	return inst
}

pub fn Plane.new1(from &Plane) Plane {
	mut inst := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Plane.new2(normal &Vector3) Plane {
	mut inst := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = normal
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Plane.new3(normal &Vector3, d &f64) Plane {
	mut inst := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 3)
	mut args := unsafe { [2]voidptr{} }
	args[0] = normal
	args[1] = d
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Plane.new4(normal &Vector3, point &Vector3) Plane {
	mut inst := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 4)
	mut args := unsafe { [2]voidptr{} }
	args[0] = normal
	args[1] = point
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Plane.new5(point1 &Vector3, point2 &Vector3, point3 &Vector3) Plane {
	mut inst := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 5)
	mut args := unsafe { [3]voidptr{} }
	args[0] = point1
	args[1] = point2
	args[2] = point3
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn Plane.new6(a &f64, b &f64, c &f64, d &f64) Plane {
	mut inst := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 6)
	mut args := unsafe { [4]voidptr{} }
	args[0] = a
	args[1] = b
	args[2] = c
	args[3] = d
	constructor(voidptr(&inst), voidptr(&args[0]))
	return inst
}

pub fn (s &Plane) normalized() Plane {
	mut result := Plane{}
	fnname := StringName.new("normalized")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 1051796340)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Plane) get_center() Vector3 {
	mut result := Vector3{}
	fnname := StringName.new("get_center")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 1776574132)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Plane) is_equal_approx(to_plane Plane) bool {
	mut result := false
	fnname := StringName.new("is_equal_approx")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 1150170233)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to_plane)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Plane) is_finite() bool {
	mut result := false
	fnname := StringName.new("is_finite")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 3918633141)
	f(voidptr(s), unsafe{nil}, voidptr(&result), 0)
	fnname.deinit()
	return result
}

pub fn (s &Plane) is_point_over(point Vector3) bool {
	mut result := false
	fnname := StringName.new("is_point_over")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 1749054343)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&point)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Plane) distance_to(point Vector3) f64 {
	mut result := f64(0)
	fnname := StringName.new("distance_to")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 1047977935)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&point)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Plane) has_point(point Vector3, tolerance f64) bool {
	mut result := false
	fnname := StringName.new("has_point")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 1258189072)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&point)
	args[1] = voidptr(&tolerance)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Plane) project(point Vector3) Vector3 {
	mut result := Vector3{}
	fnname := StringName.new("project")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 2923479887)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&point)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 1)
	fnname.deinit()
	return result
}

pub fn (s &Plane) intersect_3(b Plane, c Plane) Variant {
	mut result := Variant{}
	fnname := StringName.new("intersect_3")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 2012052692)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&b)
	args[1] = voidptr(&c)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Plane) intersects_ray(from Vector3, dir Vector3) Variant {
	mut result := Variant{}
	fnname := StringName.new("intersects_ray")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 2048133369)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&dir)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (s &Plane) intersects_segment(from Vector3, to Vector3) Variant {
	mut result := Variant{}
	fnname := StringName.new("intersects_segment")
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 2048133369)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	f(voidptr(s), voidptr(&args[0]), voidptr(&result), 2)
	fnname.deinit()
	return result
}

pub fn (v &Plane) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_plane)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(v))
	return result
}

pub fn (mut t Plane) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_plane)
	variant_to_type(voidptr(&t), var)
}

pub fn (a Plane) == (b Plane) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_plane, GDExtensionVariantType.type_plane)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Plane) eq_plane(b Plane) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_plane, GDExtensionVariantType.type_plane)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Plane) ne_plane(b Plane) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_plane, GDExtensionVariantType.type_plane)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Plane) mul_transform3d(b Transform3D) Plane {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_plane, GDExtensionVariantType.type_transform3d)
	res := Plane{}
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Plane) in_dictionary(b Dictionary) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_plane, GDExtensionVariantType.type_dictionary)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}

pub fn (a Plane) in_array(b Array) bool {
	e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_plane, GDExtensionVariantType.type_array)
	res := false
	e(voidptr(&a), voidptr(&b), voidptr(&res))
	return res
}
