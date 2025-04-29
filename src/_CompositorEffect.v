module gd

pub enum CompositorEffectEffectCallbackType as i64 {
	effect_callback_type_pre_opaque = 0
	effect_callback_type_post_opaque = 1
	effect_callback_type_post_sky = 2
	effect_callback_type_pre_transparent = 3
	effect_callback_type_post_transparent = 4
	effect_callback_type_max = 5
}

pub struct CompositorEffect {
	Resource
}

pub fn (s &CompositorEffect) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s CompositorEffect) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface ICompositorEffectRenderCallback {
mut:
	render_callback_(effect_callback_type i64, render_data RenderData)
}

pub fn (s &CompositorEffect) gd_render_callback(effect_callback_type i64, render_data RenderData) {
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("_render_callback")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2153422729)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&effect_callback_type)}
	args[1] = voidptr(&render_data.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CompositorEffect) set_enabled(enabled bool) {
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("set_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CompositorEffect) get_enabled() bool {
	mut result := false
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("get_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CompositorEffect) set_effect_callback_type(effect_callback_type CompositorEffectEffectCallbackType) {
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("set_effect_callback_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1390728419)
	mut args := unsafe { [1]voidptr{} }
	i64_effect_callback_type := i64(effect_callback_type)
	args[0] = unsafe{voidptr(&i64_effect_callback_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CompositorEffect) get_effect_callback_type() CompositorEffectEffectCallbackType {
	mut result := i64(CompositorEffectEffectCallbackType.effect_callback_type_pre_opaque)
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("get_effect_callback_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1221912590)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{CompositorEffectEffectCallbackType(result)}
}

pub fn (s &CompositorEffect) set_access_resolved_color(enable bool) {
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("set_access_resolved_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CompositorEffect) get_access_resolved_color() bool {
	mut result := false
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("get_access_resolved_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CompositorEffect) set_access_resolved_depth(enable bool) {
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("set_access_resolved_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CompositorEffect) get_access_resolved_depth() bool {
	mut result := false
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("get_access_resolved_depth")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CompositorEffect) set_needs_motion_vectors(enable bool) {
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("set_needs_motion_vectors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CompositorEffect) get_needs_motion_vectors() bool {
	mut result := false
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("get_needs_motion_vectors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CompositorEffect) set_needs_normal_roughness(enable bool) {
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("set_needs_normal_roughness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CompositorEffect) get_needs_normal_roughness() bool {
	mut result := false
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("get_needs_normal_roughness")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &CompositorEffect) set_needs_separate_specular(enable bool) {
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("set_needs_separate_specular")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &CompositorEffect) get_needs_separate_specular() bool {
	mut result := false
	classname := StringName.new("CompositorEffect")
	fnname := StringName.new("get_needs_separate_specular")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
