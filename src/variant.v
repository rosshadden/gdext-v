module gd

@[heap]
pub struct Variant {
	data_ [24]u8
}

pub interface ToVariant {
	to_variant() Variant
}

pub interface FromVariant {
mut:
	from_variant(var &Variant)
}

pub fn (s &Variant) deinit() {
	gdf.variant_destroy(s)
}

pub fn (s &Variant) from_variant(src &Variant) {
	unsafe {
		C.memcpy(&s.data_, &src.data_, sizeof(s.data_))
	}
}

pub fn (s &Variant) to_bool() bool {
	var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_bool)
	t := false
	var_to_type(voidptr(&t), s)
	return t
}

pub fn (s &Variant) from_bool(src &bool) {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_bool)
	to_variant(GDExtensionUninitializedVariantPtr(s), GDExtensionTypePtr(src))
}

pub fn (s &Variant) to_int() int {
	var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_i64)
	t := 0
	var_to_type(voidptr(&t), s)
	return t
}

pub fn (s &Variant) from_int(src &int) {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_i64)
	to_variant(GDExtensionUninitializedVariantPtr(s), GDExtensionTypePtr(src))
}

pub fn (s &Variant) to_string() string {
	var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_string)
	t := String{}
	var_to_type(voidptr(&t), s)
	return t.to_v()
}

pub fn Variant.from_bool(src bool) Variant {
	result := Variant{}
	result.from_bool(src)
	return result
}

pub fn Variant.from_i64(src &i64) Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_i64)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(src))
	return result
}

pub fn Variant.from_int(src &int) Variant {
	return Variant.from_i64(i64(src))
}

pub fn Variant.from_f64(f &f64) Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_f64)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(f))
	return result
}

// TODO: move to variant
pub fn i64_to_variant(src &i64) Variant {
	return Variant.from_i64(src)
}

// TODO: move to variant
pub fn f64_to_variant(f &f64) Variant {
	return Variant.from_f64(f)
}

// TODO: move to variant
pub fn i64_from_variant(var &Variant) i64 {
	var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_i64)
	t := i64(0)
	var_to_type(voidptr(&t), var)
	return t
}

// TODO: move to variant
pub fn f64_from_variant(var &Variant) f64 {
	var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_f64)
	t := f64(0)
	var_to_type(voidptr(&t), var)
	return t
}
