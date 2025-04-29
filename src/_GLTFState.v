module gd

pub struct GLTFState {
	Resource
}

pub fn (s &GLTFState) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFState) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GLTFState) add_used_extension(extension_name string, required bool) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("add_used_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(extension_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&required)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) append_data_to_buffers(data PackedByteArray, deduplication bool) i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFState")
	fnname := StringName.new("append_data_to_buffers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1460416665)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&data)}
	args[1] = unsafe{voidptr(&deduplication)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) append_gltf_node(gltf_node GLTFNode, godot_scene_node Node, parent_node_index i64) i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFState")
	fnname := StringName.new("append_gltf_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3562288551)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&gltf_node.ptr)
	args[1] = voidptr(&godot_scene_node.ptr)
	args[2] = unsafe{voidptr(&parent_node_index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) get_json() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_json")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_json(json Dictionary) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_json")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&json)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_major_version() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_major_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_major_version(major_version i64) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_major_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&major_version)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_minor_version() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_minor_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_minor_version(minor_version i64) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_minor_version")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&minor_version)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_copyright() string {
	mut result := String{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_copyright")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GLTFState) set_copyright(copyright string) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_copyright")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(copyright)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_glb_data() PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_glb_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_glb_data(glb_data PackedByteArray) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_glb_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&glb_data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_use_named_skin_binds() bool {
	mut result := false
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_use_named_skin_binds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_use_named_skin_binds(use_named_skin_binds bool) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_use_named_skin_binds")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&use_named_skin_binds)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_nodes() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_nodes(nodes Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&nodes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_buffers() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_buffers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_buffers(buffers Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_buffers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_buffer_views() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_buffer_views")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_buffer_views(buffer_views Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_buffer_views")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&buffer_views)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_accessors() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_accessors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_accessors(accessors Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_accessors")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&accessors)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_meshes() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_meshes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_meshes(meshes Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_meshes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&meshes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_animation_players_count(idx i64) i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_animation_players_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) get_animation_player(idx i64) AnimationPlayer {
	mut result := AnimationPlayer{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_animation_player")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 925043400)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) get_materials() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_materials")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_materials(materials Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_materials")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&materials)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_scene_name() string {
	mut result := String{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_scene_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GLTFState) set_scene_name(scene_name string) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_scene_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(scene_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_base_path() string {
	mut result := String{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_base_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GLTFState) set_base_path(base_path string) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_base_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(base_path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_filename() string {
	mut result := String{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_filename")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GLTFState) set_filename(filename string) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_filename")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(filename)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_root_nodes() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_root_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_root_nodes(root_nodes PackedInt32Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_root_nodes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&root_nodes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_textures() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_textures")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_textures(textures Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_textures")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&textures)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_texture_samplers() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_texture_samplers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_texture_samplers(texture_samplers Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_texture_samplers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&texture_samplers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_images() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_images")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_images(images Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_images")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&images)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_skins() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_skins")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_skins(skins Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_skins")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&skins)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_cameras() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_cameras")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_cameras(cameras Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_cameras")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cameras)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_lights() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_lights")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_lights(lights Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_lights")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&lights)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_unique_names() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_unique_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_unique_names(unique_names Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_unique_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&unique_names)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_unique_animation_names() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_unique_animation_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_unique_animation_names(unique_animation_names Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_unique_animation_names")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&unique_animation_names)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_skeletons() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_skeletons")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_skeletons(skeletons Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_skeletons")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&skeletons)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_create_animations() bool {
	mut result := false
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_create_animations")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_create_animations(create_animations bool) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_create_animations")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&create_animations)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_import_as_skeleton_bones() bool {
	mut result := false
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_import_as_skeleton_bones")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_import_as_skeleton_bones(import_as_skeleton_bones bool) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_import_as_skeleton_bones")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&import_as_skeleton_bones)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_animations() Array {
	mut result := Array{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_animations")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_animations(animations Array) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_animations")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&animations)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_scene_node(idx i64) Node {
	mut result := Node{}
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_scene_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4253421667)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) get_node_index(scene_node Node) i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_node_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1205807060)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scene_node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) get_additional_data(extension_name string) Variant {
	mut result := Variant{}
	classname := StringName.new("GLTFState")
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

pub fn (s &GLTFState) set_additional_data(extension_name string, additional_data Variant) {
	classname := StringName.new("GLTFState")
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

pub fn (s &GLTFState) get_handle_binary_image() i64 {
	mut result := i64(0)
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_handle_binary_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFState) set_handle_binary_image(method i64) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_handle_binary_image")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&method)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) set_bake_fps(value f64) {
	classname := StringName.new("GLTFState")
	fnname := StringName.new("set_bake_fps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFState) get_bake_fps() f64 {
	mut result := f64(0)
	classname := StringName.new("GLTFState")
	fnname := StringName.new("get_bake_fps")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
