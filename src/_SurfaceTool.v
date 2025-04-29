module gd

pub enum SurfaceToolCustomFormat as i64 {
	custom_rgba8_unorm = 0
	custom_rgba8_snorm = 1
	custom_rg_half = 2
	custom_rgba_half = 3
	custom_r_float = 4
	custom_rg_float = 5
	custom_rgb_float = 6
	custom_rgba_float = 7
	custom_max = 8
}

pub enum SurfaceToolSkinWeightCount as i64 {
	skin_4_weights = 0
	skin_8_weights = 1
}

pub struct SurfaceTool {
	RefCounted
}

pub fn (s &SurfaceTool) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SurfaceTool) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SurfaceTool) set_skin_weight_count(count SurfaceToolSkinWeightCount) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("set_skin_weight_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 618679515)
	mut args := unsafe { [1]voidptr{} }
	i64_count := i64(count)
	args[0] = unsafe{voidptr(&i64_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) get_skin_weight_count() SurfaceToolSkinWeightCount {
	mut result := i64(SurfaceToolSkinWeightCount.skin_4_weights)
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("get_skin_weight_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1072401130)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{SurfaceToolSkinWeightCount(result)}
}

pub fn (s &SurfaceTool) set_custom_format(channel_index i64, format SurfaceToolCustomFormat) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("set_custom_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4087759856)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&channel_index)}
	i64_format := i64(format)
	args[1] = unsafe{voidptr(&i64_format)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) get_custom_format(channel_index i64) SurfaceToolCustomFormat {
	mut result := i64(SurfaceToolCustomFormat.custom_rgba8_unorm)
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("get_custom_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 839863283)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&channel_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{SurfaceToolCustomFormat(result)}
}

pub fn (s &SurfaceTool) begin(primitive MeshPrimitiveType) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("begin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230304113)
	mut args := unsafe { [1]voidptr{} }
	i64_primitive := i64(primitive)
	args[0] = unsafe{voidptr(&i64_primitive)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) add_vertex(vertex Vector3) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("add_vertex")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&vertex)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) set_color(color Color) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("set_color")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) set_normal(normal Vector3) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("set_normal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&normal)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) set_tangent(tangent Plane) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("set_tangent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3505987427)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&tangent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) set_uv(uv Vector2) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("set_uv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&uv)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) set_uv2(uv2 Vector2) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("set_uv2")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&uv2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) set_bones(bones PackedInt32Array) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("set_bones")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&bones)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) set_weights(weights PackedFloat32Array) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("set_weights")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&weights)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) set_custom(channel_index i64, custom_color Color) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("set_custom")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&channel_index)}
	args[1] = unsafe{voidptr(&custom_color)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) set_smooth_group(index i64) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("set_smooth_group")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct SurfaceTool_add_triangle_fan_Cfg {
pub:
	uvs PackedVector2Array
	colors PackedColorArray
	uv2s PackedVector2Array
	normals PackedVector3Array
	tangents Array
}

pub fn (s &SurfaceTool) add_triangle_fan(vertices PackedVector3Array, cfg SurfaceTool_add_triangle_fan_Cfg) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("add_triangle_fan")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2235017613)
	mut args := unsafe { [6]voidptr{} }
	args[0] = unsafe{voidptr(&vertices)}
	args[1] = unsafe{voidptr(&cfg.uvs)}
	args[2] = unsafe{voidptr(&cfg.colors)}
	args[3] = unsafe{voidptr(&cfg.uv2s)}
	args[4] = unsafe{voidptr(&cfg.normals)}
	args[5] = unsafe{voidptr(&cfg.tangents)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) add_index(index i64) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("add_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) index() {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) deindex() {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("deindex")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct SurfaceTool_generate_normals_Cfg {
pub:
	flip bool
}

pub fn (s &SurfaceTool) generate_normals(cfg SurfaceTool_generate_normals_Cfg) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("generate_normals")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.flip)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) generate_tangents() {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("generate_tangents")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) optimize_indices_for_cache() {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("optimize_indices_for_cache")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) get_aabb() AABB {
	mut result := AABB{}
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("get_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct SurfaceTool_generate_lod_Cfg {
pub:
	target_index_count i64
}

pub fn (s &SurfaceTool) generate_lod(nd_threshold f64, cfg SurfaceTool_generate_lod_Cfg) PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("generate_lod")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1938056459)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&nd_threshold)}
	args[1] = unsafe{voidptr(&cfg.target_index_count)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SurfaceTool) set_material(material Material) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("set_material")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&material.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) get_primitive_type() MeshPrimitiveType {
	mut result := i64(MeshPrimitiveType.primitive_points)
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("get_primitive_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 768822145)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MeshPrimitiveType(result)}
}

pub fn (s &SurfaceTool) clear() {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) create_from(existing Mesh, surface i64) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("create_from")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1767024570)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&existing.ptr)
	args[1] = unsafe{voidptr(&surface)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct SurfaceTool_create_from_arrays_Cfg {
pub:
	primitive_type MeshPrimitiveType
}

pub fn (s &SurfaceTool) create_from_arrays(arrays Array, cfg SurfaceTool_create_from_arrays_Cfg) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("create_from_arrays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1894639680)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&arrays)}
	i64_primitive_type := i64(cfg.primitive_type)
	args[1] = unsafe{voidptr(&i64_primitive_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) create_from_blend_shape(existing Mesh, surface i64, blend_shape string) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("create_from_blend_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1306185582)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&existing.ptr)
	args[1] = unsafe{voidptr(&surface)}
	arg_sn2 := String.new(blend_shape)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SurfaceTool) append_from(existing Mesh, surface i64, transform Transform3D) {
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("append_from")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2217967155)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&existing.ptr)
	args[1] = unsafe{voidptr(&surface)}
	args[2] = unsafe{voidptr(&transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct SurfaceTool_commit_Cfg {
pub:
	existing ArrayMesh
	flags i64
}

pub fn (s &SurfaceTool) commit(cfg SurfaceTool_commit_Cfg) ArrayMesh {
	mut result := ArrayMesh{}
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("commit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4107864055)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&cfg.existing.ptr)
	args[1] = unsafe{voidptr(&cfg.flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SurfaceTool) commit_to_arrays() Array {
	mut result := Array{}
	classname := StringName.new("SurfaceTool")
	fnname := StringName.new("commit_to_arrays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
