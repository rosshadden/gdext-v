module gd

pub struct MultiplayerSpawner {
	Node
}

pub fn (s &MultiplayerSpawner) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s MultiplayerSpawner) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &MultiplayerSpawner) add_spawnable_scene(path string) {
	classname := StringName.new("MultiplayerSpawner")
	fnname := StringName.new("add_spawnable_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(path)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiplayerSpawner) get_spawnable_scene_count() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiplayerSpawner")
	fnname := StringName.new("get_spawnable_scene_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiplayerSpawner) get_spawnable_scene(index i64) string {
	mut result := String{}
	classname := StringName.new("MultiplayerSpawner")
	fnname := StringName.new("get_spawnable_scene")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &MultiplayerSpawner) clear_spawnable_scenes() {
	classname := StringName.new("MultiplayerSpawner")
	fnname := StringName.new("clear_spawnable_scenes")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct MultiplayerSpawner_gd_spawn_Cfg {
pub:
	data Variant
}

pub fn (s &MultiplayerSpawner) gd_spawn(cfg MultiplayerSpawner_gd_spawn_Cfg) Node {
	mut result := Node{}
	classname := StringName.new("MultiplayerSpawner")
	fnname := StringName.new("spawn")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1991184589)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.data)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiplayerSpawner) get_spawn_path() NodePath {
	mut result := NodePath{}
	classname := StringName.new("MultiplayerSpawner")
	fnname := StringName.new("get_spawn_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiplayerSpawner) set_spawn_path(path NodePath) {
	classname := StringName.new("MultiplayerSpawner")
	fnname := StringName.new("set_spawn_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiplayerSpawner) get_spawn_limit() i64 {
	mut result := i64(0)
	classname := StringName.new("MultiplayerSpawner")
	fnname := StringName.new("get_spawn_limit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiplayerSpawner) set_spawn_limit(limit i64) {
	classname := StringName.new("MultiplayerSpawner")
	fnname := StringName.new("set_spawn_limit")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&limit)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &MultiplayerSpawner) get_spawn_function() Callable {
	mut result := Callable{}
	classname := StringName.new("MultiplayerSpawner")
	fnname := StringName.new("get_spawn_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1307783378)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &MultiplayerSpawner) set_spawn_function(spawn_function Callable) {
	classname := StringName.new("MultiplayerSpawner")
	fnname := StringName.new("set_spawn_function")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&spawn_function)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
