module gd

pub struct RemoteTransform2D {
	Node2D
}

pub fn (s &RemoteTransform2D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s RemoteTransform2D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &RemoteTransform2D) set_remote_node(path NodePath) {
	classname := StringName.new("RemoteTransform2D")
	fnname := StringName.new("set_remote_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RemoteTransform2D) get_remote_node() NodePath {
	mut result := NodePath{}
	classname := StringName.new("RemoteTransform2D")
	fnname := StringName.new("get_remote_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RemoteTransform2D) force_update_cache() {
	classname := StringName.new("RemoteTransform2D")
	fnname := StringName.new("force_update_cache")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RemoteTransform2D) set_use_global_coordinates(use_global_coordinates bool) {
	classname := StringName.new("RemoteTransform2D")
	fnname := StringName.new("set_use_global_coordinates")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_global_coordinates)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RemoteTransform2D) get_use_global_coordinates() bool {
	mut result := false
	classname := StringName.new("RemoteTransform2D")
	fnname := StringName.new("get_use_global_coordinates")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RemoteTransform2D) set_update_position(update_remote_position bool) {
	classname := StringName.new("RemoteTransform2D")
	fnname := StringName.new("set_update_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&update_remote_position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RemoteTransform2D) get_update_position() bool {
	mut result := false
	classname := StringName.new("RemoteTransform2D")
	fnname := StringName.new("get_update_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RemoteTransform2D) set_update_rotation(update_remote_rotation bool) {
	classname := StringName.new("RemoteTransform2D")
	fnname := StringName.new("set_update_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&update_remote_rotation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RemoteTransform2D) get_update_rotation() bool {
	mut result := false
	classname := StringName.new("RemoteTransform2D")
	fnname := StringName.new("get_update_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &RemoteTransform2D) set_update_scale(update_remote_scale bool) {
	classname := StringName.new("RemoteTransform2D")
	fnname := StringName.new("set_update_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&update_remote_scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &RemoteTransform2D) get_update_scale() bool {
	mut result := false
	classname := StringName.new("RemoteTransform2D")
	fnname := StringName.new("get_update_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
