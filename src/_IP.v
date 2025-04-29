module gd

pub enum IPResolverStatus as i64 {
	resolver_status_none = 0
	resolver_status_waiting = 1
	resolver_status_done = 2
	resolver_status_error = 3
}

pub enum IPType as i64 {
	type_none = 0
	type_ipv4 = 1
	type_ipv6 = 2
	type_any = 3
}

pub struct IP {
	Object
}

pub fn IP.get_singleton() IP {
	sn := StringName.new("IP")
	result := IP{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &IP) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s IP) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct IP_resolve_hostname_Cfg {
pub:
	ip_type IPType
}

pub fn (s &IP) resolve_hostname(host string, cfg IP_resolve_hostname_Cfg) string {
	mut result := String{}
	classname := StringName.new("IP")
	fnname := StringName.new("resolve_hostname")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 4283295457)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(host)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_ip_type := i64(cfg.ip_type)
	args[1] = unsafe{voidptr(&i64_ip_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}

@[params]
pub struct IP_resolve_hostname_addresses_Cfg {
pub:
	ip_type IPType
}

pub fn (s &IP) resolve_hostname_addresses(host string, cfg IP_resolve_hostname_addresses_Cfg) PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("IP")
	fnname := StringName.new("resolve_hostname_addresses")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 773767525)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(host)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_ip_type := i64(cfg.ip_type)
	args[1] = unsafe{voidptr(&i64_ip_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct IP_resolve_hostname_queue_item_Cfg {
pub:
	ip_type IPType
}

pub fn (s &IP) resolve_hostname_queue_item(host string, cfg IP_resolve_hostname_queue_item_Cfg) i64 {
	mut result := i64(0)
	classname := StringName.new("IP")
	fnname := StringName.new("resolve_hostname_queue_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1749894742)
	mut args := unsafe { [2]voidptr{} }
	arg_sn0 := String.new(host)
	args[0] = unsafe{voidptr(&arg_sn0)}
	i64_ip_type := i64(cfg.ip_type)
	args[1] = unsafe{voidptr(&i64_ip_type)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &IP) get_resolve_item_status(id i64) IPResolverStatus {
	mut result := i64(IPResolverStatus.resolver_status_none)
	classname := StringName.new("IP")
	fnname := StringName.new("get_resolve_item_status")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3812250196)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return unsafe{IPResolverStatus(result)}
}

pub fn (s &IP) get_resolve_item_address(id i64) string {
	mut result := String{}
	classname := StringName.new("IP")
	fnname := StringName.new("get_resolve_item_address")
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

pub fn (s &IP) get_resolve_item_addresses(id i64) Array {
	mut result := Array{}
	classname := StringName.new("IP")
	fnname := StringName.new("get_resolve_item_addresses")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &IP) erase_resolve_item(id i64) {
	classname := StringName.new("IP")
	fnname := StringName.new("erase_resolve_item")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&id)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &IP) get_local_addresses() PackedStringArray {
	mut result := PackedStringArray{}
	classname := StringName.new("IP")
	fnname := StringName.new("get_local_addresses")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &IP) get_local_interfaces() Array {
	mut result := Array{}
	classname := StringName.new("IP")
	fnname := StringName.new("get_local_interfaces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct IP_clear_cache_Cfg {
pub:
	hostname string
}

pub fn (s &IP) clear_cache(cfg IP_clear_cache_Cfg) {
	classname := StringName.new("IP")
	fnname := StringName.new("clear_cache")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3005725572)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(cfg.hostname)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
}
