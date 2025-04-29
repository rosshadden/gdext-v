module gd

pub struct Script {
	Resource
}

pub fn (s &Script) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Script) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Script) can_instantiate() bool {
	mut result := false
	classname := StringName.new("Script")
	fnname := StringName.new("can_instantiate")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Script) instance_has(base_object Object) bool {
	mut result := false
	classname := StringName.new("Script")
	fnname := StringName.new("instance_has")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 397768994)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&base_object.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Script) has_source_code() bool {
	mut result := false
	classname := StringName.new("Script")
	fnname := StringName.new("has_source_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Script) get_source_code() string {
	mut result := String{}
	classname := StringName.new("Script")
	fnname := StringName.new("get_source_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Script) set_source_code(source string) {
	classname := StringName.new("Script")
	fnname := StringName.new("set_source_code")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(source)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Script_reload_Cfg {
pub:
	keep_state bool
}

pub fn (s &Script) reload(cfg Script_reload_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("Script")
	fnname := StringName.new("reload")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1633102583)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.keep_state)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &Script) get_base_script() Script {
	mut result := Script{}
	classname := StringName.new("Script")
	fnname := StringName.new("get_base_script")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 278624046)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Script) get_instance_base_type() string {
	mut result := StringName{}
	classname := StringName.new("Script")
	fnname := StringName.new("get_instance_base_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Script) get_global_name() string {
	mut result := StringName{}
	classname := StringName.new("Script")
	fnname := StringName.new("get_global_name")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Script) has_script_signal(signal_name string) bool {
	mut result := false
	classname := StringName.new("Script")
	fnname := StringName.new("has_script_signal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(signal_name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Script) get_script_property_list() Array {
	mut result := Array{}
	classname := StringName.new("Script")
	fnname := StringName.new("get_script_property_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Script) get_script_method_list() Array {
	mut result := Array{}
	classname := StringName.new("Script")
	fnname := StringName.new("get_script_method_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Script) get_script_signal_list() Array {
	mut result := Array{}
	classname := StringName.new("Script")
	fnname := StringName.new("get_script_signal_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Script) get_script_constant_map() Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("Script")
	fnname := StringName.new("get_script_constant_map")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Script) get_property_default_value(property string) Variant {
	mut result := Variant{}
	classname := StringName.new("Script")
	fnname := StringName.new("get_property_default_value")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Script) is_tool() bool {
	mut result := false
	classname := StringName.new("Script")
	fnname := StringName.new("is_tool")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Script) is_abstract() bool {
	mut result := false
	classname := StringName.new("Script")
	fnname := StringName.new("is_abstract")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Script) get_rpc_config() Variant {
	mut result := Variant{}
	classname := StringName.new("Script")
	fnname := StringName.new("get_rpc_config")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
