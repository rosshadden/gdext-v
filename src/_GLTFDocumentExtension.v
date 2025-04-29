module gd

pub struct GLTFDocumentExtension {
	Resource
}

pub fn (s &GLTFDocumentExtension) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFDocumentExtension) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub interface IGLTFDocumentExtensionImportPreflight {
mut:
	import_preflight_(state GLTFState, extensions PackedStringArray) GDError
}

pub fn (s &GLTFDocumentExtension) gd_import_preflight(state GLTFState, extensions PackedStringArray) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_import_preflight")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 412946943)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = unsafe{voidptr(&extensions)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionGetSupportedExtensions {
mut:
	get_supported_extensions_() PackedStringArray
}

pub fn (s &GLTFDocumentExtension) gd_get_supported_extensions() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_get_supported_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IGLTFDocumentExtensionParseNodeExtensions {
mut:
	parse_node_extensions_(state GLTFState, gltf_node GLTFNode, extensions Dictionary) GDError
}

pub fn (s &GLTFDocumentExtension) gd_parse_node_extensions(state GLTFState, gltf_node GLTFNode, extensions Dictionary) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_parse_node_extensions")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2067053794)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = voidptr(&gltf_node.ptr)
	args[2] = unsafe{voidptr(&extensions)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionParseImageData {
mut:
	parse_image_data_(state GLTFState, image_data PackedByteArray, mime_type String, ret_image Image) GDError
}

pub fn (s &GLTFDocumentExtension) gd_parse_image_data(state GLTFState, image_data PackedByteArray, mime_type string, ret_image Image) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_parse_image_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201673288)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = unsafe{voidptr(&image_data)}
	arg_sn2 := String.new(mime_type)
	args[2] = unsafe{voidptr(&arg_sn2)}
	args[3] = voidptr(&ret_image.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionGetImageFileExtension {
mut:
	get_image_file_extension_() String
}

pub fn (s &GLTFDocumentExtension) gd_get_image_file_extension() string {
	mut result := String{}
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_get_image_file_extension")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub interface IGLTFDocumentExtensionParseTextureJson {
mut:
	parse_texture_json_(state GLTFState, texture_json Dictionary, ret_gltf_texture GLTFTexture) GDError
}

pub fn (s &GLTFDocumentExtension) gd_parse_texture_json(state GLTFState, texture_json Dictionary, ret_gltf_texture GLTFTexture) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_parse_texture_json")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1624327185)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = unsafe{voidptr(&texture_json)}
	args[2] = voidptr(&ret_gltf_texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionImportObjectModelProperty {
mut:
	import_object_model_property_(state GLTFState, split_json_pointer PackedStringArray, partial_paths Array) GLTFObjectModelProperty
}

pub fn (s &GLTFDocumentExtension) gd_import_object_model_property(state GLTFState, split_json_pointer PackedStringArray, partial_paths Array) GLTFObjectModelProperty {
	mut result := GLTFObjectModelProperty{}
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_import_object_model_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1446147484)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = unsafe{voidptr(&split_json_pointer)}
	args[2] = unsafe{voidptr(&partial_paths)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IGLTFDocumentExtensionImportPostParse {
mut:
	import_post_parse_(state GLTFState) GDError
}

pub fn (s &GLTFDocumentExtension) gd_import_post_parse(state GLTFState) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_import_post_parse")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1704600462)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&state.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionImportPreGenerate {
mut:
	import_pre_generate_(state GLTFState) GDError
}

pub fn (s &GLTFDocumentExtension) gd_import_pre_generate(state GLTFState) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_import_pre_generate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1704600462)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&state.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionGenerateSceneNode {
mut:
	generate_scene_node_(state GLTFState, gltf_node GLTFNode, scene_parent Node) Node3D
}

pub fn (s &GLTFDocumentExtension) gd_generate_scene_node(state GLTFState, gltf_node GLTFNode, scene_parent Node) Node3D {
	mut result := Node3D{}
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_generate_scene_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3810899026)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = voidptr(&gltf_node.ptr)
	args[2] = voidptr(&scene_parent.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IGLTFDocumentExtensionImportNode {
mut:
	import_node_(state GLTFState, gltf_node GLTFNode, json Dictionary, node Node) GDError
}

pub fn (s &GLTFDocumentExtension) gd_import_node(state GLTFState, gltf_node GLTFNode, json Dictionary, node Node) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_import_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4064279746)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = voidptr(&gltf_node.ptr)
	args[2] = unsafe{voidptr(&json)}
	args[3] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionImportPost {
mut:
	import_post_(state GLTFState, root Node) GDError
}

pub fn (s &GLTFDocumentExtension) gd_import_post(state GLTFState, root Node) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_import_post")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 295478427)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = voidptr(&root.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionExportPreflight {
mut:
	export_preflight_(state GLTFState, root Node) GDError
}

