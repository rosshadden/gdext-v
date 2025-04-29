module gd

pub enum ObjectConnectFlags as i64 {
	connect_deferred = 1
	connect_persist = 2
	connect_one_shot = 4
	connect_reference_counted = 8
}

pub struct Object {
pub mut:
	ptr voidptr = unsafe{nil}
}

pub fn (s &Object) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s Object) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &Object) get_class() string {
	mut result := String{}
	classname := StringName.new("Object")
	fnname := StringName.new("get_class")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Object) is_class(class string) bool {
	mut result := false
	classname := StringName.new("Object")
	fnname := StringName.new("is_class")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(class)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) set(property string, value Variant) {
	classname := StringName.new("Object")
	fnname := StringName.new("set")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) get(property string) Variant {
	mut result := Variant{}
	classname := StringName.new("Object")
	fnname := StringName.new("get")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) set_indexed(property_path NodePath, value Variant) {
	classname := StringName.new("Object")
	fnname := StringName.new("set_indexed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3500910842)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&property_path)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) get_indexed(property_path NodePath) Variant {
	mut result := Variant{}
	classname := StringName.new("Object")
	fnname := StringName.new("get_indexed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4006125091)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&property_path)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) get_property_list() Array {
	mut result := Array{}
	classname := StringName.new("Object")
	fnname := StringName.new("get_property_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) get_method_list() Array {
	mut result := Array{}
	classname := StringName.new("Object")
	fnname := StringName.new("get_method_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) property_can_revert(property string) bool {
	mut result := false
	classname := StringName.new("Object")
	fnname := StringName.new("property_can_revert")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) property_get_revert(property string) Variant {
	mut result := Variant{}
	classname := StringName.new("Object")
	fnname := StringName.new("property_get_revert")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Object_notification_Cfg {
pub:
	reversed bool
}

pub fn (s &Object) notification(what i64, cfg Object_notification_Cfg) {
	classname := StringName.new("Object")
	fnname := StringName.new("notification")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4023243586)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&what)}
	args[1] = unsafe{voidptr(&cfg.reversed)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) to_string() string {
	mut result := String{}
	classname := StringName.new("Object")
	fnname := StringName.new("to_string")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Object) get_instance_id() i64 {
	mut result := i64(0)
	classname := StringName.new("Object")
	fnname := StringName.new("get_instance_id")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) set_script(script Variant) {
	classname := StringName.new("Object")
	fnname := StringName.new("set_script")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1114965689)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&script)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) get_script() Variant {
	mut result := Variant{}
	classname := StringName.new("Object")
	fnname := StringName.new("get_script")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) set_meta(name string, value Variant) {
	classname := StringName.new("Object")
	fnname := StringName.new("set_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) remove_meta(name string) {
	classname := StringName.new("Object")
	fnname := StringName.new("remove_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

@[params]
pub struct Object_get_meta_Cfg {
pub:
	default Variant
}

pub fn (s &Object) get_meta(name string, cfg Object_get_meta_Cfg) Variant {
	mut result := Variant{}
	classname := StringName.new("Object")
	fnname := StringName.new("get_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3990617847)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.default)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) has_meta(name string) bool {
	mut result := false
	classname := StringName.new("Object")
	fnname := StringName.new("has_meta")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) get_meta_list() Array {
	mut result := Array{}
	classname := StringName.new("Object")
	fnname := StringName.new("get_meta_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Object_add_user_signal_Cfg {
pub:
	arguments Array
}

pub fn (s &Object) add_user_signal(signal string, cfg Object_add_user_signal_Cfg) {
	classname := StringName.new("Object")
	fnname := StringName.new("add_user_signal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 85656714)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(signal)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&cfg.arguments)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) has_user_signal(signal string) bool {
	mut result := false
	classname := StringName.new("Object")
	fnname := StringName.new("has_user_signal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(signal)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) remove_user_signal(signal string) {
	classname := StringName.new("Object")
	fnname := StringName.new("remove_user_signal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(signal)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) emit_signal(signal string) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("Object")
	fnname := StringName.new("emit_signal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4047867050)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(signal)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &Object) call(method string) Variant {
	mut result := Variant{}
	classname := StringName.new("Object")
	fnname := StringName.new("call")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3400424181)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) call_deferred(method string) Variant {
	mut result := Variant{}
	classname := StringName.new("Object")
	fnname := StringName.new("call_deferred")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3400424181)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) set_deferred(property string, value Variant) {
	classname := StringName.new("Object")
	fnname := StringName.new("set_deferred")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(property)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&value)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) callv(method string, arg_array Array) Variant {
	mut result := Variant{}
	classname := StringName.new("Object")
	fnname := StringName.new("callv")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1260104456)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&arg_array)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) has_method(method string) bool {
	mut result := false
	classname := StringName.new("Object")
	fnname := StringName.new("has_method")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) get_method_argument_count(method string) i64 {
	mut result := i64(0)
	classname := StringName.new("Object")
	fnname := StringName.new("get_method_argument_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2458036349)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(method)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) has_signal(signal string) bool {
	mut result := false
	classname := StringName.new("Object")
	fnname := StringName.new("has_signal")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(signal)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) get_signal_list() Array {
	mut result := Array{}
	classname := StringName.new("Object")
	fnname := StringName.new("get_signal_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) get_signal_connection_list(signal string) Array {
	mut result := Array{}
	classname := StringName.new("Object")
	fnname := StringName.new("get_signal_connection_list")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3147814860)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(signal)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) get_incoming_connections() Array {
	mut result := Array{}
	classname := StringName.new("Object")
	fnname := StringName.new("get_incoming_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Object_connect_Cfg {
pub:
	flags i64
}

pub fn (s &Object) connect(signal string, callable Callable, cfg Object_connect_Cfg) GDError {
	mut result := i64(GDError.ok)
	classname := StringName.new("Object")
	fnname := StringName.new("connect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1518946055)
	mut args := unsafe { [3]voidptr{} }
	arg_sn0 := StringName.new(signal)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&callable)}
	args[2] = unsafe{voidptr(&cfg.flags)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return unsafe{GDError(result)}
}

pub fn (s &Object) disconnect(signal string, callable Callable) {
	classname := StringName.new("Object")
	fnname := StringName.new("disconnect")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1874754934)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(signal)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) is_connected(signal string, callable Callable) bool {
	mut result := false
	classname := StringName.new("Object")
	fnname := StringName.new("is_connected")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 768136979)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(signal)
	args[0] = unsafe{voidptr(&arg_sn0)}
	args[1] = unsafe{voidptr(&callable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) has_connections(signal string) bool {
	mut result := false
	classname := StringName.new("Object")
	fnname := StringName.new("has_connections")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(signal)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) set_block_signals(enable bool) {
	classname := StringName.new("Object")
	fnname := StringName.new("set_block_signals")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) is_blocking_signals() bool {
	mut result := false
	classname := StringName.new("Object")
	fnname := StringName.new("is_blocking_signals")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) notify_property_list_changed() {
	classname := StringName.new("Object")
	fnname := StringName.new("notify_property_list_changed")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) set_message_translation(enable bool) {
	classname := StringName.new("Object")
	fnname := StringName.new("set_message_translation")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&enable)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) can_translate_messages() bool {
	mut result := false
	classname := StringName.new("Object")
	fnname := StringName.new("can_translate_messages")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct Object_tr_Cfg {
pub:
	context string
}

pub fn (s &Object) tr(message string, cfg Object_tr_Cfg) string {
	mut result := String{}
	classname := StringName.new("Object")
	fnname := StringName.new("tr")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1195764410)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := StringName.new(message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(cfg.context)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct Object_tr_n_Cfg {
pub:
	context string
}

pub fn (s &Object) tr_n(message string, plural_message string, n i64, cfg Object_tr_n_Cfg) string {
	mut result := String{}
	classname := StringName.new("Object")
	fnname := StringName.new("tr_n")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 162698058)
	mut args := unsafe { [4]voidptr{} }
	arg_sn0 := StringName.new(message)
	args[0] = unsafe{voidptr(&arg_sn0)}
	arg_sn1 := StringName.new(plural_message)
	args[1] = unsafe{voidptr(&arg_sn1)}
	args[2] = unsafe{voidptr(&n)}
	arg_sn3 := StringName.new(cfg.context)
	args[3] = unsafe{voidptr(&arg_sn3)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	arg_sn1.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Object) get_translation_domain() string {
	mut result := StringName{}
	classname := StringName.new("Object")
	fnname := StringName.new("get_translation_domain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &Object) set_translation_domain(domain string) {
	classname := StringName.new("Object")
	fnname := StringName.new("set_translation_domain")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := StringName.new(domain)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &Object) is_queued_for_deletion() bool {
	mut result := false
	classname := StringName.new("Object")
	fnname := StringName.new("is_queued_for_deletion")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &Object) cancel_free() {
	classname := StringName.new("Object")
	fnname := StringName.new("cancel_free")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}
