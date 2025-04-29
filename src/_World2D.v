module gd

pub struct World2D {
	Resource
}

pub fn (s &World2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s World2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &World2D) get_canvas() RID {
	mut result := RID{}
	classname := StringName.new("World2D")
	fnname := StringName.new("get_canvas")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &World2D) get_navigation_map() RID {
	mut result := RID{}
	classname := StringName.new("World2D")
	fnname := StringName.new("get_navigation_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &World2D) get_space() RID {
	mut result := RID{}
	classname := StringName.new("World2D")
	fnname := StringName.new("get_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &World2D) get_direct_space_state() PhysicsDirectSpaceState2D {
	mut result := PhysicsDirectSpaceState2D{}
	classname := StringName.new("World2D")
	fnname := StringName.new("get_direct_space_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2506717822)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
