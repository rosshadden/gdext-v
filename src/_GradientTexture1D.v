module gd

pub struct GradientTexture1D {
	Texture2D
}

pub fn (s &GradientTexture1D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GradientTexture1D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GradientTexture1D) set_gradient(gradient Gradient) {
	classname := StringName.new("GradientTexture1D")
	fnname := StringName.new("set_gradient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gradient.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GradientTexture1D) get_gradient() Gradient {
	mut result := Gradient{}
	classname := StringName.new("GradientTexture1D")
	fnname := StringName.new("get_gradient")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GradientTexture1D) set_width(width i64) {
	classname := StringName.new("GradientTexture1D")
	fnname := StringName.new("set_width")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&width)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GradientTexture1D) set_use_hdr(enabled bool) {
	classname := StringName.new("GradientTexture1D")
	fnname := StringName.new("set_use_hdr")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GradientTexture1D) is_using_hdr() bool {
	mut result := false
	classname := StringName.new("GradientTexture1D")
	fnname := StringName.new("is_using_hdr")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
