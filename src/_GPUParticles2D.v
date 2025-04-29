module gd

pub enum GPUParticles2DDrawOrder as i64 {
	draw_order_index = 0
	draw_order_lifetime = 1
	draw_order_reverse_lifetime = 2
}

pub enum GPUParticles2DEmitFlags as i64 {
	emit_flag_position = 1
	emit_flag_rotation_scale = 2
	emit_flag_velocity = 4
	emit_flag_color = 8
	emit_flag_custom = 16
}

pub struct GPUParticles2D {
	Node2D
}

pub fn (s &GPUParticles2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GPUParticles2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GPUParticles2D) set_emitting(emitting bool) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_emitting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&emitting)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_amount(amount i64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_amount")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&amount)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_lifetime(secs f64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_lifetime")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&secs)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_one_shot(secs bool) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_one_shot")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&secs)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_pre_process_time(secs f64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_pre_process_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&secs)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_explosiveness_ratio(ratio f64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_explosiveness_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_randomness_ratio(ratio f64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_randomness_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_visibility_rect(visibility_rect Rect2) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_visibility_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&visibility_rect)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_use_local_coordinates(enable bool) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_use_local_coordinates")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_fixed_fps(fps i64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_fixed_fps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&fps)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_fractional_delta(enable bool) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_fractional_delta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_interpolate(enable bool) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_interpolate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_process_material(material Material) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_process_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_speed_scale(scale f64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_speed_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_collision_base_size(size f64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_collision_base_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_interp_to_end(interp f64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_interp_to_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&interp)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) request_particles_process(process_time f64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("request_particles_process")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&process_time)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) is_emitting() bool {
	mut result := false
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("is_emitting")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_amount() i64 {
	mut result := i64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_amount")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_lifetime() f64 {
	mut result := f64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_lifetime")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_one_shot() bool {
	mut result := false
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_one_shot")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_pre_process_time() f64 {
	mut result := f64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_pre_process_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_explosiveness_ratio() f64 {
	mut result := f64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_explosiveness_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_randomness_ratio() f64 {
	mut result := f64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_randomness_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_visibility_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_visibility_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_use_local_coordinates() bool {
	mut result := false
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_use_local_coordinates")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_fixed_fps() i64 {
	mut result := i64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_fixed_fps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_fractional_delta() bool {
	mut result := false
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_fractional_delta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_interpolate() bool {
	mut result := false
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_interpolate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_process_material() Material {
	mut result := Material{}
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_process_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_speed_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_speed_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_collision_base_size() f64 {
	mut result := f64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_collision_base_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_interp_to_end() f64 {
	mut result := f64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_interp_to_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) set_draw_order(order GPUParticles2DDrawOrder) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_draw_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1939677959)
	mut args := unsafe { [1]voidptr{} }
	i64_order := i64(order)
	args[0] = unsafe{voidptr(&i64_order)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) get_draw_order() GPUParticles2DDrawOrder {
	mut result := i64(GPUParticles2DDrawOrder.draw_order_index)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_draw_order")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 941479095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GPUParticles2DDrawOrder(result)}
}

pub fn (s &GPUParticles2D) set_texture(texture Texture2D) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) get_texture() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) capture_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("capture_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct GPUParticles2D_restart_Cfg {
pub:
	keep_seed bool
}

pub fn (s &GPUParticles2D) restart(cfg GPUParticles2D_restart_Cfg) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("restart")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.keep_seed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_sub_emitter(path NodePath) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_sub_emitter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) get_sub_emitter() NodePath {
	mut result := NodePath{}
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_sub_emitter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) emit_particle(xform Transform2D, velocity Vector2, color Color, custom Color, flags i64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("emit_particle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2179202058)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&xform)}
	args[1] = unsafe{voidptr(&velocity)}
	args[2] = unsafe{voidptr(&color)}
	args[3] = unsafe{voidptr(&custom)}
	args[4] = unsafe{voidptr(&flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_trail_enabled(enabled bool) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_trail_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_trail_lifetime(secs f64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_trail_lifetime")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&secs)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) is_trail_enabled() bool {
	mut result := false
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("is_trail_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) get_trail_lifetime() f64 {
	mut result := f64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_trail_lifetime")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) set_trail_sections(sections i64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_trail_sections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&sections)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) get_trail_sections() i64 {
	mut result := i64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_trail_sections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) set_trail_section_subdivisions(subdivisions i64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_trail_section_subdivisions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&subdivisions)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) get_trail_section_subdivisions() i64 {
	mut result := i64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_trail_section_subdivisions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) convert_from_particles(particles Node) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("convert_from_particles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&particles.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) set_amount_ratio(ratio f64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_amount_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ratio)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) get_amount_ratio() f64 {
	mut result := f64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_amount_ratio")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) set_use_fixed_seed(use_fixed_seed bool) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_use_fixed_seed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_fixed_seed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) get_use_fixed_seed() bool {
	mut result := false
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_use_fixed_seed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GPUParticles2D) set_seed(seed i64) {
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("set_seed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&seed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GPUParticles2D) get_seed() i64 {
	mut result := i64(0)
	classname := StringName.new("GPUParticles2D")
	fnname := StringName.new("get_seed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
