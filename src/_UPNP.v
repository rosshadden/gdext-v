module gd

pub enum UPNPUPNPResult as i64 {
	upnp_result_success = 0
	upnp_result_not_authorized = 1
	upnp_result_port_mapping_not_found = 2
	upnp_result_inconsistent_parameters = 3
	upnp_result_no_such_entry_in_array = 4
	upnp_result_action_failed = 5
	upnp_result_src_ip_wildcard_not_permitted = 6
	upnp_result_ext_port_wildcard_not_permitted = 7
	upnp_result_int_port_wildcard_not_permitted = 8
	upnp_result_remote_host_must_be_wildcard = 9
	upnp_result_ext_port_must_be_wildcard = 10
	upnp_result_no_port_maps_available = 11
	upnp_result_conflict_with_other_mechanism = 12
	upnp_result_conflict_with_other_mapping = 13
	upnp_result_same_port_values_required = 14
	upnp_result_only_permanent_lease_supported = 15
	upnp_result_invalid_gateway = 16
	upnp_result_invalid_port = 17
	upnp_result_invalid_protocol = 18
	upnp_result_invalid_duration = 19
	upnp_result_invalid_args = 20
	upnp_result_invalid_response = 21
	upnp_result_invalid_param = 22
	upnp_result_http_error = 23
	upnp_result_socket_error = 24
	upnp_result_mem_alloc_error = 25
	upnp_result_no_gateway = 26
	upnp_result_no_devices = 27
	upnp_result_unknown_error = 28
}

pub struct UPNP {
	RefCounted
}

pub fn (s &UPNP) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s UPNP) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &UPNP) get_device_count() i64 {
	mut result := i64(0)
	classname := StringName.new("UPNP")
	fnname := StringName.new("get_device_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UPNP) get_device(index i64) UPNPDevice {
	mut result := UPNPDevice{}
	classname := StringName.new("UPNP")
	fnname := StringName.new("get_device")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2193290270)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UPNP) add_device(device UPNPDevice) {
	classname := StringName.new("UPNP")
	fnname := StringName.new("add_device")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 986715920)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&device.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNP) set_device(index i64, device UPNPDevice) {
	classname := StringName.new("UPNP")
	fnname := StringName.new("set_device")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3015133723)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	args[1] = voidptr(&device.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNP) remove_device(index i64) {
	classname := StringName.new("UPNP")
	fnname := StringName.new("remove_device")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&index)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNP) clear_devices() {
	classname := StringName.new("UPNP")
	fnname := StringName.new("clear_devices")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNP) get_gateway() UPNPDevice {
	mut result := UPNPDevice{}
	classname := StringName.new("UPNP")
	fnname := StringName.new("get_gateway")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2276800779)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct UPNP_discover_Cfg {
pub:
	timeout i64
	ttl i64
	device_filter string
}

pub fn (s &UPNP) discover(cfg UPNP_discover_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("UPNP")
	fnname := StringName.new("discover")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1575334765)
	mut args := unsafe { [3]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.timeout)}
	args[1] = unsafe{voidptr(&cfg.ttl)}
	arg_sn2 := String.new(cfg.device_filter)
	args[2] = unsafe{voidptr(&arg_sn2)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn2.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UPNP) query_external_address() string {
	mut result := String{}
	classname := StringName.new("UPNP")
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
pub struct UPNP_add_port_mapping_Cfg {
pub:
	port_internal i64
	desc string
	proto string
	duration i64
}

pub fn (s &UPNP) add_port_mapping(port i64, cfg UPNP_add_port_mapping_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("UPNP")
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
pub struct UPNP_delete_port_mapping_Cfg {
pub:
	proto string
}

pub fn (s &UPNP) delete_port_mapping(port i64, cfg UPNP_delete_port_mapping_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("UPNP")
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

pub fn (s &UPNP) set_discover_multicast_if(m_if string) {
	classname := StringName.new("UPNP")
	fnname := StringName.new("set_discover_multicast_if")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(m_if)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNP) get_discover_multicast_if() string {
	mut result := String{}
	classname := StringName.new("UPNP")
	fnname := StringName.new("get_discover_multicast_if")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

pub fn (s &UPNP) set_discover_local_port(port i64) {
	classname := StringName.new("UPNP")
	fnname := StringName.new("set_discover_local_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&port)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNP) get_discover_local_port() i64 {
	mut result := i64(0)
	classname := StringName.new("UPNP")
	fnname := StringName.new("get_discover_local_port")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &UPNP) set_discover_ipv6(ipv6 bool) {
	classname := StringName.new("UPNP")
	fnname := StringName.new("set_discover_ipv6")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&ipv6)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &UPNP) is_discover_ipv6() bool {
	mut result := false
	classname := StringName.new("UPNP")
	fnname := StringName.new("is_discover_ipv6")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
