module gd

pub enum CanvasItemMaterialBlendMode as i64 {
	blend_mode_mix = 0
	blend_mode_add = 1
	blend_mode_sub = 2
	blend_mode_mul = 3
	blend_mode_premult_alpha = 4
}

pub enum CanvasItemMaterialLightMode as i64 {
	light_mode_normal = 0
	light_mode_unshaded = 1
	light_mode_light_only = 2
}

pub struct CanvasItemMaterial {
	Material
}

pub fn (s &CanvasItemMaterial) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CanvasItemMaterial) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &CanvasItemMaterial) set_blend_mode(blend_mode CanvasItemMaterialBlendMode) {
	classname := StringName.new("CanvasItemMaterial")
	fnname := StringName.new("set_blend_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1786054936)
	mut args := unsafe { [1]voidptr{} }
	i64_blend_mode := i64(blend_mode)
	args[0] = unsafe{voidptr(&i64_blend_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasItemMaterial) get_blend_mode() CanvasItemMaterialBlendMode {
	mut result := i64(CanvasItemMaterialBlendMode.blend_mode_mix)
	classname := StringName.new("CanvasItemMaterial")
	fnname := StringName.new("get_blend_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3318684035)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{CanvasItemMaterialBlendMode(result)}
}

pub fn (s &CanvasItemMaterial) set_light_mode(light_mode CanvasItemMaterialLightMode) {
	classname := StringName.new("CanvasItemMaterial")
	fnname := StringName.new("set_light_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 628074070)
	mut args := unsafe { [1]voidptr{} }
	i64_light_mode := i64(light_mode)
	args[0] = unsafe{voidptr(&i64_light_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasItemMaterial) get_light_mode() CanvasItemMaterialLightMode {
	mut result := i64(CanvasItemMaterialLightMode.light_mode_normal)
	classname := StringName.new("CanvasItemMaterial")
	fnname := StringName.new("get_light_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3863292382)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{CanvasItemMaterialLightMode(result)}
}

pub fn (s &CanvasItemMaterial) set_particles_animation(particles_anim bool) {
	classname := StringName.new("CanvasItemMaterial")
	fnname := StringName.new("set_particles_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&particles_anim)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasItemMaterial) get_particles_animation() bool {
	mut result := false
	classname := StringName.new("CanvasItemMaterial")
	fnname := StringName.new("get_particles_animation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CanvasItemMaterial) set_particles_anim_h_frames(frames i64) {
	classname := StringName.new("CanvasItemMaterial")
	fnname := StringName.new("set_particles_anim_h_frames")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&frames)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasItemMaterial) get_particles_anim_h_frames() i64 {
	mut result := i64(0)
	classname := StringName.new("CanvasItemMaterial")
	fnname := StringName.new("get_particles_anim_h_frames")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CanvasItemMaterial) set_particles_anim_v_frames(frames i64) {
	classname := StringName.new("CanvasItemMaterial")
	fnname := StringName.new("set_particles_anim_v_frames")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&frames)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasItemMaterial) get_particles_anim_v_frames() i64 {
	mut result := i64(0)
	classname := StringName.new("CanvasItemMaterial")
	fnname := StringName.new("get_particles_anim_v_frames")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CanvasItemMaterial) set_particles_anim_loop(loop bool) {
	classname := StringName.new("CanvasItemMaterial")
	fnname := StringName.new("set_particles_anim_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&loop)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CanvasItemMaterial) get_particles_anim_loop() bool {
	mut result := false
	classname := StringName.new("CanvasItemMaterial")
	fnname := StringName.new("get_particles_anim_loop")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
