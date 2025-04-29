module gd

pub struct Curve2D {
	Resource
}

pub fn (s &Curve2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Curve2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Curve2D) get_point_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Curve2D")
	fnname := StringName.new("get_point_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve2D) set_point_count(count i64) {
	classname := StringName.new("Curve2D")
	fnname := StringName.new("set_point_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Curve2D_add_point_Cfg {
pub:
	gd_in Vector2
	out Vector2
	index i64
}

pub fn (s &Curve2D) add_point(position Vector2, cfg Curve2D_add_point_Cfg) {
	classname := StringName.new("Curve2D")
	fnname := StringName.new("add_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4175465202)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&cfg.gd_in)}
	args[2] = unsafe{voidptr(&cfg.out)}
	args[3] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve2D) set_point_position(idx i64, position Vector2) {
	classname := StringName.new("Curve2D")
	fnname := StringName.new("set_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve2D) get_point_position(idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Curve2D")
	fnname := StringName.new("get_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve2D) set_point_in(idx i64, position Vector2) {
	classname := StringName.new("Curve2D")
	fnname := StringName.new("set_point_in")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve2D) get_point_in(idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Curve2D")
	fnname := StringName.new("get_point_in")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve2D) set_point_out(idx i64, position Vector2) {
	classname := StringName.new("Curve2D")
	fnname := StringName.new("set_point_out")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve2D) get_point_out(idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Curve2D")
	fnname := StringName.new("get_point_out")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve2D) remove_point(idx i64) {
	classname := StringName.new("Curve2D")
	fnname := StringName.new("remove_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve2D) clear_points() {
	classname := StringName.new("Curve2D")
	fnname := StringName.new("clear_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve2D) sample(idx i64, t f64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Curve2D")
	fnname := StringName.new("sample")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 26514310)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&t)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve2D) samplef(fofs f64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Curve2D")
	fnname := StringName.new("samplef")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3588506812)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&fofs)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve2D) set_bake_interval(distance f64) {
	classname := StringName.new("Curve2D")
	fnname := StringName.new("set_bake_interval")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&distance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve2D) get_bake_interval() f64 {
	mut result := f64(0)
	classname := StringName.new("Curve2D")
	fnname := StringName.new("get_bake_interval")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve2D) get_baked_length() f64 {
	mut result := f64(0)
	classname := StringName.new("Curve2D")
	fnname := StringName.new("get_baked_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Curve2D_sample_baked_Cfg {
pub:
	offset f64
	cubic bool
}

pub fn (s &Curve2D) sample_baked(cfg Curve2D_sample_baked_Cfg) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Curve2D")
	fnname := StringName.new("sample_baked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3464257706)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.offset)}
	args[1] = unsafe{voidptr(&cfg.cubic)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Curve2D_sample_baked_with_rotation_Cfg {
pub:
	offset f64
	cubic bool
}

pub fn (s &Curve2D) sample_baked_with_rotation(cfg Curve2D_sample_baked_with_rotation_Cfg) Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("Curve2D")
	fnname := StringName.new("sample_baked_with_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3296056341)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.offset)}
	args[1] = unsafe{voidptr(&cfg.cubic)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve2D) get_baked_points() PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("Curve2D")
	fnname := StringName.new("get_baked_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve2D) get_closest_point(to_point Vector2) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Curve2D")
	fnname := StringName.new("get_closest_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&to_point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve2D) get_closest_offset(to_point Vector2) f64 {
	mut result := f64(0)
	classname := StringName.new("Curve2D")
	fnname := StringName.new("get_closest_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2276447920)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&to_point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Curve2D_tessellate_Cfg {
pub:
	max_stages i64
	tolerance_degrees f64
}

pub fn (s &Curve2D) tessellate(cfg Curve2D_tessellate_Cfg) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("Curve2D")
	fnname := StringName.new("tessellate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 958145977)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.max_stages)}
	args[1] = unsafe{voidptr(&cfg.tolerance_degrees)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Curve2D_tessellate_even_length_Cfg {
pub:
	max_stages i64
	tolerance_length f64
}

pub fn (s &Curve2D) tessellate_even_length(cfg Curve2D_tessellate_even_length_Cfg) PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("Curve2D")
	fnname := StringName.new("tessellate_even_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2319761637)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.max_stages)}
	args[1] = unsafe{voidptr(&cfg.tolerance_length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
