module gd

pub struct MeshLibrary {
	Resource
}

pub fn (s &MeshLibrary) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MeshLibrary) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &MeshLibrary) create_item(id i64) {
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("create_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshLibrary) set_item_name(id i64, name string) {
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("set_item_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	arg_sn1 := String.new(name)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshLibrary) set_item_mesh(id i64, mesh Mesh) {
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("set_item_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 969122797)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = voidptr(&mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshLibrary) set_item_mesh_transform(id i64, mesh_transform Transform3D) {
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("set_item_mesh_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&mesh_transform)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshLibrary) set_item_mesh_cast_shadow(id i64, shadow_casting_setting RenderingServerShadowCastingSetting) {
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("set_item_mesh_cast_shadow")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3923400443)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	i64_shadow_casting_setting := i64(shadow_casting_setting)
	args[1] = unsafe{voidptr(&i64_shadow_casting_setting)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshLibrary) set_item_navigation_mesh(id i64, navigation_mesh NavigationMesh) {
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("set_item_navigation_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3483353960)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = voidptr(&navigation_mesh.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshLibrary) set_item_navigation_mesh_transform(id i64, navigation_mesh Transform3D) {
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("set_item_navigation_mesh_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&navigation_mesh)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshLibrary) set_item_navigation_layers(id i64, navigation_layers i64) {
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("set_item_navigation_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&navigation_layers)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshLibrary) set_item_shapes(id i64, shapes Array) {
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("set_item_shapes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 537221740)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = unsafe{voidptr(&shapes)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshLibrary) set_item_preview(id i64, texture Texture2D) {
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("set_item_preview")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	args[1] = voidptr(&texture.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshLibrary) get_item_name(id i64) string {
	mut result := String{}
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("get_item_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &MeshLibrary) get_item_mesh(id i64) Mesh {
	mut result := Mesh{}
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("get_item_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1576363275)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshLibrary) get_item_mesh_transform(id i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("get_item_mesh_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshLibrary) get_item_mesh_cast_shadow(id i64) RenderingServerShadowCastingSetting {
	mut result := i64(RenderingServerShadowCastingSetting.shadow_casting_setting_off)
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("get_item_mesh_cast_shadow")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1841766007)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{RenderingServerShadowCastingSetting(result)}
}

pub fn (s &MeshLibrary) get_item_navigation_mesh(id i64) NavigationMesh {
	mut result := NavigationMesh{}
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("get_item_navigation_mesh")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2729647406)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshLibrary) get_item_navigation_mesh_transform(id i64) Transform3D {
	mut result := Transform3D{}
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("get_item_navigation_mesh_transform")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshLibrary) get_item_navigation_layers(id i64) i64 {
	mut result := i64(0)
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("get_item_navigation_layers")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshLibrary) get_item_shapes(id i64) Array {
	mut result := Array{}
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("get_item_shapes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshLibrary) get_item_preview(id i64) Texture2D {
	mut result := Texture2D{}
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("get_item_preview")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshLibrary) remove_item(id i64) {
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("remove_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshLibrary) find_item_by_name(name string) i64 {
	mut result := i64(0)
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("find_item_by_name")
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

pub fn (s &MeshLibrary) clear() {
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("clear")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MeshLibrary) get_item_list() PackedInt32Array {
	mut result := PackedInt32Array{}
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("get_item_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MeshLibrary) get_last_unused_item_id() i64 {
	mut result := i64(0)
	classname := StringName.new("MeshLibrary")
	fnname := StringName.new("get_last_unused_item_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
