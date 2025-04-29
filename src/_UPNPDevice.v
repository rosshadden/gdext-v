module gd

pub enum UPNPDeviceIGDStatus as i64 {
	igd_status_ok = 0
	igd_status_http_error = 1
	igd_status_http_empty = 2
	igd_status_no_urls = 3
	igd_status_no_igd = 4
	igd_status_disconnected = 5
	igd_status_unknown_device = 6
	igd_status_invalid_control = 7
	igd_status_malloc_error = 8
	igd_status_unknown_error = 9
}

pub struct UPNPDevice {
	RefCounted
}

pub fn (s &UPNPDevice) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s UPNPDevice) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &UPNPDevice) is_valid_gateway() bool {
	mut result := false
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("is_valid_gateway")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UPNPDevice) query_external_address() string {
	mut result := String{}
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("query_external_address")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct UPNPDevice_add_port_mapping_Cfg {
pub:
	port_internal i64
	desc string
	proto string
	duration i64
}

pub fn (s &UPNPDevice) add_port_mapping(port i64, cfg UPNPDevice_add_port_mapping_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("add_port_mapping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 818314583)
	mut args := unsafe { [5]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	args[1] = unsafe{voidptr(&cfg.port_internal)}
	arg_sn2 := String.new(cfg.desc)
	args[2] = unsafe{voidptr(&arg_sn2)}
	arg_sn3 := String.new(cfg.proto)
	args[3] = unsafe{voidptr(&arg_sn3)}
	args[4] = unsafe{voidptr(&cfg.duration)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	arg_sn3.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct UPNPDevice_delete_port_mapping_Cfg {
pub:
	proto string
}

pub fn (s &UPNPDevice) delete_port_mapping(port i64, cfg UPNPDevice_delete_port_mapping_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("delete_port_mapping")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444187325)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	arg_sn1 := String.new(cfg.proto)
	args[1] = unsafe{voidptr(&arg_sn1)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn1.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UPNPDevice) set_description_url(url string) {
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("set_description_url")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(url)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNPDevice) get_description_url() string {
	mut result := String{}
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("get_description_url")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &UPNPDevice) set_service_type(gd_type string) {
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("set_service_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNPDevice) get_service_type() string {
	mut result := String{}
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("get_service_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &UPNPDevice) set_igd_control_url(url string) {
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("set_igd_control_url")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(url)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNPDevice) get_igd_control_url() string {
	mut result := String{}
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("get_igd_control_url")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &UPNPDevice) set_igd_service_type(gd_type string) {
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("set_igd_service_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(gd_type)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNPDevice) get_igd_service_type() string {
	mut result := String{}
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("get_igd_service_type")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &UPNPDevice) set_igd_our_addr(addr string) {
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("set_igd_our_addr")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(addr)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNPDevice) get_igd_our_addr() string {
	mut result := String{}
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("get_igd_our_addr")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &UPNPDevice) set_igd_status(status UPNPDeviceIGDStatus) {
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("set_igd_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 519504122)
	mut args := unsafe { [1]voidptr{} }
	i64_status := i64(status)
	args[0] = unsafe{voidptr(&i64_status)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNPDevice) get_igd_status() UPNPDeviceIGDStatus {
	mut result := i64(UPNPDeviceIGDStatus.igd_status_ok)
	classname := StringName.new("UPNPDevice")
	fnname := StringName.new("get_igd_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 180887011)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{UPNPDeviceIGDStatus(result)}
}
