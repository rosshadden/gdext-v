module gd

pub struct ArrayMesh {
	Mesh
}

pub fn (s &ArrayMesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s ArrayMesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &ArrayMesh) add_blend_shape(name string) {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("add_blend_shape")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) get_blend_shape_count() i64 {
	mut result := i64(0)
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("get_blend_shape_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ArrayMesh) get_blend_shape_name(index i64) string {
	mut result := StringName{}
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("get_blend_shape_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ArrayMesh) set_blend_shape_name(index i64, name string) {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("set_blend_shape_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	arg_sn1 := StringName.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) clear_blend_shapes() {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("clear_blend_shapes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) set_blend_shape_mode(mode MeshBlendShapeMode) {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("set_blend_shape_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 227983991)
	mut args := unsafe { [1]voidptr{} }
	i64_mode := i64(mode)
	args[0] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) get_blend_shape_mode() MeshBlendShapeMode {
	mut result := i64(MeshBlendShapeMode.blend_shape_mode_normalized)
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("get_blend_shape_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 836485024)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MeshBlendShapeMode(result)}
}

@[params]
pub struct ArrayMesh_add_surface_from_arrays_Cfg {
pub:
	blend_shapes Array
	lods Dictionary
	flags MeshArrayFormat
}

pub fn (s &ArrayMesh) add_surface_from_arrays(primitive MeshPrimitiveType, arrays Array, cfg ArrayMesh_add_surface_from_arrays_Cfg) {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("add_surface_from_arrays")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1796411378)
	mut args := unsafe { [5]voidptr{} }
	i64_primitive := i64(primitive)
	args[0] = unsafe{voidptr(&i64_primitive)}
	args[1] = unsafe{voidptr(&arrays)}
	args[2] = unsafe{voidptr(&cfg.blend_shapes)}
	args[3] = unsafe{voidptr(&cfg.lods)}
	i64_flags := i64(cfg.flags)
	args[4] = unsafe{voidptr(&i64_flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) clear_surfaces() {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("clear_surfaces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) surface_remove(surf_idx i64) {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("surface_remove")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) surface_update_vertex_region(surf_idx i64, offset i64, data PackedByteArray) {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("surface_update_vertex_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3837166854)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	args[1] = unsafe{voidptr(&offset)}
	args[2] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) surface_update_attribute_region(surf_idx i64, offset i64, data PackedByteArray) {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("surface_update_attribute_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3837166854)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	args[1] = unsafe{voidptr(&offset)}
	args[2] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) surface_update_skin_region(surf_idx i64, offset i64, data PackedByteArray) {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("surface_update_skin_region")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3837166854)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	args[1] = unsafe{voidptr(&offset)}
	args[2] = unsafe{voidptr(&data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) surface_get_array_len(surf_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("surface_get_array_len")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ArrayMesh) surface_get_array_index_len(surf_idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("surface_get_array_index_len")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ArrayMesh) surface_get_format(surf_idx i64) MeshArrayFormat {
	mut result := i64(MeshArrayFormat.array_format_vertex)
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("surface_get_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3718287884)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MeshArrayFormat(result)}
}

pub fn (s &ArrayMesh) surface_get_primitive_type(surf_idx i64) MeshPrimitiveType {
	mut result := i64(MeshPrimitiveType.primitive_points)
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("surface_get_primitive_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4141943888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{MeshPrimitiveType(result)}
}

pub fn (s &ArrayMesh) surface_find_by_name(name string) i64 {
	mut result := i64(0)
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("surface_find_by_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ArrayMesh) surface_set_name(surf_idx i64, name string) {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("surface_set_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) surface_get_name(surf_idx i64) string {
	mut result := String{}
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("surface_get_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&surf_idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &ArrayMesh) regen_normal_maps() {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("regen_normal_maps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) lightmap_unwrap(transform Transform3D, texel_size f64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("lightmap_unwrap")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1476641071)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&transform)}
	args[1] = unsafe{voidptr(&texel_size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &ArrayMesh) set_custom_aabb(aabb AABB) {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("set_custom_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&aabb)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) get_custom_aabb() AABB {
	mut result := AABB{}
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("get_custom_aabb")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &ArrayMesh) set_shadow_mesh(mesh ArrayMesh) {
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("set_shadow_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3377897901)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &ArrayMesh) get_shadow_mesh() ArrayMesh {
	mut result := ArrayMesh{}
	classname := StringName.new("ArrayMesh")
	fnname := StringName.new("get_shadow_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3206942465)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
