module gd

pub struct ConcavePolygonShape3D {
	Shape3D
}

pub fn (s &ConcavePolygonShape3D) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ConcavePolygonShape3D) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ConcavePolygonShape3D) set_faces(faces PackedVector3Array) {
	classname := StringName.new("ConcavePolygonShape3D")
	fnname := StringName.new("set_faces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&faces)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ConcavePolygonShape3D) get_faces() PackedVector3Array {
	mut result := PackedVector3Array{}
	classname := StringName.new("ConcavePolygonShape3D")
	fnname := StringName.new("get_faces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ConcavePolygonShape3D) set_backface_collision_enabled(enabled bool) {
	classname := StringName.new("ConcavePolygonShape3D")
	fnname := StringName.new("set_backface_collision_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ConcavePolygonShape3D) is_backface_collision_enabled() bool {
	mut result := false
	classname := StringName.new("ConcavePolygonShape3D")
	fnname := StringName.new("is_backface_collision_enabled")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
