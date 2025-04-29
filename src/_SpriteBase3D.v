module gd

pub enum SpriteBase3DDrawFlags as i64 {
	flag_transparent = 0
	flag_shaded = 1
	flag_double_sided = 2
	flag_disable_depth_test = 3
	flag_fixed_size = 4
	flag_max = 5
}

pub enum SpriteBase3DAlphaCutMode as i64 {
	alpha_cut_disabled = 0
	alpha_cut_discard = 1
	alpha_cut_opaque_prepass = 2
	alpha_cut_hash = 3
}

pub struct SpriteBase3D {
	GeometryInstance3D
}

pub fn (s &SpriteBase3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SpriteBase3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SpriteBase3D) set_centered(centered bool) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_centered")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&centered)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) is_centered() bool {
	mut result := false
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("is_centered")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpriteBase3D) set_offset(offset Vector2) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_offset() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpriteBase3D) set_flip_h(flip_h bool) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_flip_h")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&flip_h)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) is_flipped_h() bool {
	mut result := false
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("is_flipped_h")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpriteBase3D) set_flip_v(flip_v bool) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_flip_v")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&flip_v)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) is_flipped_v() bool {
	mut result := false
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("is_flipped_v")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpriteBase3D) set_modulate(modulate Color) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&modulate)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_modulate() Color {
	mut result := Color{}
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_modulate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpriteBase3D) set_render_priority(priority i64) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_render_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&priority)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_render_priority() i64 {
	mut result := i64(0)
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_render_priority")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpriteBase3D) set_pixel_size(pixel_size f64) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_pixel_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&pixel_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_pixel_size() f64 {
	mut result := f64(0)
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_pixel_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpriteBase3D) set_axis(axis Vector3Axis) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1144690656)
	mut args := unsafe { [1]voidptr{} }
	i64_axis := i64(axis)
	args[0] = unsafe{voidptr(&i64_axis)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_axis() Vector3Axis {
	mut result := i64(Vector3Axis.axis_x)
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_axis")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3050976882)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Vector3Axis(result)}
}

pub fn (s &SpriteBase3D) set_draw_flag(flag SpriteBase3DDrawFlags, enabled bool) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_draw_flag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1135633219)
	mut args := unsafe { [2]voidptr{} }
	i64_flag := i64(flag)
	args[0] = unsafe{voidptr(&i64_flag)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_draw_flag(flag SpriteBase3DDrawFlags) bool {
	mut result := false
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_draw_flag")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1733036628)
	mut args := unsafe { [1]voidptr{} }
	i64_flag := i64(flag)
	args[0] = unsafe{voidptr(&i64_flag)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpriteBase3D) set_alpha_cut_mode(mode SpriteBase3DAlphaCutMode) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_alpha_cut_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 227561226)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_alpha_cut_mode() SpriteBase3DAlphaCutMode {
	mut result := i64(SpriteBase3DAlphaCutMode.alpha_cut_disabled)
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_alpha_cut_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 336003791)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{SpriteBase3DAlphaCutMode(result)}
}

pub fn (s &SpriteBase3D) set_alpha_scissor_threshold(threshold f64) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_alpha_scissor_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&threshold)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_alpha_scissor_threshold() f64 {
	mut result := f64(0)
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_alpha_scissor_threshold")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpriteBase3D) set_alpha_hash_scale(threshold f64) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_alpha_hash_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&threshold)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_alpha_hash_scale() f64 {
	mut result := f64(0)
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_alpha_hash_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpriteBase3D) set_alpha_antialiasing(alpha_aa BaseMaterial3DAlphaAntiAliasing) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_alpha_antialiasing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3212649852)
	mut args := unsafe { [1]voidptr{} }
	i64_alpha_aa := i64(alpha_aa)
	args[0] = unsafe{voidptr(&i64_alpha_aa)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_alpha_antialiasing() BaseMaterial3DAlphaAntiAliasing {
	mut result := i64(BaseMaterial3DAlphaAntiAliasing.alpha_antialiasing_off)
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_alpha_antialiasing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2889939400)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{BaseMaterial3DAlphaAntiAliasing(result)}
}

pub fn (s &SpriteBase3D) set_alpha_antialiasing_edge(edge f64) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_alpha_antialiasing_edge")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&edge)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_alpha_antialiasing_edge() f64 {
	mut result := f64(0)
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_alpha_antialiasing_edge")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpriteBase3D) set_billboard_mode(mode BaseMaterial3DBillboardMode) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_billboard_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4202036497)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_billboard_mode() BaseMaterial3DBillboardMode {
	mut result := i64(BaseMaterial3DBillboardMode.billboard_disabled)
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_billboard_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1283840139)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{BaseMaterial3DBillboardMode(result)}
}

pub fn (s &SpriteBase3D) set_texture_filter(mode BaseMaterial3DTextureFilter) {
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("set_texture_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 22904437)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SpriteBase3D) get_texture_filter() BaseMaterial3DTextureFilter {
	mut result := i64(BaseMaterial3DTextureFilter.texture_filter_nearest)
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_texture_filter")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289213076)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{BaseMaterial3DTextureFilter(result)}
}

pub fn (s &SpriteBase3D) get_item_rect() Rect2 {
	mut result := Rect2{}
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("get_item_rect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SpriteBase3D) generate_triangle_mesh() TriangleMesh {
	mut result := TriangleMesh{}
	classname := StringName.new("SpriteBase3D")
	fnname := StringName.new("generate_triangle_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3476533166)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
