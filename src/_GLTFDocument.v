module gd

pub enum GLTFDocumentRootNodeMode as i64 {
	root_node_mode_single_root = 0
	root_node_mode_keep_root = 1
	root_node_mode_multi_root = 2
}

pub struct GLTFDocument {
	Resource
}

pub fn (s &GLTFDocument) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFDocument) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GLTFDocument) set_image_format(image_format string) {
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("set_image_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(image_format)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFDocument) get_image_format() string {
	mut result := String{}
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("get_image_format")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GLTFDocument) set_lossy_quality(lossy_quality f64) {
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("set_lossy_quality")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&lossy_quality)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFDocument) get_lossy_quality() f64 {
	mut result := f64(0)
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("get_lossy_quality")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFDocument) set_root_node_mode(root_node_mode GLTFDocumentRootNodeMode) {
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("set_root_node_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 463633402)
	mut args := unsafe { [1]voidptr{} }
	i64_root_node_mode := i64(root_node_mode)
	args[0] = unsafe{voidptr(&i64_root_node_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFDocument) get_root_node_mode() GLTFDocumentRootNodeMode {
	mut result := i64(GLTFDocumentRootNodeMode.root_node_mode_single_root)
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("get_root_node_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 948057992)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GLTFDocumentRootNodeMode(result)}
}

@[params]
pub struct GLTFDocument_append_from_file_Cfg {
pub:
	flags i64
	base_path string
}

pub fn (s &GLTFDocument) append_from_file(path string, state GLTFState, cfg GLTFDocument_append_from_file_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("append_from_file")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 866380864)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = voidptr(&state.ptr)
	args[2] = unsafe{voidptr(&cfg.flags)}
	arg_sn3 := String.new(cfg.base_path)
	args[3] = unsafe{voidptr(&arg_sn3)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct GLTFDocument_append_from_buffer_Cfg {
pub:
	flags i64
}

pub fn (s &GLTFDocument) append_from_buffer(bytes PackedByteArray, base_path string, state GLTFState, cfg GLTFDocument_append_from_buffer_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("append_from_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1616081266)
	mut args := unsafe { [4]voidptr{} }
	args[0] = unsafe{voidptr(&bytes)}
	arg_sn1 := String.new(base_path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = voidptr(&state.ptr)
	args[3] = unsafe{voidptr(&cfg.flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct GLTFDocument_append_from_scene_Cfg {
pub:
	flags i64
}

pub fn (s &GLTFDocument) append_from_scene(node Node, state GLTFState, cfg GLTFDocument_append_from_scene_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("append_from_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1622574258)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&node.ptr)
	args[1] = voidptr(&state.ptr)
	args[2] = unsafe{voidptr(&cfg.flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

@[params]
pub struct GLTFDocument_generate_scene_Cfg {
pub:
	bake_fps f64
	trimming bool
	remove_immutable_tracks bool
}

pub fn (s &GLTFDocument) generate_scene(state GLTFState, cfg GLTFDocument_generate_scene_Cfg) Node {
	mut result := Node{}
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("generate_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 596118388)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = unsafe{voidptr(&cfg.bake_fps)}
	args[2] = unsafe{voidptr(&cfg.trimming)}
	args[3] = unsafe{voidptr(&cfg.remove_immutable_tracks)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFDocument) generate_buffer(state GLTFState) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("generate_buffer")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 741783455)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&state.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFDocument) write_to_filesystem(state GLTFState, path string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("write_to_filesystem")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1784551478)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&state.ptr)
	arg_sn1 := String.new(path)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn GLTFDocument.import_object_model_property(state GLTFState, json_pointer string) GLTFObjectModelProperty {
	mut result := GLTFObjectModelProperty{}
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("import_object_model_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1206708632)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&state.ptr)
	arg_sn1 := String.new(json_pointer)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn GLTFDocument.export_object_model_property(state GLTFState, node_path NodePath, godot_node Node, gltf_node_index i64) GLTFObjectModelProperty {
	mut result := GLTFObjectModelProperty{}
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("export_object_model_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 314209806)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = unsafe{voidptr(&node_path)}
	args[2] = voidptr(&godot_node.ptr)
	args[3] = unsafe{voidptr(&gltf_node_index)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct GLTFDocument_register_gltf_document_extension_Cfg {
pub:
	first_priority bool
}

pub fn GLTFDocument.register_gltf_document_extension(extension GLTFDocumentExtension, cfg GLTFDocument_register_gltf_document_extension_Cfg) {
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("register_gltf_document_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3752678331)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&extension.ptr)
	args[1] = unsafe{voidptr(&cfg.first_priority)}
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn GLTFDocument.unregister_gltf_document_extension(extension GLTFDocumentExtension) {
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("unregister_gltf_document_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684415758)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&extension.ptr)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn GLTFDocument.get_supported_gltf_extensions() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("GLTFDocument")
	fnname := StringName.new("get_supported_gltf_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
