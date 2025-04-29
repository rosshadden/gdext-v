module gd

pub struct Curve3D {
	Resource
}

pub fn (s &Curve3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Curve3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Curve3D) get_point_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Curve3D")
	fnname := StringName.new("get_point_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) set_point_count(count i64) {
	classname := StringName.new("Curve3D")
	fnname := StringName.new("set_point_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Curve3D_add_point_Cfg {
pub:
	gd_in Vector3
	out Vector3
	index i64
}

pub fn (s &Curve3D) add_point(position Vector3, cfg Curve3D_add_point_Cfg) {
	classname := StringName.new("Curve3D")
	fnname := StringName.new("add_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2931053748)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&cfg.gd_in)}
	args[2] = unsafe{voidptr(&cfg.out)}
	args[3] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve3D) set_point_position(idx i64, position Vector3) {
	classname := StringName.new("Curve3D")
	fnname := StringName.new("set_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve3D) get_point_position(idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("get_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) set_point_tilt(idx i64, tilt f64) {
	classname := StringName.new("Curve3D")
	fnname := StringName.new("set_point_tilt")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&tilt)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve3D) get_point_tilt(idx i64) f64 {
	mut result := f64(0)
	classname := StringName.new("Curve3D")
	fnname := StringName.new("get_point_tilt")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) set_point_in(idx i64, position Vector3) {
	classname := StringName.new("Curve3D")
	fnname := StringName.new("set_point_in")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve3D) get_point_in(idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("get_point_in")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) set_point_out(idx i64, position Vector3) {
	classname := StringName.new("Curve3D")
	fnname := StringName.new("set_point_out")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve3D) get_point_out(idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("get_point_out")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) remove_point(idx i64) {
	classname := StringName.new("Curve3D")
	fnname := StringName.new("remove_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve3D) clear_points() {
	classname := StringName.new("Curve3D")
	fnname := StringName.new("clear_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve3D) sample(idx i64, t f64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("sample")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3285246857)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&t)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) samplef(fofs f64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("samplef")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2553580215)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&fofs)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) set_closed(closed bool) {
	classname := StringName.new("Curve3D")
	fnname := StringName.new("set_closed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&closed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve3D) is_closed() bool {
	mut result := false
	classname := StringName.new("Curve3D")
	fnname := StringName.new("is_closed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) set_bake_interval(distance f64) {
	classname := StringName.new("Curve3D")
	fnname := StringName.new("set_bake_interval")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&distance)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve3D) get_bake_interval() f64 {
	mut result := f64(0)
	classname := StringName.new("Curve3D")
	fnname := StringName.new("get_bake_interval")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) set_up_vector_enabled(enable bool) {
	classname := StringName.new("Curve3D")
	fnname := StringName.new("set_up_vector_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Curve3D) is_up_vector_enabled() bool {
	mut result := false
	classname := StringName.new("Curve3D")
	fnname := StringName.new("is_up_vector_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) get_baked_length() f64 {
	mut result := f64(0)
	classname := StringName.new("Curve3D")
	fnname := StringName.new("get_baked_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Curve3D_sample_baked_Cfg {
pub:
	offset f64
	cubic bool
}

pub fn (s &Curve3D) sample_baked(cfg Curve3D_sample_baked_Cfg) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("sample_baked")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1350085894)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.offset)}
	args[1] = unsafe{voidptr(&cfg.cubic)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Curve3D_sample_baked_with_rotation_Cfg {
pub:
	offset f64
	cubic bool
	apply_tilt bool
}

pub fn (s &Curve3D) sample_baked_with_rotation(cfg Curve3D_sample_baked_with_rotation_Cfg) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("sample_baked_with_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1939359131)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.offset)}
	args[1] = unsafe{voidptr(&cfg.cubic)}
	args[2] = unsafe{voidptr(&cfg.apply_tilt)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Curve3D_sample_baked_up_vector_Cfg {
pub:
	apply_tilt bool
}

pub fn (s &Curve3D) sample_baked_up_vector(offset f64, cfg Curve3D_sample_baked_up_vector_Cfg) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("sample_baked_up_vector")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1362627031)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	args[1] = unsafe{voidptr(&cfg.apply_tilt)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) get_baked_points() PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("get_baked_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) get_baked_tilts() PackedFloat32Array {
	mut result := PackedFloat32Array{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("get_baked_tilts")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) get_baked_up_vectors() PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("get_baked_up_vectors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) get_closest_point(to_point Vector3) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("get_closest_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 192990374)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&to_point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Curve3D) get_closest_offset(to_point Vector3) f64 {
	mut result := f64(0)
	classname := StringName.new("Curve3D")
	fnname := StringName.new("get_closest_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1109078154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&to_point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Curve3D_tessellate_Cfg {
pub:
	max_stages i64
	tolerance_degrees f64
}

pub fn (s &Curve3D) tessellate(cfg Curve3D_tessellate_Cfg) PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("tessellate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1519759391)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.max_stages)}
	args[1] = unsafe{voidptr(&cfg.tolerance_degrees)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Curve3D_tessellate_even_length_Cfg {
pub:
	max_stages i64
	tolerance_length f64
}

pub fn (s &Curve3D) tessellate_even_length(cfg Curve3D_tessellate_even_length_Cfg) PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("Curve3D")
	fnname := StringName.new("tessellate_even_length")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 133237049)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.max_stages)}
	args[1] = unsafe{voidptr(&cfg.tolerance_length)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
