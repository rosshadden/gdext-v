module gd

pub struct FoldableGroup {
	Resource
}

pub fn (s &FoldableGroup) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s FoldableGroup) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &FoldableGroup) get_expanded_container() FoldableContainer {
	mut result := FoldableContainer{}
	classname := StringName.new("FoldableGroup")
	fnname := StringName.new("get_expanded_container")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1427441056)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FoldableGroup) get_containers() Array {
	mut result := Array{}
	classname := StringName.new("FoldableGroup")
	fnname := StringName.new("get_containers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &FoldableGroup) set_allow_folding_all(enabled bool) {
	classname := StringName.new("FoldableGroup")
	fnname := StringName.new("set_allow_folding_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &FoldableGroup) is_allow_folding_all() bool {
	mut result := false
	classname := StringName.new("FoldableGroup")
	fnname := StringName.new("is_allow_folding_all")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
