module gd

pub enum GLTFObjectModelPropertyGLTFObjectModelType as i64 {
	gltf_object_model_type_unknown = 0
	gltf_object_model_type_bool = 1
	gltf_object_model_type_float = 2
	gltf_object_model_type_float_array = 3
	gltf_object_model_type_float2 = 4
	gltf_object_model_type_float3 = 5
	gltf_object_model_type_float4 = 6
	gltf_object_model_type_float2x2 = 7
	gltf_object_model_type_float3x3 = 8
	gltf_object_model_type_float4x4 = 9
	gltf_object_model_type_int = 10
}

pub struct GLTFObjectModelProperty {
	RefCounted
}

pub fn (s &GLTFObjectModelProperty) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFObjectModelProperty) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GLTFObjectModelProperty) append_node_path(node_path NodePath) {
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("append_node_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&node_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFObjectModelProperty) append_path_to_property(node_path NodePath, prop_name string) {
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("append_path_to_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1331931644)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&node_path)}
	arg_sn1 := StringName.new(prop_name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFObjectModelProperty) get_accessor_type() GLTFAccessorGLTFAccessorType {
	mut result := i64(GLTFAccessorGLTFAccessorType.type_scalar)
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("get_accessor_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1998183368)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GLTFAccessorGLTFAccessorType(result)}
}

pub fn (s &GLTFObjectModelProperty) get_gltf_to_godot_expression() Expression {
	mut result := Expression{}
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("get_gltf_to_godot_expression")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240072449)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFObjectModelProperty) set_gltf_to_godot_expression(gltf_to_godot_expr Expression) {
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("set_gltf_to_godot_expression")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1815845073)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gltf_to_godot_expr.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFObjectModelProperty) get_godot_to_gltf_expression() Expression {
	mut result := Expression{}
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("get_godot_to_gltf_expression")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240072449)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFObjectModelProperty) set_godot_to_gltf_expression(godot_to_gltf_expr Expression) {
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("set_godot_to_gltf_expression")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1815845073)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&godot_to_gltf_expr.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFObjectModelProperty) get_node_paths() Array {
	mut result := Array{}
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("get_node_paths")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFObjectModelProperty) has_node_paths() bool {
	mut result := false
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("has_node_paths")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFObjectModelProperty) set_node_paths(node_paths Array) {
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("set_node_paths")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&node_paths)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFObjectModelProperty) get_object_model_type() GLTFObjectModelPropertyGLTFObjectModelType {
	mut result := i64(GLTFObjectModelPropertyGLTFObjectModelType.gltf_object_model_type_unknown)
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("get_object_model_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1094778507)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GLTFObjectModelPropertyGLTFObjectModelType(result)}
}

pub fn (s &GLTFObjectModelProperty) set_object_model_type(gd_type GLTFObjectModelPropertyGLTFObjectModelType) {
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("set_object_model_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108684086)
	mut args := unsafe { [1]voidptr{} }
	i64_gd_type := i64(gd_type)
	args[0] = unsafe{voidptr(&i64_gd_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFObjectModelProperty) get_json_pointers() Array {
	mut result := Array{}
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("get_json_pointers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFObjectModelProperty) has_json_pointers() bool {
	mut result := false
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("has_json_pointers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFObjectModelProperty) set_json_pointers(json_pointers Array) {
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("set_json_pointers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&json_pointers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFObjectModelProperty) get_variant_type() VariantType {
	mut result := i64(VariantType.type_nil)
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("get_variant_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3416842102)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VariantType(result)}
}

pub fn (s &GLTFObjectModelProperty) set_variant_type(variant_type VariantType) {
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("set_variant_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2887708385)
	mut args := unsafe { [1]voidptr{} }
	i64_variant_type := i64(variant_type)
	args[0] = unsafe{voidptr(&i64_variant_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFObjectModelProperty) set_types(variant_type VariantType, obj_model_type GLTFObjectModelPropertyGLTFObjectModelType) {
	classname := StringName.new("GLTFObjectModelProperty")
	fnname := StringName.new("set_types")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150728237)
	mut args := unsafe { [2]voidptr{} }
	i64_variant_type := i64(variant_type)
	args[0] = unsafe{voidptr(&i64_variant_type)}
	i64_obj_model_type := i64(obj_model_type)
	args[1] = unsafe{voidptr(&i64_obj_model_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
