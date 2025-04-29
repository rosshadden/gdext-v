module gd

pub struct WorldEnvironment {
	Node
}

pub fn (s &WorldEnvironment) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s WorldEnvironment) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &WorldEnvironment) set_environment(env Environment) {
	classname := StringName.new("WorldEnvironment")
	fnname := StringName.new("set_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4143518816)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&env.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WorldEnvironment) get_environment() Environment {
	mut result := Environment{}
	classname := StringName.new("WorldEnvironment")
	fnname := StringName.new("get_environment")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082064660)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WorldEnvironment) set_camera_attributes(camera_attributes CameraAttributes) {
	classname := StringName.new("WorldEnvironment")
	fnname := StringName.new("set_camera_attributes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817810567)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&camera_attributes.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WorldEnvironment) get_camera_attributes() CameraAttributes {
	mut result := CameraAttributes{}
	classname := StringName.new("WorldEnvironment")
	fnname := StringName.new("get_camera_attributes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3921283215)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &WorldEnvironment) set_compositor(compositor Compositor) {
	classname := StringName.new("WorldEnvironment")
	fnname := StringName.new("set_compositor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1586754307)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&compositor.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &WorldEnvironment) get_compositor() Compositor {
	mut result := Compositor{}
	classname := StringName.new("WorldEnvironment")
	fnname := StringName.new("get_compositor")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3647707413)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
