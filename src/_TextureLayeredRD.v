module gd

pub struct TextureLayeredRD {
	TextureLayered
}

pub fn (s &TextureLayeredRD) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TextureLayeredRD) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TextureLayeredRD) set_texture_rd_rid(texture_rd_rid RID) {
	classname := StringName.new("TextureLayeredRD")
	fnname := StringName.new("set_texture_rd_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&texture_rd_rid)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextureLayeredRD) get_texture_rd_rid() RID {
	mut result := RID{}
	classname := StringName.new("TextureLayeredRD")
	fnname := StringName.new("get_texture_rd_rid")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
