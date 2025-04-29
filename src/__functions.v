module gd

pub fn sin(angle_rad f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("sin")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle_rad)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn cos(angle_rad f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("cos")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle_rad)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn tan(angle_rad f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("tan")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle_rad)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn sinh(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("sinh")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn cosh(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("cosh")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn tanh(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("tanh")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn asin(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("asin")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn acos(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("acos")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn atan(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("atan")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn atan2(y f64, x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("atan2")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&y)
	args[1] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn asinh(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("asinh")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn acosh(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("acosh")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn atanh(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("atanh")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn sqrt(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("sqrt")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn fmod(x f64, y f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("fmod")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&y)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn fposmod(x f64, y f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("fposmod")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&y)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn posmod(x i64, y i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("posmod")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3133453818)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&y)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn floor(x Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("floor")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn floorf(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("floorf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn floori(x f64) i64 {
	mut result := i64(0)
	fnname := StringName.new("floori")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2780425386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn ceil(x Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("ceil")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn ceilf(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("ceilf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn ceili(x f64) i64 {
	mut result := i64(0)
	fnname := StringName.new("ceili")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2780425386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn round(x Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("round")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn roundf(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("roundf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn roundi(x f64) i64 {
	mut result := i64(0)
	fnname := StringName.new("roundi")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2780425386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn abs(x Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("abs")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn absf(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("absf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn absi(x i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("absi")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2157319888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn sign(x Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("sign")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn signf(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("signf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn signi(x i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("signi")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2157319888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn snapped(x Variant, step Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("snapped")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 459914704)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&step)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn snappedf(x f64, step f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("snappedf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&step)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn snappedi(x f64, step i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("snappedi")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3570758393)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&step)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn pow(base f64, exp f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("pow")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&base)
	args[1] = voidptr(&exp)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn log(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("log")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn exp(x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("exp")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn is_nan(x f64) bool {
	mut result := false
	fnname := StringName.new("is_nan")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3569215213)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn is_inf(x f64) bool {
	mut result := false
	fnname := StringName.new("is_inf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3569215213)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn is_equal_approx(a f64, b f64) bool {
	mut result := false
	fnname := StringName.new("is_equal_approx")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1400789633)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn is_zero_approx(x f64) bool {
	mut result := false
	fnname := StringName.new("is_zero_approx")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3569215213)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn is_finite(x f64) bool {
	mut result := false
	fnname := StringName.new("is_finite")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3569215213)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn ease(x f64, curve f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("ease")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&curve)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn step_decimals(x f64) i64 {
	mut result := i64(0)
	fnname := StringName.new("step_decimals")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2780425386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn lerp(from Variant, to Variant, weight Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("lerp")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3389874542)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&weight)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn lerpf(from f64, to f64, weight f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("lerpf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&weight)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn cubic_interpolate(from f64, to f64, pre f64, post f64, weight f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("cubic_interpolate")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&pre)
	args[3] = voidptr(&post)
	args[4] = voidptr(&weight)
	f(voidptr(&result), voidptr(&args[0]), 5)
	fnname.deinit()
	return result
}

pub fn cubic_interpolate_angle(from f64, to f64, pre f64, post f64, weight f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("cubic_interpolate_angle")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&pre)
	args[3] = voidptr(&post)
	args[4] = voidptr(&weight)
	f(voidptr(&result), voidptr(&args[0]), 5)
	fnname.deinit()
	return result
}

pub fn cubic_interpolate_in_time(from f64, to f64, pre f64, post f64, weight f64, to_t f64, pre_t f64, post_t f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("cubic_interpolate_in_time")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 388121036)
	mut args := unsafe { [8]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&pre)
	args[3] = voidptr(&post)
	args[4] = voidptr(&weight)
	args[5] = voidptr(&to_t)
	args[6] = voidptr(&pre_t)
	args[7] = voidptr(&post_t)
	f(voidptr(&result), voidptr(&args[0]), 8)
	fnname.deinit()
	return result
}

pub fn cubic_interpolate_angle_in_time(from f64, to f64, pre f64, post f64, weight f64, to_t f64, pre_t f64, post_t f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("cubic_interpolate_angle_in_time")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 388121036)
	mut args := unsafe { [8]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&pre)
	args[3] = voidptr(&post)
	args[4] = voidptr(&weight)
	args[5] = voidptr(&to_t)
	args[6] = voidptr(&pre_t)
	args[7] = voidptr(&post_t)
	f(voidptr(&result), voidptr(&args[0]), 8)
	fnname.deinit()
	return result
}

pub fn bezier_interpolate(start f64, control_1 f64, control_2 f64, end f64, t f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("bezier_interpolate")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&start)
	args[1] = voidptr(&control_1)
	args[2] = voidptr(&control_2)
	args[3] = voidptr(&end)
	args[4] = voidptr(&t)
	f(voidptr(&result), voidptr(&args[0]), 5)
	fnname.deinit()
	return result
}

pub fn bezier_derivative(start f64, control_1 f64, control_2 f64, end f64, t f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("bezier_derivative")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&start)
	args[1] = voidptr(&control_1)
	args[2] = voidptr(&control_2)
	args[3] = voidptr(&end)
	args[4] = voidptr(&t)
	f(voidptr(&result), voidptr(&args[0]), 5)
	fnname.deinit()
	return result
}

pub fn angle_difference(from f64, to f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("angle_difference")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn lerp_angle(from f64, to f64, weight f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("lerp_angle")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&weight)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn inverse_lerp(from f64, to f64, weight f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("inverse_lerp")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&weight)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn remap(value f64, istart f64, istop f64, ostart f64, ostop f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("remap")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&istart)
	args[2] = voidptr(&istop)
	args[3] = voidptr(&ostart)
	args[4] = voidptr(&ostop)
	f(voidptr(&result), voidptr(&args[0]), 5)
	fnname.deinit()
	return result
}

pub fn smoothstep(from f64, to f64, x f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("smoothstep")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&x)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn move_toward(from f64, to f64, delta f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("move_toward")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&delta)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn rotate_toward(from f64, to f64, delta f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("rotate_toward")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&delta)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn deg_to_rad(deg f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("deg_to_rad")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&deg)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn rad_to_deg(rad f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("rad_to_deg")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&rad)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn linear_to_db(lin f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("linear_to_db")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&lin)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn db_to_linear(db f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("db_to_linear")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&db)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn wrap(value Variant, min Variant, max Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("wrap")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3389874542)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn wrapi(value i64, min i64, max i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("wrapi")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 650295447)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn wrapf(value f64, min f64, max f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("wrapf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn max(arg1 Variant, varargs ...Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("max")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3896050336)
	total_args := 1 + varargs.len
	mut args := []voidptr{cap: total_args}
	args << voidptr(&arg1)
	for i in 0..varargs.len {
		args << voidptr(&varargs[i])
	}
	f(voidptr(&result), unsafe { voidptr(&args[0]) }, total_args)
	fnname.deinit()
	return result
}

pub fn maxi(a i64, b i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("maxi")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3133453818)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn maxf(a f64, b f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("maxf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn min(arg1 Variant, varargs ...Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("min")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3896050336)
	total_args := 1 + varargs.len
	mut args := []voidptr{cap: total_args}
	args << voidptr(&arg1)
	for i in 0..varargs.len {
		args << voidptr(&varargs[i])
	}
	f(voidptr(&result), unsafe { voidptr(&args[0]) }, total_args)
	fnname.deinit()
	return result
}

pub fn mini(a i64, b i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("mini")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3133453818)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn minf(a f64, b f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("minf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn clamp(value Variant, min Variant, max Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("clamp")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3389874542)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn clampi(value i64, min i64, max i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("clampi")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 650295447)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn clampf(value f64, min f64, max f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("clampf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&result), voidptr(&args[0]), 3)
	fnname.deinit()
	return result
}

pub fn nearest_po2(value i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("nearest_po2")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2157319888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn pingpong(value f64, length f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("pingpong")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&length)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn randomize() {
	fnname := StringName.new("randomize")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1691721052)
	f(unsafe{nil}, unsafe{nil}, 0)
	fnname.deinit()
}

pub fn randi() i64 {
	mut result := i64(0)
	fnname := StringName.new("randi")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 701202648)
	f(voidptr(&result), unsafe{nil}, 0)
	fnname.deinit()
	return result
}

pub fn randf() f64 {
	mut result := f64(0)
	fnname := StringName.new("randf")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2086227845)
	f(voidptr(&result), unsafe{nil}, 0)
	fnname.deinit()
	return result
}

pub fn randi_range(from i64, to i64) i64 {
	mut result := i64(0)
	fnname := StringName.new("randi_range")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3133453818)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn randf_range(from f64, to f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("randf_range")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn randfn(mean f64, deviation f64) f64 {
	mut result := f64(0)
	fnname := StringName.new("randfn")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&mean)
	args[1] = voidptr(&deviation)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn seed(base i64) {
	fnname := StringName.new("seed")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 382931173)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&base)
	f(unsafe{nil}, voidptr(&args[0]), 1)
	fnname.deinit()
}

pub fn rand_from_seed(seed i64) PackedInt64Array {
	mut result := PackedInt64Array{}
	fnname := StringName.new("rand_from_seed")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1391063685)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&seed)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn weakref(obj Variant) Variant {
	mut result := Variant{}
	fnname := StringName.new("weakref")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&obj)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn gd_typeof(variable Variant) i64 {
	mut result := i64(0)
	fnname := StringName.new("gd_typeof")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 326422594)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn type_convert(variant Variant, gd_type i64) Variant {
	mut result := Variant{}
	fnname := StringName.new("type_convert")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2453062746)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&variant)
	args[1] = voidptr(&gd_type)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}

pub fn str(varargs ...Variant) String {
	mut result := String{}
	fnname := StringName.new("str")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 32569176)
	total_args := 0 + varargs.len
	mut args := []voidptr{cap: total_args}
	for i in 0..varargs.len {
		args << voidptr(&varargs[i])
	}
	f(voidptr(&result), unsafe { voidptr(&args[0]) }, total_args)
	fnname.deinit()
	return result
}

pub fn error_string(error i64) String {
	mut result := String{}
	fnname := StringName.new("error_string")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 942708242)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&error)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn type_string(gd_type i64) String {
	mut result := String{}
	fnname := StringName.new("type_string")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 942708242)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gd_type)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn print(varargs ...Variant) {
	fnname := StringName.new("print")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	total_args := 0 + varargs.len
	mut args := []voidptr{cap: total_args}
	for i in 0..varargs.len {
		args << voidptr(&varargs[i])
	}
	f(unsafe{nil}, unsafe { voidptr(&args[0]) }, total_args)
	fnname.deinit()
}

pub fn print_rich(varargs ...Variant) {
	fnname := StringName.new("print_rich")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	total_args := 0 + varargs.len
	mut args := []voidptr{cap: total_args}
	for i in 0..varargs.len {
		args << voidptr(&varargs[i])
	}
	f(unsafe{nil}, unsafe { voidptr(&args[0]) }, total_args)
	fnname.deinit()
}

pub fn printerr(varargs ...Variant) {
	fnname := StringName.new("printerr")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	total_args := 0 + varargs.len
	mut args := []voidptr{cap: total_args}
	for i in 0..varargs.len {
		args << voidptr(&varargs[i])
	}
	f(unsafe{nil}, unsafe { voidptr(&args[0]) }, total_args)
	fnname.deinit()
}

pub fn printt(varargs ...Variant) {
	fnname := StringName.new("printt")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	total_args := 0 + varargs.len
	mut args := []voidptr{cap: total_args}
	for i in 0..varargs.len {
		args << voidptr(&varargs[i])
	}
	f(unsafe{nil}, unsafe { voidptr(&args[0]) }, total_args)
	fnname.deinit()
}

pub fn prints(varargs ...Variant) {
	fnname := StringName.new("prints")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	total_args := 0 + varargs.len
	mut args := []voidptr{cap: total_args}
	for i in 0..varargs.len {
		args << voidptr(&varargs[i])
	}
	f(unsafe{nil}, unsafe { voidptr(&args[0]) }, total_args)
	fnname.deinit()
}

pub fn printraw(varargs ...Variant) {
	fnname := StringName.new("printraw")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	total_args := 0 + varargs.len
	mut args := []voidptr{cap: total_args}
	for i in 0..varargs.len {
		args << voidptr(&varargs[i])
	}
	f(unsafe{nil}, unsafe { voidptr(&args[0]) }, total_args)
	fnname.deinit()
}

pub fn print_verbose(varargs ...Variant) {
	fnname := StringName.new("print_verbose")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	total_args := 0 + varargs.len
	mut args := []voidptr{cap: total_args}
	for i in 0..varargs.len {
		args << voidptr(&varargs[i])
	}
	f(unsafe{nil}, unsafe { voidptr(&args[0]) }, total_args)
	fnname.deinit()
}

pub fn push_error(varargs ...Variant) {
	fnname := StringName.new("push_error")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	total_args := 0 + varargs.len
	mut args := []voidptr{cap: total_args}
	for i in 0..varargs.len {
		args << voidptr(&varargs[i])
	}
	f(unsafe{nil}, unsafe { voidptr(&args[0]) }, total_args)
	fnname.deinit()
}

pub fn push_warning(varargs ...Variant) {
	fnname := StringName.new("push_warning")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	total_args := 0 + varargs.len
	mut args := []voidptr{cap: total_args}
	for i in 0..varargs.len {
		args << voidptr(&varargs[i])
	}
	f(unsafe{nil}, unsafe { voidptr(&args[0]) }, total_args)
	fnname.deinit()
}

pub fn var_to_str(variable Variant) String {
	mut result := String{}
	fnname := StringName.new("var_to_str")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 866625479)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn str_to_var(gd_string String) Variant {
	mut result := Variant{}
	fnname := StringName.new("str_to_var")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1891498491)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gd_string)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn var_to_bytes(variable Variant) PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("var_to_bytes")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2947269930)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn bytes_to_var(bytes PackedByteArray) Variant {
	mut result := Variant{}
	fnname := StringName.new("bytes_to_var")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4249819452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&bytes)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn var_to_bytes_with_objects(variable Variant) PackedByteArray {
	mut result := PackedByteArray{}
	fnname := StringName.new("var_to_bytes_with_objects")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2947269930)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn bytes_to_var_with_objects(bytes PackedByteArray) Variant {
	mut result := Variant{}
	fnname := StringName.new("bytes_to_var_with_objects")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4249819452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&bytes)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn hash(variable Variant) i64 {
	mut result := i64(0)
	fnname := StringName.new("hash")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 326422594)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn instance_from_id(instance_id i64) Object {
	mut result := Object{}
	fnname := StringName.new("instance_from_id")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1156694636)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&instance_id)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn is_instance_id_valid(id i64) bool {
	mut result := false
	fnname := StringName.new("is_instance_id_valid")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2232439758)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&id)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn is_instance_valid(instance Variant) bool {
	mut result := false
	fnname := StringName.new("is_instance_valid")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 996128841)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&instance)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn rid_allocate_id() i64 {
	mut result := i64(0)
	fnname := StringName.new("rid_allocate_id")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 701202648)
	f(voidptr(&result), unsafe{nil}, 0)
	fnname.deinit()
	return result
}

pub fn rid_from_int64(base i64) RID {
	mut result := RID{}
	fnname := StringName.new("rid_from_int64")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3426892196)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&base)
	f(voidptr(&result), voidptr(&args[0]), 1)
	fnname.deinit()
	return result
}

pub fn is_same(a Variant, b Variant) bool {
	mut result := false
	fnname := StringName.new("is_same")
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1409423524)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&result), voidptr(&args[0]), 2)
	fnname.deinit()
	return result
}
