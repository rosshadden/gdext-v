module gd

pub enum SceneReplicationConfigReplicationMode as i64 {
	replication_mode_never = 0
	replication_mode_always = 1
	replication_mode_on_change = 2
}

pub struct SceneReplicationConfig {
	Resource
}

pub fn (s &SceneReplicationConfig) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s SceneReplicationConfig) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &SceneReplicationConfig) get_properties() Array {
	mut result := Array{}
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("get_properties")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct SceneReplicationConfig_add_property_Cfg {
pub:
	index i64
}

pub fn (s &SceneReplicationConfig) add_property(path NodePath, cfg SceneReplicationConfig_add_property_Cfg) {
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("add_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4094619021)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	args[1] = unsafe{voidptr(&cfg.index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneReplicationConfig) has_property(path NodePath) bool {
	mut result := false
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("has_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 861721659)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneReplicationConfig) remove_property(path NodePath) {
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("remove_property")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneReplicationConfig) property_get_index(path NodePath) i64 {
	mut result := i64(0)
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("property_get_index")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1382022557)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneReplicationConfig) property_get_spawn(path NodePath) bool {
	mut result := false
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("property_get_spawn")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3456846888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneReplicationConfig) property_set_spawn(path NodePath, enabled bool) {
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("property_set_spawn")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3868023870)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneReplicationConfig) property_get_replication_mode(path NodePath) SceneReplicationConfigReplicationMode {
	mut result := i64(SceneReplicationConfigReplicationMode.replication_mode_never)
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("property_get_replication_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2870606336)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{SceneReplicationConfigReplicationMode(result)}
}

pub fn (s &SceneReplicationConfig) property_set_replication_mode(path NodePath, mode SceneReplicationConfigReplicationMode) {
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("property_set_replication_mode")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200083865)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	i64_mode := i64(mode)
	args[1] = unsafe{voidptr(&i64_mode)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneReplicationConfig) property_get_sync(path NodePath) bool {
	mut result := false
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("property_get_sync")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3456846888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneReplicationConfig) property_set_sync(path NodePath, enabled bool) {
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("property_set_sync")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3868023870)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &SceneReplicationConfig) property_get_watch(path NodePath) bool {
	mut result := false
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("property_get_watch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3456846888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &SceneReplicationConfig) property_set_watch(path NodePath, enabled bool) {
	classname := StringName.new("SceneReplicationConfig")
	fnname := StringName.new("property_set_watch")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3868023870)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&path)}
	args[1] = unsafe{voidptr(&enabled)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
