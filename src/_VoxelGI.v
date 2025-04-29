module gd

pub enum VoxelGISubdiv as i64 {
	subdiv_64 = 0
	subdiv_128 = 1
	subdiv_256 = 2
	subdiv_512 = 3
	subdiv_max = 4
}

pub struct VoxelGI {
	VisualInstance3D
}

pub fn (s &VoxelGI) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s VoxelGI) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &VoxelGI) set_probe_data(data VoxelGIData) {
	classname := StringName.new("VoxelGI")
	fnname := StringName.new("set_probe_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1637849675)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&data.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGI) get_probe_data() VoxelGIData {
	mut result := VoxelGIData{}
	classname := StringName.new("VoxelGI")
	fnname := StringName.new("get_probe_data")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1730645405)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGI) set_subdiv(subdiv VoxelGISubdiv) {
	classname := StringName.new("VoxelGI")
	fnname := StringName.new("set_subdiv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240898472)
	mut args := unsafe { [1]voidptr{} }
	i64_subdiv := i64(subdiv)
	args[0] = unsafe{voidptr(&i64_subdiv)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGI) get_subdiv() VoxelGISubdiv {
	mut result := i64(VoxelGISubdiv.subdiv_64)
	classname := StringName.new("VoxelGI")
	fnname := StringName.new("get_subdiv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4261647950)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{VoxelGISubdiv(result)}
}

pub fn (s &VoxelGI) set_size(size Vector3) {
	classname := StringName.new("VoxelGI")
	fnname := StringName.new("set_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&size)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGI) get_size() Vector3 {
	mut result := Vector3{}
	classname := StringName.new("VoxelGI")
	fnname := StringName.new("get_size")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &VoxelGI) set_camera_attributes(camera_attributes CameraAttributes) {
	classname := StringName.new("VoxelGI")
	fnname := StringName.new("set_camera_attributes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817810567)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&camera_attributes.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGI) get_camera_attributes() CameraAttributes {
	mut result := CameraAttributes{}
	classname := StringName.new("VoxelGI")
	fnname := StringName.new("get_camera_attributes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3921283215)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct VoxelGI_bake_Cfg {
pub:
	from_node Node
	create_visual_debug bool
}

pub fn (s &VoxelGI) bake(cfg VoxelGI_bake_Cfg) {
	classname := StringName.new("VoxelGI")
	fnname := StringName.new("bake")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2781551026)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&cfg.from_node.ptr)
	args[1] = unsafe{voidptr(&cfg.create_visual_debug)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &VoxelGI) debug_bake() {
	classname := StringName.new("VoxelGI")
	fnname := StringName.new("debug_bake")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
