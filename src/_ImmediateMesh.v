module gd

pub struct ImmediateMesh {
	Mesh
}

pub fn (s &ImmediateMesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ImmediateMesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct ImmediateMesh_surface_begin_Cfg {
pub:
	material Material
}

pub fn (s &ImmediateMesh) surface_begin(primitive MeshPrimitiveType, cfg ImmediateMesh_surface_begin_Cfg) {
	classname := StringName.new("ImmediateMesh")
	fnname := StringName.new("surface_begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2794442543)
	mut args := unsafe { [2]voidptr{} }
	i64_primitive := i64(primitive)
	args[0] = unsafe{voidptr(&i64_primitive)}
	args[1] = voidptr(&cfg.material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImmediateMesh) surface_set_color(color Color) {
	classname := StringName.new("ImmediateMesh")
	fnname := StringName.new("surface_set_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImmediateMesh) surface_set_normal(normal Vector3) {
	classname := StringName.new("ImmediateMesh")
	fnname := StringName.new("surface_set_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&normal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImmediateMesh) surface_set_tangent(tangent Plane) {
	classname := StringName.new("ImmediateMesh")
	fnname := StringName.new("surface_set_tangent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3505987427)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tangent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImmediateMesh) surface_set_uv(uv Vector2) {
	classname := StringName.new("ImmediateMesh")
	fnname := StringName.new("surface_set_uv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&uv)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImmediateMesh) surface_set_uv2(uv2 Vector2) {
	classname := StringName.new("ImmediateMesh")
	fnname := StringName.new("surface_set_uv2")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&uv2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImmediateMesh) surface_add_vertex(vertex Vector3) {
	classname := StringName.new("ImmediateMesh")
	fnname := StringName.new("surface_add_vertex")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vertex)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImmediateMesh) surface_add_vertex_2d(vertex Vector2) {
	classname := StringName.new("ImmediateMesh")
	fnname := StringName.new("surface_add_vertex_2d")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vertex)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImmediateMesh) surface_end() {
	classname := StringName.new("ImmediateMesh")
	fnname := StringName.new("surface_end")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ImmediateMesh) clear_surfaces() {
	classname := StringName.new("ImmediateMesh")
	fnname := StringName.new("clear_surfaces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
