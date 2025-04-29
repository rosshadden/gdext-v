module gd

pub enum OmniLight3DShadowMode as i64 {
	shadow_dual_paraboloid = 0
	shadow_cube = 1
}

pub struct OmniLight3D {
	Light3D
}

pub fn (s &OmniLight3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s OmniLight3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &OmniLight3D) set_shadow_mode(mode OmniLight3DShadowMode) {
	classname := StringName.new("OmniLight3D")
	fnname := StringName.new("set_shadow_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 121862228)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &OmniLight3D) get_shadow_mode() OmniLight3DShadowMode {
	mut result := i64(OmniLight3DShadowMode.shadow_dual_paraboloid)
	classname := StringName.new("OmniLight3D")
	fnname := StringName.new("get_shadow_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4181586331)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{OmniLight3DShadowMode(result)}
}
