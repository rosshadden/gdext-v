module gd

pub struct Noise {
	Resource
}

pub fn (s &Noise) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Noise) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Noise) get_noise_1d(x f64) f64 {
	mut result := f64(0)
	classname := StringName.new("Noise")
	fnname := StringName.new("get_noise_1d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3919130443)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&x)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Noise) get_noise_2d(x f64, y f64) f64 {
	mut result := f64(0)
	classname := StringName.new("Noise")
	fnname := StringName.new("get_noise_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2753205203)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&x)}
	args[1] = unsafe{voidptr(&y)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Noise) get_noise_2dv(v Vector2) f64 {
	mut result := f64(0)
	classname := StringName.new("Noise")
	fnname := StringName.new("get_noise_2dv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2276447920)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&v)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Noise) get_noise_3d(x f64, y f64, z f64) f64 {
	mut result := f64(0)
	classname := StringName.new("Noise")
	fnname := StringName.new("get_noise_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 973811851)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&x)}
	args[1] = unsafe{voidptr(&y)}
	args[2] = unsafe{voidptr(&z)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Noise) get_noise_3dv(v Vector3) f64 {
	mut result := f64(0)
	classname := StringName.new("Noise")
	fnname := StringName.new("get_noise_3dv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1109078154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&v)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Noise_get_image_Cfg {
pub:
	invert bool
	in_3d_space bool
	normalize bool
}

pub fn (s &Noise) get_image(width i64, height i64, cfg Noise_get_image_Cfg) Image {
	mut result := Image{}
	classname := StringName.new("Noise")
	fnname := StringName.new("get_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3180683109)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	args[1] = unsafe{voidptr(&height)}
	args[2] = unsafe{voidptr(&cfg.invert)}
	args[3] = unsafe{voidptr(&cfg.in_3d_space)}
	args[4] = unsafe{voidptr(&cfg.normalize)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Noise_get_seamless_image_Cfg {
pub:
	invert bool
	in_3d_space bool
	skirt f64
	normalize bool
}

pub fn (s &Noise) get_seamless_image(width i64, height i64, cfg Noise_get_seamless_image_Cfg) Image {
	mut result := Image{}
	classname := StringName.new("Noise")
	fnname := StringName.new("get_seamless_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2770743602)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	args[1] = unsafe{voidptr(&height)}
	args[2] = unsafe{voidptr(&cfg.invert)}
	args[3] = unsafe{voidptr(&cfg.in_3d_space)}
	args[4] = unsafe{voidptr(&cfg.skirt)}
	args[5] = unsafe{voidptr(&cfg.normalize)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Noise_get_image_3d_Cfg {
pub:
	invert bool
	normalize bool
}

pub fn (s &Noise) get_image_3d(width i64, height i64, depth i64, cfg Noise_get_image_3d_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("Noise")
	fnname := StringName.new("get_image_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3977814329)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	args[1] = unsafe{voidptr(&height)}
	args[2] = unsafe{voidptr(&depth)}
	args[3] = unsafe{voidptr(&cfg.invert)}
	args[4] = unsafe{voidptr(&cfg.normalize)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Noise_get_seamless_image_3d_Cfg {
pub:
	invert bool
	skirt f64
	normalize bool
}

pub fn (s &Noise) get_seamless_image_3d(width i64, height i64, depth i64, cfg Noise_get_seamless_image_3d_Cfg) Array {
	mut result := Array{}
	classname := StringName.new("Noise")
	fnname := StringName.new("get_seamless_image_3d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 451006340)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	args[1] = unsafe{voidptr(&height)}
	args[2] = unsafe{voidptr(&depth)}
	args[3] = unsafe{voidptr(&cfg.invert)}
	args[4] = unsafe{voidptr(&cfg.skirt)}
	args[5] = unsafe{voidptr(&cfg.normalize)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
