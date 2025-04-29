module gd

pub struct RandomNumberGenerator {
	RefCounted
}

pub fn (s &RandomNumberGenerator) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RandomNumberGenerator) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RandomNumberGenerator) set_seed(seed i64) {
	classname := StringName.new("RandomNumberGenerator")
	fnname := StringName.new("set_seed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&seed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RandomNumberGenerator) get_seed() i64 {
	mut result := i64(0)
	classname := StringName.new("RandomNumberGenerator")
	fnname := StringName.new("get_seed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RandomNumberGenerator) set_state(state i64) {
	classname := StringName.new("RandomNumberGenerator")
	fnname := StringName.new("set_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&state)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RandomNumberGenerator) get_state() i64 {
	mut result := i64(0)
	classname := StringName.new("RandomNumberGenerator")
	fnname := StringName.new("get_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RandomNumberGenerator) randi() i64 {
	mut result := i64(0)
	classname := StringName.new("RandomNumberGenerator")
	fnname := StringName.new("randi")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RandomNumberGenerator) randf() f64 {
	mut result := f64(0)
	classname := StringName.new("RandomNumberGenerator")
	fnname := StringName.new("randf")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct RandomNumberGenerator_randfn_Cfg {
pub:
	mean f64
	deviation f64
}

pub fn (s &RandomNumberGenerator) randfn(cfg RandomNumberGenerator_randfn_Cfg) f64 {
	mut result := f64(0)
	classname := StringName.new("RandomNumberGenerator")
	fnname := StringName.new("randfn")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 837325100)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.mean)}
	args[1] = unsafe{voidptr(&cfg.deviation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RandomNumberGenerator) randf_range(from f64, to f64) f64 {
	mut result := f64(0)
	classname := StringName.new("RandomNumberGenerator")
	fnname := StringName.new("randf_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4269894367)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from)}
	args[1] = unsafe{voidptr(&to)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RandomNumberGenerator) randi_range(from i64, to i64) i64 {
	mut result := i64(0)
	classname := StringName.new("RandomNumberGenerator")
	fnname := StringName.new("randi_range")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&from)}
	args[1] = unsafe{voidptr(&to)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RandomNumberGenerator) rand_weighted(weights PackedFloat32Array) i64 {
	mut result := i64(0)
	classname := StringName.new("RandomNumberGenerator")
	fnname := StringName.new("rand_weighted")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4189642986)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&weights)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RandomNumberGenerator) randomize() {
	classname := StringName.new("RandomNumberGenerator")
	fnname := StringName.new("randomize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
