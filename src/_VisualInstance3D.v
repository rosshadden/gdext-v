module gd

pub struct VisualInstance3D {
	Node3D
}

pub fn (s &VisualInstance3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualInstance3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IVisualInstance3DGetAabb {
mut:
	get_aabb_() AABB
}

pub fn (s &VisualInstance3D) gd_get_aabb() AABB {
	mut result := AABB{}
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("_get_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualInstance3D) set_base(base RID) {
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("set_base")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&base)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualInstance3D) get_base() RID {
	mut result := RID{}
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("get_base")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualInstance3D) get_instance() RID {
	mut result := RID{}
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("get_instance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualInstance3D) set_layer_mask(mask i64) {
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("set_layer_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mask)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualInstance3D) get_layer_mask() i64 {
	mut result := i64(0)
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("get_layer_mask")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualInstance3D) set_layer_mask_value(layer_number i64, value bool) {
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("set_layer_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualInstance3D) get_layer_mask_value(layer_number i64) bool {
	mut result := false
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("get_layer_mask_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&layer_number)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualInstance3D) set_sorting_offset(offset f64) {
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("set_sorting_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualInstance3D) get_sorting_offset() f64 {
	mut result := f64(0)
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("get_sorting_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualInstance3D) set_sorting_use_aabb_center(enabled bool) {
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("set_sorting_use_aabb_center")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualInstance3D) is_sorting_use_aabb_center() bool {
	mut result := false
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("is_sorting_use_aabb_center")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VisualInstance3D) get_aabb() AABB {
	mut result := AABB{}
	classname := StringName.new("VisualInstance3D")
	fnname := StringName.new("get_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
