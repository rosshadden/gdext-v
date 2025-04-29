module gd

pub enum AnimationNodeBlendSpace2DBlendMode as i64 {
	blend_mode_interpolated = 0
	blend_mode_discrete = 1
	blend_mode_discrete_carry = 2
}

pub struct AnimationNodeBlendSpace2D {
	AnimationRootNode
}

pub fn (s &AnimationNodeBlendSpace2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationNodeBlendSpace2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct AnimationNodeBlendSpace2D_add_blend_point_Cfg {
pub:
	at_index i64
}

pub fn (s &AnimationNodeBlendSpace2D) add_blend_point(node AnimationRootNode, pos Vector2, cfg AnimationNodeBlendSpace2D_add_blend_point_Cfg) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("add_blend_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 402261981)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&node.ptr)
	args[1] = unsafe{voidptr(&pos)}
	args[2] = unsafe{voidptr(&cfg.at_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) set_blend_point_position(point i64, pos Vector2) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("set_blend_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	args[1] = unsafe{voidptr(&pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) get_blend_point_position(point i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("get_blend_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace2D) set_blend_point_node(point i64, node AnimationRootNode) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("set_blend_point_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4240341528)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	args[1] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) get_blend_point_node(point i64) AnimationRootNode {
	mut result := AnimationRootNode{}
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("get_blend_point_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 665599029)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace2D) remove_blend_point(point i64) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("remove_blend_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) get_blend_point_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("get_blend_point_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct AnimationNodeBlendSpace2D_add_triangle_Cfg {
pub:
	at_index i64
}

pub fn (s &AnimationNodeBlendSpace2D) add_triangle(x i64, y i64, z i64, cfg AnimationNodeBlendSpace2D_add_triangle_Cfg) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("add_triangle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 753017335)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&x)}
	args[1] = unsafe{voidptr(&y)}
	args[2] = unsafe{voidptr(&z)}
	args[3] = unsafe{voidptr(&cfg.at_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) get_triangle_point(triangle i64, point i64) i64 {
	mut result := i64(0)
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("get_triangle_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&triangle)}
	args[1] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace2D) remove_triangle(triangle i64) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("remove_triangle")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&triangle)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) get_triangle_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("get_triangle_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace2D) set_min_space(min_space Vector2) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("set_min_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&min_space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) get_min_space() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("get_min_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace2D) set_max_space(max_space Vector2) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("set_max_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) get_max_space() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("get_max_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace2D) set_snap(snap Vector2) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("set_snap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&snap)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) get_snap() Vector2 {
	mut result := Vector2{}
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("get_snap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace2D) set_x_label(text string) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("set_x_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) get_x_label() string {
	mut result := String{}
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("get_x_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationNodeBlendSpace2D) set_y_label(text string) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("set_y_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) get_y_label() string {
	mut result := String{}
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("get_y_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationNodeBlendSpace2D) set_auto_triangles(enable bool) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("set_auto_triangles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) get_auto_triangles() bool {
	mut result := false
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("get_auto_triangles")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace2D) set_blend_mode(mode AnimationNodeBlendSpace2DBlendMode) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("set_blend_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 81193520)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) get_blend_mode() AnimationNodeBlendSpace2DBlendMode {
	mut result := i64(AnimationNodeBlendSpace2DBlendMode.blend_mode_interpolated)
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("get_blend_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1398433632)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationNodeBlendSpace2DBlendMode(result)}
}

pub fn (s &AnimationNodeBlendSpace2D) set_use_sync(enable bool) {
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("set_use_sync")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace2D) is_using_sync() bool {
	mut result := false
	classname := StringName.new("AnimationNodeBlendSpace2D")
	fnname := StringName.new("is_using_sync")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
