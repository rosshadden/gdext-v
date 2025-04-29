module gd

pub enum AnimationNodeBlendSpace1DBlendMode as i64 {
	blend_mode_interpolated = 0
	blend_mode_discrete = 1
	blend_mode_discrete_carry = 2
}

pub struct AnimationNodeBlendSpace1D {
	AnimationRootNode
}

pub fn (s &AnimationNodeBlendSpace1D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationNodeBlendSpace1D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct AnimationNodeBlendSpace1D_add_blend_point_Cfg {
pub:
	at_index i64
}

pub fn (s &AnimationNodeBlendSpace1D) add_blend_point(node AnimationRootNode, pos f64, cfg AnimationNodeBlendSpace1D_add_blend_point_Cfg) {
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("add_blend_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 285050433)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&node.ptr)
	args[1] = unsafe{voidptr(&pos)}
	args[2] = unsafe{voidptr(&cfg.at_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace1D) set_blend_point_position(point i64, pos f64) {
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("set_blend_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	args[1] = unsafe{voidptr(&pos)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace1D) get_blend_point_position(point i64) f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("get_blend_point_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace1D) set_blend_point_node(point i64, node AnimationRootNode) {
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("set_blend_point_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4240341528)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	args[1] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace1D) get_blend_point_node(point i64) AnimationRootNode {
	mut result := AnimationRootNode{}
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("get_blend_point_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 665599029)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace1D) remove_blend_point(point i64) {
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("remove_blend_point")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&point)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace1D) get_blend_point_count() i64 {
	mut result := i64(0)
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("get_blend_point_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace1D) set_min_space(min_space f64) {
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("set_min_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&min_space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace1D) get_min_space() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("get_min_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace1D) set_max_space(max_space f64) {
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("set_max_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&max_space)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace1D) get_max_space() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("get_max_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace1D) set_snap(snap f64) {
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("set_snap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&snap)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace1D) get_snap() f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("get_snap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &AnimationNodeBlendSpace1D) set_value_label(text string) {
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("set_value_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(text)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace1D) get_value_label() string {
	mut result := String{}
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("get_value_label")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &AnimationNodeBlendSpace1D) set_blend_mode(mode AnimationNodeBlendSpace1DBlendMode) {
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("set_blend_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2600869457)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace1D) get_blend_mode() AnimationNodeBlendSpace1DBlendMode {
	mut result := i64(AnimationNodeBlendSpace1DBlendMode.blend_mode_interpolated)
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("get_blend_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1547667849)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{AnimationNodeBlendSpace1DBlendMode(result)}
}

pub fn (s &AnimationNodeBlendSpace1D) set_use_sync(enable bool) {
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("set_use_sync")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &AnimationNodeBlendSpace1D) is_using_sync() bool {
	mut result := false
	classname := StringName.new("AnimationNodeBlendSpace1D")
	fnname := StringName.new("is_using_sync")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
