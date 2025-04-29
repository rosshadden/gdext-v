module gd

pub struct TextServerManager {
	Object
}

pub fn TextServerManager.get_singleton() TextServerManager {
	sn := StringName.new("TextServerManager")
	result := TextServerManager{
		ptr: gdf.global_get_singleton(sn)
	}
	sn.deinit()
	return result
}

pub fn (s &TextServerManager) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s TextServerManager) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

pub fn (s &TextServerManager) add_interface(gd_interface TextServer) {
	classname := StringName.new("TextServerManager")
	fnname := StringName.new("add_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1799689403)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gd_interface.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextServerManager) get_interface_count() i64 {
	mut result := i64(0)
	classname := StringName.new("TextServerManager")
	fnname := StringName.new("get_interface_count")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextServerManager) remove_interface(gd_interface TextServer) {
	classname := StringName.new("TextServerManager")
	fnname := StringName.new("remove_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1799689403)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gd_interface.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextServerManager) get_interface(idx i64) TextServer {
	mut result := TextServer{}
	classname := StringName.new("TextServerManager")
	fnname := StringName.new("get_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1672475555)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&idx)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextServerManager) get_interfaces() Array {
	mut result := Array{}
	classname := StringName.new("TextServerManager")
	fnname := StringName.new("get_interfaces")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextServerManager) find_interface(name string) TextServer {
	mut result := TextServer{}
	classname := StringName.new("TextServerManager")
	fnname := StringName.new("find_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240905781)
	mut args := unsafe { [1]voidptr{} }
	arg_sn0 := String.new(name)
	args[0] = unsafe{voidptr(&arg_sn0)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	arg_sn0.deinit()
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &TextServerManager) set_primary_interface(index TextServer) {
	classname := StringName.new("TextServerManager")
	fnname := StringName.new("set_primary_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 1799689403)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&index.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), unsafe{nil})
	classname.deinit()
	fnname.deinit()
}

pub fn (s &TextServerManager) get_primary_interface() TextServer {
	mut result := TextServer{}
	classname := StringName.new("TextServerManager")
	fnname := StringName.new("get_primary_interface")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 905850878)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}
