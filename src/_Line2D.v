module gd

pub enum Line2DLineJointMode as i64 {
	line_joint_sharp = 0
	line_joint_bevel = 1
	line_joint_round = 2
}

pub enum Line2DLineCapMode as i64 {
	line_cap_none = 0
	line_cap_box = 1
	line_cap_round = 2
}

pub enum Line2DLineTextureMode as i64 {
	line_texture_none = 0
	line_texture_tile = 1
	line_texture_stretch = 2
}

pub struct Line2D {
	Node2D
}

pub fn (s &Line2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Line2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Line2D) set_points(points PackedVector2Array) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&points)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_points() PackedVector2Array {
	mut result := PackedVector2Array{}
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Line2D) set_point_position(index i64, position Vector2) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_point_position(index i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Line2D) get_point_count() i64 {
	mut result := i64(0)
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_point_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Line2D_add_point_Cfg {
pub:
	index i64
}

pub fn (s &Line2D) add_point(position Vector2, cfg Line2D_add_point_Cfg) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("add_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2654014372)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	args[1] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) remove_point(index i64) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("remove_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) clear_points() {
	classname := StringName.new("Line2D")
	fnname := StringName.new("clear_points")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) set_closed(closed bool) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_closed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&closed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) is_closed() bool {
	mut result := false
	classname := StringName.new("Line2D")
	fnname := StringName.new("is_closed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Line2D) set_width(width f64) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_width() f64 {
	mut result := f64(0)
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Line2D) set_curve(curve Curve) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&curve.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_curve() Curve {
	mut result := Curve{}
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_curve")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Line2D) set_default_color(color Color) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_default_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_default_color() Color {
	mut result := Color{}
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_default_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Line2D) set_gradient(color Gradient) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_gradient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&color.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_gradient() Gradient {
	mut result := Gradient{}
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_gradient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Line2D) set_texture(texture Texture2D) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_texture() Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_texture")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Line2D) set_texture_mode(mode Line2DLineTextureMode) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_texture_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1952559516)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_texture_mode() Line2DLineTextureMode {
	mut result := i64(Line2DLineTextureMode.line_texture_none)
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_texture_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2341040722)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Line2DLineTextureMode(result)}
}

pub fn (s &Line2D) set_joint_mode(mode Line2DLineJointMode) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_joint_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 604292979)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_joint_mode() Line2DLineJointMode {
	mut result := i64(Line2DLineJointMode.line_joint_sharp)
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_joint_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2546544037)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Line2DLineJointMode(result)}
}

pub fn (s &Line2D) set_begin_cap_mode(mode Line2DLineCapMode) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_begin_cap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1669024546)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_begin_cap_mode() Line2DLineCapMode {
	mut result := i64(Line2DLineCapMode.line_cap_none)
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_begin_cap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1107511441)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Line2DLineCapMode(result)}
}

pub fn (s &Line2D) set_end_cap_mode(mode Line2DLineCapMode) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_end_cap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1669024546)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_end_cap_mode() Line2DLineCapMode {
	mut result := i64(Line2DLineCapMode.line_cap_none)
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_end_cap_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1107511441)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{Line2DLineCapMode(result)}
}

pub fn (s &Line2D) set_sharp_limit(limit f64) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_sharp_limit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&limit)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_sharp_limit() f64 {
	mut result := f64(0)
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_sharp_limit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Line2D) set_round_precision(precision i64) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_round_precision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&precision)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_round_precision() i64 {
	mut result := i64(0)
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_round_precision")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Line2D) set_antialiased(antialiased bool) {
	classname := StringName.new("Line2D")
	fnname := StringName.new("set_antialiased")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&antialiased)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Line2D) get_antialiased() bool {
	mut result := false
	classname := StringName.new("Line2D")
	fnname := StringName.new("get_antialiased")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
