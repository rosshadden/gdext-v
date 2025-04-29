module gd

pub struct PhysicsServer3DRenderingServerHandler {
	Object
}

pub fn (s &PhysicsServer3DRenderingServerHandler) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s PhysicsServer3DRenderingServerHandler) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IPhysicsServer3DRenderingServerHandlerSetVertex {
mut:
	set_vertex_(vertex_id i64, vertex Vector3)
}

pub fn (s &PhysicsServer3DRenderingServerHandler) gd_set_vertex(vertex_id i64, vertex Vector3) {
	classname := StringName.new("PhysicsServer3DRenderingServerHandler")
	fnname := StringName.new("_set_vertex")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&vertex_id)}
	args[1] = unsafe{voidptr(&vertex)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DRenderingServerHandlerSetNormal {
mut:
	set_normal_(vertex_id i64, normal Vector3)
}

pub fn (s &PhysicsServer3DRenderingServerHandler) gd_set_normal(vertex_id i64, normal Vector3) {
	classname := StringName.new("PhysicsServer3DRenderingServerHandler")
	fnname := StringName.new("_set_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&vertex_id)}
	args[1] = unsafe{voidptr(&normal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IPhysicsServer3DRenderingServerHandlerSetAabb {
mut:
	set_aabb_(aabb AABB)
}

pub fn (s &PhysicsServer3DRenderingServerHandler) gd_set_aabb(aabb AABB) {
	classname := StringName.new("PhysicsServer3DRenderingServerHandler")
	fnname := StringName.new("_set_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&aabb)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsServer3DRenderingServerHandler) set_vertex(vertex_id i64, vertex Vector3) {
	classname := StringName.new("PhysicsServer3DRenderingServerHandler")
	fnname := StringName.new("set_vertex")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&vertex_id)}
	args[1] = unsafe{voidptr(&vertex)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsServer3DRenderingServerHandler) set_normal(vertex_id i64, normal Vector3) {
	classname := StringName.new("PhysicsServer3DRenderingServerHandler")
	fnname := StringName.new("set_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&vertex_id)}
	args[1] = unsafe{voidptr(&normal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &PhysicsServer3DRenderingServerHandler) set_aabb(aabb AABB) {
	classname := StringName.new("PhysicsServer3DRenderingServerHandler")
	fnname := StringName.new("set_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&aabb)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
