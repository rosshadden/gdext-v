module gd

pub struct GLTFNode {
	Resource
}

pub fn (s &GLTFNode) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFNode) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GLTFNode) get_original_name() string {
	mut result := String{}
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_original_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GLTFNode) set_original_name(original_name string) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_original_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(original_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_parent() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_parent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_parent(parent i64) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_parent")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&parent)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_height() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_height(height i64) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_height")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&height)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_xform() Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_xform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4183770049)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_xform(xform Transform3D) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_xform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&xform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_mesh() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_mesh(mesh i64) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&mesh)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_camera() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_camera")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_camera(camera i64) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_camera")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&camera)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_skin() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_skin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_skin(skin i64) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_skin")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&skin)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_skeleton() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_skeleton(skeleton i64) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_skeleton")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&skeleton)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_position() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3783033775)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_position(position Vector3) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_position")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&position)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_rotation() Quaternion {
	mut result := Quaternion{}
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2916281908)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_rotation(rotation Quaternion) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_rotation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1727505552)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&rotation)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_scale() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3783033775)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_scale(scale Vector3) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_scale")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&scale)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_children() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_children")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_children(children PackedInt32Array) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_children")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&children)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) append_child_index(child_index i64) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("append_child_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&child_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_light() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_light")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_light(light i64) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_light")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&light)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFNode) get_additional_data(extension_name string) Variant {
	mut result := Variant{}
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_additional_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(extension_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFNode) set_additional_data(extension_name string, additional_data Variant) {
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("set_additional_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(extension_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&additional_data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct GLTFNode_get_scene_node_path_Cfg {
pub:
	handle_skeletons bool
}

pub fn (s &GLTFNode) get_scene_node_path(gltf_state GLTFState, cfg GLTFNode_get_scene_node_path_Cfg) NodePath {
	mut result := NodePath{}
	classname := StringName.new("GLTFNode")
	fnname := StringName.new("get_scene_node_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 573359477)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&gltf_state.ptr)
	args[1] = unsafe{voidptr(&cfg.handle_skeletons)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