pub fn (s &GLTFDocumentExtension) gd_export_preflight(state GLTFState, root Node) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_export_preflight")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 295478427)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = voidptr(&root.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionConvertSceneNode {
mut:
	convert_scene_node_(state GLTFState, gltf_node GLTFNode, scene_node Node)
}

pub fn (s &GLTFDocumentExtension) gd_convert_scene_node(state GLTFState, gltf_node GLTFNode, scene_node Node) {
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_convert_scene_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 147612932)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = voidptr(&gltf_node.ptr)
	args[2] = voidptr(&scene_node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub interface IGLTFDocumentExtensionExportPostConvert {
mut:
	export_post_convert_(state GLTFState, root Node) GDError
}

pub fn (s &GLTFDocumentExtension) gd_export_post_convert(state GLTFState, root Node) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_export_post_convert")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 295478427)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = voidptr(&root.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionExportPreserialize {
mut:
	export_preserialize_(state GLTFState) GDError
}

pub fn (s &GLTFDocumentExtension) gd_export_preserialize(state GLTFState) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_export_preserialize")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1704600462)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&state.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionExportObjectModelProperty {
mut:
	export_object_model_property_(state GLTFState, node_path NodePath, godot_node Node, gltf_node_index i64, target_object Object, target_depth i64) GLTFObjectModelProperty
}

pub fn (s &GLTFDocumentExtension) gd_export_object_model_property(state GLTFState, node_path NodePath, godot_node Node, gltf_node_index i64, target_object Object, target_depth i64) GLTFObjectModelProperty {
	mut result := GLTFObjectModelProperty{}
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_export_object_model_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4111022730)
	mut args := unsafe { [6]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = unsafe{voidptr(&node_path)}
	args[2] = voidptr(&godot_node.ptr)
	args[3] = unsafe{voidptr(&gltf_node_index)}
	args[4] = voidptr(&target_object.ptr)
	args[5] = unsafe{voidptr(&target_depth)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IGLTFDocumentExtensionGetSaveableImageFormats {
mut:
	get_saveable_image_formats_() PackedStringArray
}

pub fn (s &GLTFDocumentExtension) gd_get_saveable_image_formats() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_get_saveable_image_formats")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IGLTFDocumentExtensionSerializeImageToBytes {
mut:
	serialize_image_to_bytes_(state GLTFState, image Image, image_dict Dictionary, image_format String, lossy_quality f64) PackedByteArray
}

pub fn (s &GLTFDocumentExtension) gd_serialize_image_to_bytes(state GLTFState, image Image, image_dict Dictionary, image_format string, lossy_quality f64) PackedByteArray {
	mut result := PackedByteArray{}
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_serialize_image_to_bytes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 276886664)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = voidptr(&image.ptr)
	args[2] = unsafe{voidptr(&image_dict)}
	arg_sn3 := String.new(image_format)
	args[3] = unsafe{voidptr(&arg_sn3)}
	args[4] = unsafe{voidptr(&lossy_quality)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub interface IGLTFDocumentExtensionSaveImageAtPath {
mut:
	save_image_at_path_(state GLTFState, image Image, file_path String, image_format String, lossy_quality f64) GDError
}

pub fn (s &GLTFDocumentExtension) gd_save_image_at_path(state GLTFState, image Image, file_path string, image_format string, lossy_quality f64) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_save_image_at_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1844337242)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = voidptr(&image.ptr)
	arg_sn2 := String.new(file_path)
	args[2] = unsafe{voidptr(&arg_sn2)}
	arg_sn3 := String.new(image_format)
	args[3] = unsafe{voidptr(&arg_sn3)}
	args[4] = unsafe{voidptr(&lossy_quality)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionSerializeTextureJson {
mut:
	serialize_texture_json_(state GLTFState, texture_json Dictionary, gltf_texture GLTFTexture, image_format String) GDError
}

pub fn (s &GLTFDocumentExtension) gd_serialize_texture_json(state GLTFState, texture_json Dictionary, gltf_texture GLTFTexture, image_format string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_serialize_texture_json")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2565166506)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = unsafe{voidptr(&texture_json)}
	args[2] = voidptr(&gltf_texture.ptr)
	arg_sn3 := String.new(image_format)
	args[3] = unsafe{voidptr(&arg_sn3)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionExportNode {
mut:
	export_node_(state GLTFState, gltf_node GLTFNode, json Dictionary, node Node) GDError
}

pub fn (s &GLTFDocumentExtension) gd_export_node(state GLTFState, gltf_node GLTFNode, json Dictionary, node Node) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_export_node")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4064279746)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&state.ptr)
	args[1] = voidptr(&gltf_node.ptr)
	args[2] = unsafe{voidptr(&json)}
	args[3] = voidptr(&node.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub interface IGLTFDocumentExtensionExportPost {
mut:
	export_post_(state GLTFState) GDError
}

pub fn (s &GLTFDocumentExtension) gd_export_post(state GLTFState) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("GLTFDocumentExtension")
	fnname := StringName.new("_export_post")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1704600462)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&state.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}
