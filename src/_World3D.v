module gd

pub struct World3D {
	Resource
}

pub fn (s &World3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s World3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &World3D) get_space() RID {
	mut result := RID{}
	classname := StringName.new("World3D")
	fnname := StringName.new("get_space")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &World3D) get_navigation_map() RID {
	mut result := RID{}
	classname := StringName.new("World3D")
	fnname := StringName.new("get_navigation_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &World3D) get_scenario() RID {
	mut result := RID{}
	classname := StringName.new("World3D")
	fnname := StringName.new("get_scenario")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &World3D) set_environment(env Environment) {
	classname := StringName.new("World3D")
	fnname := StringName.new("set_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4143518816)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&env.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &World3D) get_environment() Environment {
	mut result := Environment{}
	classname := StringName.new("World3D")
	fnname := StringName.new("get_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082064660)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &World3D) set_fallback_environment(env Environment) {
	classname := StringName.new("World3D")
	fnname := StringName.new("set_fallback_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4143518816)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&env.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &World3D) get_fallback_environment() Environment {
	mut result := Environment{}
	classname := StringName.new("World3D")
	fnname := StringName.new("get_fallback_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082064660)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &World3D) set_camera_attributes(attributes CameraAttributes) {
	classname := StringName.new("World3D")
	fnname := StringName.new("set_camera_attributes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817810567)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&attributes.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &World3D) get_camera_attributes() CameraAttributes {
	mut result := CameraAttributes{}
	classname := StringName.new("World3D")
	fnname := StringName.new("get_camera_attributes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3921283215)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &World3D) get_direct_space_state() PhysicsDirectSpaceState3D {
	mut result := PhysicsDirectSpaceState3D{}
	classname := StringName.new("World3D")
	fnname := StringName.new("get_direct_space_state")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2069328350)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
