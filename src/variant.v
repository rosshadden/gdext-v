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

pub fn (s &Object) try_cast_to[T]() ?T {
	sn := StringName.new(T.name.split('.').last())
	defer { sn.deinit() }
	class_tag := gdf.classdb_get_class_tag(sn)
	t := T{
		ptr: gdf.object_cast_to(s.ptr, class_tag)
	}

	if t.ptr == unsafe { nil } {
		return none
	} else {
		return t
	}
}

// TODO: unify all these misc cast/path methods

pub fn (s &Object) cast_to[T]() T {
	return s.try_cast_to[T]() or { panic('cannot cast: ${s} -> ${T.name.split('.').last()}') }
}

pub fn (s &Object) try_cast_to_v[T]() ?&T {
	type_name := T.name.split('.').last()
	sn := StringName.new(type_name)
	defer { sn.deinit() }
	class_tag := gdf.classdb_get_class_tag(sn)
	t := Object{
		ptr: gdf.object_cast_to(s.ptr, class_tag)
	}
	if t.ptr == unsafe { nil } {
		return none
	}
	gdf.object_get_class_name(t.ptr, gdf.clp, GDExtensionUninitializedStringNamePtr(&sn))
	o_name := sn.to_v()
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

pub fn (s &Object) cast_to_v[T]() &T {
	type_name := T.name.split('.').last()
	return s.try_cast_to_v[T]() or { panic('cannot cast: ${s} -> ${type_name}') }
}

pub fn (s &Node) get_node_v(path string) Node {
	np := NodePath.new(path)
	defer { np.deinit() }
	node := s.get_node(np)
	return node
}

pub fn (s &Node) get_node_as[T](path string) T {
	return s.get_node_v(path).cast_to[T]()
}

pub fn Callable.new(object &Object, method string) Callable {
	sn := StringName.new(method)
	defer { sn.deinit() }
	c := Callable.new2(object, sn)
	return c
}
