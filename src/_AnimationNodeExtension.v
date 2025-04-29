module gd

pub struct AnimationNodeExtension {
	AnimationNode
}

pub fn (s &AnimationNodeExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s AnimationNodeExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IAnimationNodeExtensionProcessAnimationNode {
mut:
	process_animation_node_(playback_info PackedFloat64Array, test_only bool) PackedFloat32Array
}

pub fn (s &AnimationNodeExtension) gd_process_animation_node(playback_info PackedFloat64Array, test_only bool) PackedFloat32Array {
	mut result := PackedFloat32Array{}
	classname := StringName.new("AnimationNodeExtension")
	fnname := StringName.new("_process_animation_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 912931771)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&playback_info)}
	args[1] = unsafe{voidptr(&test_only)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn AnimationNodeExtension.is_looping(node_info PackedFloat32Array) bool {
	mut result := false
	classname := StringName.new("AnimationNodeExtension")
	fnname := StringName.new("is_looping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2035584311)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&node_info)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn AnimationNodeExtension.get_remaining_time(node_info PackedFloat32Array, break_loop bool) f64 {
	mut result := f64(0)
	classname := StringName.new("AnimationNodeExtension")
	fnname := StringName.new("get_remaining_time")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2851904656)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&node_info)}
	args[1] = unsafe{voidptr(&break_loop)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
