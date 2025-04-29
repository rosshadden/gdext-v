module gd

pub struct InstancePlaceholder {
	Node
}

pub fn (s &InstancePlaceholder) to_variant() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_object)
	result := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&result), s.ptr)
	return result
}

pub fn (mut s InstancePlaceholder) from_variant(var &Variant) {
	variant_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_object)
	variant_to_type(voidptr(&s.ptr), var)
}

@[params]
pub struct InstancePlaceholder_get_stored_values_Cfg {
pub:
	with_order bool
}

pub fn (s &InstancePlaceholder) get_stored_values(cfg InstancePlaceholder_get_stored_values_Cfg) Dictionary {
	mut result := Dictionary{}
	classname := StringName.new("InstancePlaceholder")
	fnname := StringName.new("get_stored_values")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230153369)
	mut args := unsafe { [1]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.with_order)}
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

@[params]
pub struct InstancePlaceholder_create_instance_Cfg {
pub:
	replace bool
	custom_scene PackedScene
}

pub fn (s &InstancePlaceholder) create_instance(cfg InstancePlaceholder_create_instance_Cfg) Node {
	mut result := Node{}
	classname := StringName.new("InstancePlaceholder")
	fnname := StringName.new("create_instance")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 3794612210)
	mut args := unsafe { [2]voidptr{} }
	args[0] = unsafe{voidptr(&cfg.replace)}
	args[1] = voidptr(&cfg.custom_scene.ptr)
	gdf.object_method_bind_ptrcall(mb, s.ptr, voidptr(&args[0]), voidptr(&result))
	classname.deinit()
	fnname.deinit()
	return result
}

pub fn (s &InstancePlaceholder) get_instance_path() string {
	mut result := String{}
	classname := StringName.new("InstancePlaceholder")
	fnname := StringName.new("get_instance_path")
	mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
	gdf.object_method_bind_ptrcall(mb, s.ptr, unsafe{nil}, voidptr(&result))
	classname.deinit()
	fnname.deinit()
	result_v := result.to_v()
	result.deinit()
	return result_v
}
