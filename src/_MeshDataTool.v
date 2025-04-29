module gd

pub struct MeshDataTool {
	RefCounted
}

pub fn (s &MeshDataTool) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MeshDataTool) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &MeshDataTool) clear() {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) create_from_surface(mesh ArrayMesh, surface i64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("create_from_surface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2727020678)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&mesh.ptr)
	args[1] = unsafe{voidptr(&surface)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct MeshDataTool_commit_to_surface_Cfg {
pub:
	compression_flags i64
}

pub fn (s &MeshDataTool) commit_to_surface(mesh ArrayMesh, cfg MeshDataTool_commit_to_surface_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("commit_to_surface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2021686445)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&mesh.ptr)
	args[1] = unsafe{voidptr(&cfg.compression_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &MeshDataTool) get_format() i64 {
	mut result := i64(0)
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) get_vertex_count() i64 {
	mut result := i64(0)
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_vertex_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) get_edge_count() i64 {
	mut result := i64(0)
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_edge_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) get_face_count() i64 {
	mut result := i64(0)
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_face_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) set_vertex(idx i64, vertex Vector3) {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("set_vertex")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&vertex)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) get_vertex(idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_vertex")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) set_vertex_normal(idx i64, normal Vector3) {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("set_vertex_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&normal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) get_vertex_normal(idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_vertex_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) set_vertex_tangent(idx i64, tangent Plane) {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("set_vertex_tangent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1104099133)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&tangent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) get_vertex_tangent(idx i64) Plane {
	mut result := Plane{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_vertex_tangent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1372055458)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) set_vertex_uv(idx i64, uv Vector2) {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("set_vertex_uv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&uv)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) get_vertex_uv(idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_vertex_uv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) set_vertex_uv2(idx i64, uv2 Vector2) {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("set_vertex_uv2")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&uv2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) get_vertex_uv2(idx i64) Vector2 {
	mut result := Vector2{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_vertex_uv2")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) set_vertex_color(idx i64, color Color) {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("set_vertex_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) get_vertex_color(idx i64) Color {
	mut result := Color{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_vertex_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) set_vertex_bones(idx i64, bones PackedInt32Array) {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("set_vertex_bones")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3500328261)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&bones)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) get_vertex_bones(idx i64) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_vertex_bones")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706082319)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) set_vertex_weights(idx i64, weights PackedFloat32Array) {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("set_vertex_weights")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1345852415)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&weights)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) get_vertex_weights(idx i64) PackedFloat32Array {
	mut result := PackedFloat32Array{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_vertex_weights")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1542882410)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) set_vertex_meta(idx i64, meta Variant) {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("set_vertex_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&meta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) get_vertex_meta(idx i64) Variant {
	mut result := Variant{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_vertex_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) get_vertex_edges(idx i64) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_vertex_edges")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706082319)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) get_vertex_faces(idx i64) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_vertex_faces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706082319)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) get_edge_vertex(idx i64, vertex i64) i64 {
	mut result := i64(0)
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_edge_vertex")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&vertex)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) get_edge_faces(idx i64) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_edge_faces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706082319)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) set_edge_meta(idx i64, meta Variant) {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("set_edge_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&meta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) get_edge_meta(idx i64) Variant {
	mut result := Variant{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_edge_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) get_face_vertex(idx i64, vertex i64) i64 {
	mut result := i64(0)
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_face_vertex")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&vertex)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) get_face_edge(idx i64, edge i64) i64 {
	mut result := i64(0)
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_face_edge")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&edge)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) set_face_meta(idx i64, meta Variant) {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("set_face_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	args[1] = unsafe{voidptr(&meta)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) get_face_meta(idx i64) Variant {
	mut result := Variant{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_face_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) get_face_normal(idx i64) Vector3 {
	mut result := Vector3{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_face_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshDataTool) set_material(material Material) {
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("set_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshDataTool) get_material() Material {
	mut result := Material{}
	classname := StringName.new("MeshDataTool")
	fnname := StringName.new("get_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
