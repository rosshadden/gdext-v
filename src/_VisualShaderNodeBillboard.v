module gd

pub enum VisualShaderNodeBillboardBillboardType as i64 {
	billboard_type_disabled = 0
	billboard_type_enabled = 1
	billboard_type_fixed_y = 2
	billboard_type_particles = 3
	billboard_type_max = 4
}

pub struct VisualShaderNodeBillboard {
	VisualShaderNode
}

pub fn (s &VisualShaderNodeBillboard) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VisualShaderNodeBillboard) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VisualShaderNodeBillboard) set_billboard_type(billboard_type VisualShaderNodeBillboardBillboardType) {
	classname := StringName.new("VisualShaderNodeBillboard")
	fnname := StringName.new("set_billboard_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1227463289)
	mut args := unsafe { [1]voidptr{} }
	i64_billboard_type := i64(billboard_type)
	args[0] = unsafe{voidptr(&i64_billboard_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeBillboard) get_billboard_type() VisualShaderNodeBillboardBillboardType {
	mut result := i64(VisualShaderNodeBillboardBillboardType.billboard_type_disabled)
	classname := StringName.new("VisualShaderNodeBillboard")
	fnname := StringName.new("get_billboard_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3724188517)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VisualShaderNodeBillboardBillboardType(result)}
}

pub fn (s &VisualShaderNodeBillboard) set_keep_scale_enabled(enabled bool) {
	classname := StringName.new("VisualShaderNodeBillboard")
	fnname := StringName.new("set_keep_scale_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VisualShaderNodeBillboard) is_keep_scale_enabled() bool {
	mut result := false
	classname := StringName.new("VisualShaderNodeBillboard")
	fnname := StringName.new("is_keep_scale_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
