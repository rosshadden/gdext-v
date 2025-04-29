module gd

pub struct FontVariation {
	Font
}

pub fn (s &FontVariation) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s FontVariation) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &FontVariation) set_base_font(font Font) {
	classname := StringName.new("FontVariation")
	fnname := StringName.new("set_base_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&font.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FontVariation) get_base_font() Font {
	mut result := Font{}
	classname := StringName.new("FontVariation")
	fnname := StringName.new("get_base_font")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FontVariation) set_variation_opentype(coords Dictionary) {
	classname := StringName.new("FontVariation")
	fnname := StringName.new("set_variation_opentype")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&coords)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FontVariation) get_variation_opentype() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("FontVariation")
	fnname := StringName.new("get_variation_opentype")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FontVariation) set_variation_embolden(strength f64) {
	classname := StringName.new("FontVariation")
	fnname := StringName.new("set_variation_embolden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&strength)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FontVariation) get_variation_embolden() f64 {
	mut result := f64(0)
	classname := StringName.new("FontVariation")
	fnname := StringName.new("get_variation_embolden")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FontVariation) set_variation_face_index(face_index i64) {
	classname := StringName.new("FontVariation")
	fnname := StringName.new("set_variation_face_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&face_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FontVariation) get_variation_face_index() i64 {
	mut result := i64(0)
	classname := StringName.new("FontVariation")
	fnname := StringName.new("get_variation_face_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FontVariation) set_variation_transform(transform Transform2D) {
	classname := StringName.new("FontVariation")
	fnname := StringName.new("set_variation_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FontVariation) get_variation_transform() Transform2D {
	mut result := Transform2D{}
	classname := StringName.new("FontVariation")
	fnname := StringName.new("get_variation_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FontVariation) set_opentype_features(features Dictionary) {
	classname := StringName.new("FontVariation")
	fnname := StringName.new("set_opentype_features")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&features)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FontVariation) set_spacing(spacing TextServerSpacingType, value i64) {
	classname := StringName.new("FontVariation")
	fnname := StringName.new("set_spacing")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3122339690)
	mut args := unsafe { [2]voidptr{} }
	i64_spacing := i64(spacing)
	args[0] = unsafe{voidptr(&i64_spacing)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FontVariation) set_baseline_offset(baseline_offset f64) {
	classname := StringName.new("FontVariation")
	fnname := StringName.new("set_baseline_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&baseline_offset)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FontVariation) get_baseline_offset() f64 {
	mut result := f64(0)
	classname := StringName.new("FontVariation")
	fnname := StringName.new("get_baseline_offset")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
