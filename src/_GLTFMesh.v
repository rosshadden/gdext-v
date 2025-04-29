module gd

pub struct GLTFMesh {
	Resource
}

pub fn (s &GLTFMesh) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s GLTFMesh) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &GLTFMesh) get_original_name() string {
	mut result := String{}
	classname := StringName.new("GLTFMesh")
	fnname := StringName.new("get_original_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &GLTFMesh) set_original_name(original_name string) {
	classname := StringName.new("GLTFMesh")
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

pub fn (s &GLTFMesh) get_mesh() ImporterMesh {
	mut result := ImporterMesh{}
	classname := StringName.new("GLTFMesh")
	fnname := StringName.new("get_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3754628756)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFMesh) set_mesh(mesh ImporterMesh) {
	classname := StringName.new("GLTFMesh")
	fnname := StringName.new("set_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2255166972)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFMesh) get_blend_weights() PackedFloat32Array {
	mut result := PackedFloat32Array{}
	classname := StringName.new("GLTFMesh")
	fnname := StringName.new("get_blend_weights")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2445143706)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFMesh) set_blend_weights(blend_weights PackedFloat32Array) {
	classname := StringName.new("GLTFMesh")
	fnname := StringName.new("set_blend_weights")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&blend_weights)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFMesh) get_instance_materials() Array {
	mut result := Array{}
	classname := StringName.new("GLTFMesh")
	fnname := StringName.new("get_instance_materials")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &GLTFMesh) set_instance_materials(instance_materials Array) {
	classname := StringName.new("GLTFMesh")
	fnname := StringName.new("set_instance_materials")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&instance_materials)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &GLTFMesh) get_additional_data(extension_name string) Variant {
	mut result := Variant{}
	classname := StringName.new("GLTFMesh")
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

pub fn (s &GLTFMesh) set_additional_data(extension_name string, additional_data Variant) {
	classname := StringName.new("GLTFMesh")
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
