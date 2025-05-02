module gd

@[heap]
pub struct Variant {
	godot_data [24]u8 // filler
}

pub interface ToVariant {
	to_variant() Variant
}

pub interface FromVariant {
mut:
	from_variant(var &Variant)
}

pub fn (v &Variant) deinit() {
	gdf.variant_destroy(v)
}

pub fn (v &Variant) to_bool() bool {
	var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_bool)
	t := false
	var_to_type(voidptr(&t), v)
	return t
}

pub fn (v &Variant) from_bool(value &bool) {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_bool)
	to_variant(GDExtensionUninitializedVariantPtr(v), GDExtensionTypePtr(value))
}

pub fn (v &Variant) to_int() int {
	var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_i64)
	t := 0
	var_to_type(voidptr(&t), v)
	return t
}

pub fn (v &Variant) to_string() string {
	var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_string)
	t := String{}
	var_to_type(voidptr(&t), v)
	return t.to_v()
}

// TODO: move to variant
pub fn i64_to_variant(i &i64) Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_i64)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(i))
	return result
}

// TODO: move to variant
pub fn f64_to_variant(f &f64) Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_f64)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), GDExtensionTypePtr(f))
	return result
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

pub fn (o &Object) cast_to[T]() ?T {
	sn := StringName.new(T.name.split('.').last())
	class_tag := gdf.classdb_get_class_tag(sn)
	sn.deinit()
	t := T{
		ptr: gdf.object_cast_to(o.ptr, class_tag)
	}

	if t.ptr == unsafe { nil } {
		return none
	} else {
		return t
	}
}

pub fn (o &Object) cast_to_v[T](type_name string) ?&T {
	sn := StringName.new(type_name)
	class_tag := gdf.classdb_get_class_tag(sn)
	sn.deinit()
	t := Object{
		ptr: gdf.object_cast_to(o.ptr, class_tag)
	}

	if t.ptr == unsafe { nil } {
		return none
	}

	gdf.object_get_class_name(t.ptr, gdf.clp, GDExtensionUninitializedStringNamePtr(&sn))
	o_name := sn.to_v()
	sn.deinit()
	if o_name != type_name {
		return none
	}
	v_ptr := gdf.object_get_instance_binding(t.ptr, gdf.clp, unsafe { nil })
	if v_ptr == unsafe { nil } {
		return none
	}
	v := unsafe { &T(v_ptr) }
	return v
}

pub fn (r &Node) get_node_v(path string) Node {
	np := NodePath.new(path)
	node := r.get_node(np)
	np.deinit()
	return node
}

pub fn Callable.new(object &Object, method string) Callable {
	sn := StringName.new(method)
	c := Callable.new2(object, sn)
	sn.deinit()
	return c
}
